class LegalCustomersController < Admin::ApplicationController
  load_and_authorize_resource

  # GET /legal_customers
  def index
    @legal_customers = LegalCustomer.all
  end

  # GET /legal_customers/1
  def show
  end

  # GET /legal_customers/new
  def new
    @legal_customer.build_user
    @legal_customer.build_address
  end

  # GET /legal_customers/1/edit
  def edit
  end

  # POST /legal_customers
  def create
    @legal_customer = LegalCustomer.new(legal_customer_params)

    if @legal_customer.save
      redirect_to @legal_customer, notice: 'Legal customer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /legal_customers/1
  def update
    if @legal_customer.update(legal_customer_params)
      redirect_to @legal_customer, notice: 'Legal customer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /legal_customers/1
  def destroy
    @legal_customer.destroy
    redirect_to legal_customers_url, notice: 'Legal customer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legal_customer
      @legal_customer = LegalCustomer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def legal_customer_params
      params.require(:legal_customer).permit(:social_name, :fantasy_name, :email, :observation,
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
