class VariantFieldsController < ApplicationController
  before_action :set_variant_field, only: [:show, :edit, :update, :destroy]

  # GET /variant_fields
  # GET /variant_fields.json
  def index
    @variant_fields = VariantField.all
  end

  # GET /variant_fields/1
  # GET /variant_fields/1.json
  def show
  end

  # GET /variant_fields/new
  def new
    @variant_field = VariantField.new
  end

  # GET /variant_fields/1/edit
  def edit
  end

  # POST /variant_fields
  # POST /variant_fields.json
  def create
    @variant_field = VariantField.new(variant_field_params)

    respond_to do |format|
      if @variant_field.save
        format.html { redirect_to @variant_field, notice: 'Variant field was successfully created.' }
        format.json { render :show, status: :created, location: @variant_field }
      else
        format.html { render :new }
        format.json { render json: @variant_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variant_fields/1
  # PATCH/PUT /variant_fields/1.json
  def update
    respond_to do |format|
      if @variant_field.update(variant_field_params)
        format.html { redirect_to @variant_field, notice: 'Variant field was successfully updated.' }
        format.json { render :show, status: :ok, location: @variant_field }
      else
        format.html { render :edit }
        format.json { render json: @variant_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variant_fields/1
  # DELETE /variant_fields/1.json
  def destroy
    @variant_field.destroy
    respond_to do |format|
      format.html { redirect_to variant_fields_url, notice: 'Variant field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variant_field
      @variant_field = VariantField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def variant_field_params
      params.require(:variant_field).permit(:name, :belongs_to)
    end
end
