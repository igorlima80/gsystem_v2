class DeliverersController < Admin::ApplicationController
load_and_authorize_resource

  # GET /deliverers
  def index
    @deliverers = Deliverer.all
  end

  # GET /deliverers/1
  def show
  end

  # GET /deliverers/new
  def new
    @deliverer.build_user
    @deliverer.build_address
    @deliverer.build_vehicle
  end

  # GET /deliverers/1/edit
  def edit
  end

  # POST /deliverers
  def create
    @deliverer = Deliverer.new(deliverer_params)

    if @deliverer.save
      redirect_to @deliverer, notice: 'Deliverer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deliverers/1
  def update
    if @deliverer.update(deliverer_params)
      redirect_to @deliverer, notice: 'Deliverer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deliverers/1
  def destroy
    @deliverer.destroy
    redirect_to deliverers_url, notice: 'Deliverer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deliverer
      @deliverer = Deliverer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deliverer_params
      params.require(:deliverer).permit(:name, :phone, :admission_date, :resignation_date, :sex_id, :deliverer_status_id, :estabilishment_id, :type_deliverer_id,
        user_attributes: [
          :id, :_destroy, :name, :email, :password
        ],
        address_attributes: [
          :id, :_destroy, :description, :zipcode, :street, :number, :complement,
          :district, :city_id
        ],
        vehicle_attributes: [
          :description, :color, :mark, :mileage, :plate, :state_federation
        ]
      )
    end
end
