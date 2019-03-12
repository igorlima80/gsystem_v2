class NcmsController < Admin::ApplicationController
load_and_authorize_resource

  # GET /ncms
  def index
    @ncms = Ncm.all
  end

  # GET /ncms/1
  def show
  end

  # GET /ncms/new
  def new
    @ncm = Ncm.new
  end

  # GET /ncms/1/edit
  def edit
  end

  # POST /ncms
  def create
    @ncm = Ncm.new(ncm_params)

    if @ncm.save
      redirect_to @ncm, notice: 'Ncm was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ncms/1
  def update
    if @ncm.update(ncm_params)
      redirect_to @ncm, notice: 'Ncm was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ncms/1
  def destroy
    @ncm.destroy
    redirect_to ncms_url, notice: 'Ncm was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncm
      @ncm = Ncm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ncm_params
      params.require(:ncm).permit(:code, :description, :unity)
    end
end
