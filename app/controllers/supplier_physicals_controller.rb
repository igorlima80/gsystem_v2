class SupplierPhysicalsController < Admin::ApplicationController
  load_and_authorize_resource

  # GET /supplier_physicals
  def index
    @supplier_physicals = SupplierPhysical.all
  end

  # GET /supplier_physicals/1
  def show
  end

  # GET /supplier_physicals/new
  def new
    @supplier_physical.build_user
    @supplier_physical.build_address
  end

  # GET /supplier_physicals/1/edit
  def edit
  end

  # POST /supplier_physicals
  def create
    @supplier_physical = SupplierPhysical.new(supplier_physical_params)

    if @supplier_physical.save
      redirect_to @supplier_physical, notice: 'Supplier physical was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /supplier_physicals/1
  def update
    if @supplier_physical.update(supplier_physical_params)
      redirect_to @supplier_physical, notice: 'Supplier physical was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /supplier_physicals/1
  def destroy
    @supplier_physical.destroy
    redirect_to supplier_physicals_url, notice: 'Supplier physical was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_physical
      @supplier_physical = SupplierPhysical.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def supplier_physical_params
      params.require(:supplier_physical).permit(:name, :identity, :cpf, :sex_id,
        user_attributes: [
          :id, :_destroy, :name, :email, :password
        ],
        address_attributes: [
          :id, :_destroy, :description, :zipcode, :street, :number, :complement,
          :district, :city_id
        ]
      )
    end
end
