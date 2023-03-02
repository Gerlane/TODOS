class TopicosController <ApplicationController
 before_action :set_topico, only: %i [show edit] # define quais ações seram executadas antes de um ação de um controle

  def index # questao de convenção usar index que ai é o ponto de entrada de um recurso
    @topicos = Topico.all # com o @ é uma forma de  variavel trocar informações do controler com a view
  end

  def show

  end

  def edit
    set_topico
  end

  #uma action nunca pode ser privada, sempre é publica
  def new
  end

  def create
    topico_params = params.require(:topico).permit(:titulo)
    @topico = Topico.new(topico_params) #cria um novo topico
    if @topico.save #salve o nome topico
      redirect_to topico_url(@topico), notice: "Topico criado"#redireciona p novo url que o topico q acabei de criar
    else
      render :new, status: unprocessable_entity#redenrizando o template new, apenas usando o template.
    end
  end

  def update
    if topico_params = params.require(:topico).permit(:titulo)
    flash[:notice] = "Tópico atualizado"#primitivos até a proxima action ser executada ficam guardados no flash, da action atual para a prox
    redirect_to topico_url(@topico)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  end

  def destroy
    @topico.destroy

    redirect_to topicos_url, notice: "Tópico removido."
  end

  private

  def set_topico
    @topico = Topico.find(params[:id])
  end

  def topico_params
    params.riquere(:topico).permit(:titulo)
  end

end
