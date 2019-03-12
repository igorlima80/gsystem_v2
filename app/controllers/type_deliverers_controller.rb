class TypeDeliverersController < Admin::ApplicationController
  load_and_authorize_resource

  # GET /type_deliverers
  def index
    @type_deliverers = TypeDeliverer.all
  end

  # GET /type_deliverers/1
  def show
  end

  # GET /type_deliverers/new
  def new
    @type_deliverer = TypeDeliverer.new
  end

  # GET /type_deliverers/1/edit
  def edit
  end

  # POST /type_deliverers
  def create
    @type_deliverer = TypeDeliverer.new(type_deliverer_params)

    if @type_deliverer.save
      redirect_to @type_deliverer, notice: 'Type deliverer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /type_deliverers/1
  def update
    if @type_deliverer.update(type_deliverer_params)
      redirect_to @type_deliverer, notice: 'Type deliverer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /type_deliverers/1
  def destroy
    @type_deliverer.destroy
    redirect_to type_deliverers_url, notice: 'Type deliverer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_deliverer
      @type_deliverer = TypeDeliverer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def type_deliverer_params
      params.require(:type_deliverer).permit(:name)
    end
end
