class DelivererStatusesController < Admin::ApplicationController
  load_and_authorize_resource

  # GET /deliverer_statuses
  def index
    @deliverer_statuses = DelivererStatus.all
  end

  # GET /deliverer_statuses/1
  def show
  end

  # GET /deliverer_statuses/new
  def new
    @deliverer_status = DelivererStatus.new
  end

  # GET /deliverer_statuses/1/edit
  def edit
  end

  # POST /deliverer_statuses
  def create
    @deliverer_status = DelivererStatus.new(deliverer_status_params)

    if @deliverer_status.save
      redirect_to @deliverer_status, notice: 'Deliverer status was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deliverer_statuses/1
  def update
    if @deliverer_status.update(deliverer_status_params)
      redirect_to @deliverer_status, notice: 'Deliverer status was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deliverer_statuses/1
  def destroy
    @deliverer_status.destroy
    redirect_to deliverer_statuses_url, notice: 'Deliverer status was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deliverer_status
      @deliverer_status = DelivererStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deliverer_status_params
      params.require(:deliverer_status).permit(:description)
    end
end
