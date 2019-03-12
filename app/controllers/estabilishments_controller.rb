class EstabilishmentsController < Admin::ApplicationController
  load_and_authorize_resource

  # GET /estabilishments
  def index
    @estabilishments = Estabilishment.all
  end

  # GET /estabilishments/1
  def show
  end

  # GET /estabilishments/new
  def new
    @estabilishment = Estabilishment.new
  end

  # GET /estabilishments/1/edit
  def edit
  end

  # POST /estabilishments
  def create
    @estabilishment = Estabilishment.new(estabilishment_params)

    if @estabilishment.save
      redirect_to @estabilishment, notice: 'Estabilishment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /estabilishments/1
  def update
    if @estabilishment.update(estabilishment_params)
      redirect_to @estabilishment, notice: 'Estabilishment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /estabilishments/1
  def destroy
    @estabilishment.destroy
    redirect_to estabilishments_url, notice: 'Estabilishment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estabilishment
      @estabilishment = Estabilishment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estabilishment_params
      params.require(:estabilishment).permit(:description, :state_registration)
    end
end
