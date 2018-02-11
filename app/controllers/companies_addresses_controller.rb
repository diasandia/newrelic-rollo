class CompaniesAddressesController < ApplicationController
  before_action :set_companies_address, only: [:show, :edit, :update, :destroy]

  # GET /companies_addresses
  # GET /companies_addresses.json
  def index
    @companies_addresses = CompaniesAddress.all
  end

  # GET /companies_addresses/1
  # GET /companies_addresses/1.json
  def show
  end

  # GET /companies_addresses/new
  def new
    @companies_address = CompaniesAddress.new
  end

  # GET /companies_addresses/1/edit
  def edit
  end

  # POST /companies_addresses
  # POST /companies_addresses.json
  def create
    @companies_address = CompaniesAddress.new(companies_address_params)

    respond_to do |format|
      if @companies_address.save
        format.html { redirect_to @companies_address, notice: 'Companies address was successfully created.' }
        format.json { render :show, status: :created, location: @companies_address }
      else
        format.html { render :new }
        format.json { render json: @companies_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies_addresses/1
  # PATCH/PUT /companies_addresses/1.json
  def update
    respond_to do |format|
      if @companies_address.update(companies_address_params)
        format.html { redirect_to @companies_address, notice: 'Companies address was successfully updated.' }
        format.json { render :show, status: :ok, location: @companies_address }
      else
        format.html { render :edit }
        format.json { render json: @companies_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies_addresses/1
  # DELETE /companies_addresses/1.json
  def destroy
    @companies_address.destroy
    respond_to do |format|
      format.html { redirect_to companies_addresses_url, notice: 'Companies address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companies_address
      @companies_address = CompaniesAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companies_address_params
      params.require(:companies_address).permit(:company_id, :address_id)
    end
end
