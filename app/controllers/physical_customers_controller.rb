class PhysicalCustomersController < Admin::ApplicationController
  load_and_authorize_resource

  # GET /physical_customers
  def index
    @physical_customers = PhysicalCustomer.all
  end

  # GET /physical_customers/1
  def show
  end

  # GET /physical_customers/new
  def new
    @physical_customer.build_user
    @physical_customer.build_address
  end

  # GET /physical_customers/1/edit
  def edit
  end

  # POST /physical_customers
  def create
    @physical_customer = PhysicalCustomer.new(physical_customer_params)

    if @physical_customer.save
      redirect_to @physical_customer, notice: 'Physical customer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /physical_customers/1
  def update
    if @physical_customer.update(physical_customer_params)
      redirect_to @physical_customer, notice: 'Physical customer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /physical_customers/1
  def destroy
    @physical_customer.destroy
    redirect_to physical_customers_url, notice: 'Physical customer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_customer
      @physical_customer = PhysicalCustomer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def physical_customer_params
      params.require(:physical_customer).permit(:sex_id, :name, :rg, :cpf, :birth_date, :email, :registration, :observation,
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
