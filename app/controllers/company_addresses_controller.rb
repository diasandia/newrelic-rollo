class CompanyAddressesController < ApplicationController
  before_action :set_company_address, only: [:show, :edit, :update, :destroy]

  # GET /company_addresses
  # GET /company_addresses.json
  def index
    @company_addresses = CompanyAddress.all
  end

  # GET /company_addresses/1
  # GET /company_addresses/1.json
  def show
  end

  # GET /company_addresses/new
  def new
    @company_address = CompanyAddress.new
  end

  # GET /company_addresses/1/edit
  def edit
  end

  # POST /company_addresses
  # POST /company_addresses.json
  def create
    @company_address = CompanyAddress.new(company_address_params)

    respond_to do |format|
      if @company_address.save
        format.html { redirect_to @company_address, notice: 'Company address was successfully created.' }
        format.json { render :show, status: :created, location: @company_address }
      else
        format.html { render :new }
        format.json { render json: @company_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_addresses/1
  # PATCH/PUT /company_addresses/1.json
  def update
    respond_to do |format|
      if @company_address.update(company_address_params)
        format.html { redirect_to @company_address, notice: 'Company address was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_address }
      else
        format.html { render :edit }
        format.json { render json: @company_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_addresses/1
  # DELETE /company_addresses/1.json
  def destroy
    @company_address.destroy
    respond_to do |format|
      format.html { redirect_to company_addresses_url, notice: 'Company address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_address
      @company_address = CompanyAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_address_params
      params.require(:company_address).permit(:company_id, :address_id)
    end
end
