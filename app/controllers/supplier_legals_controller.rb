class SupplierLegalsController < Admin::ApplicationController
  load_and_authorize_resource

  # GET /supplier_legals
  def index
    @supplier_legals = SupplierLegal.all
  end

  # GET /supplier_legals/1
  def show
  end

  # GET /supplier_legals/new
  def new
    @supplier_legal.build_user
    @supplier_legal.build_address
  end

  # GET /supplier_legals/1/edit
  def edit
  end

  # POST /supplier_legals
  def create
    @supplier_legal = SupplierLegal.new(supplier_legal_params)

    if @supplier_legal.save
      redirect_to @supplier_legal, notice: 'Supplier legal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /supplier_legals/1
  def update
    if @supplier_legal.update(supplier_legal_params)
      redirect_to @supplier_legal, notice: 'Supplier legal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /supplier_legals/1
  def destroy
    @supplier_legal.destroy
    redirect_to supplier_legals_url, notice: 'Supplier legal was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_legal
      @supplier_legal = SupplierLegal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def supplier_legal_params
      params.require(:supplier_legal).permit(:social_name, :fantasy_name, :state_registration, :cnpj,
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
