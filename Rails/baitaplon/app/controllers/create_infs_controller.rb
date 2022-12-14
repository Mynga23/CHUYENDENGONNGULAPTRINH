class CreateInfsController < ApplicationController
  before_action :set_create_inf, only: %i[ show edit update destroy ]

  # GET /create_infs or /create_infs.json
  def index
    @create_infs = CreateInf.all
  end

  # GET /create_infs/1 or /create_infs/1.json
  def show
  end

  # GET /create_infs/new
  def new
    @create_inf = CreateInf.new
  end

  # GET /create_infs/1/edit
  def edit
  end

  # POST /create_infs or /create_infs.json
  def create
    @create_inf = CreateInf.new(create_inf_params)

    respond_to do |format|
      if @create_inf.save
        format.html { redirect_to create_inf_url(@create_inf), notice: "Create inf was successfully created." }
        format.json { render :show, status: :created, location: @create_inf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_inf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_infs/1 or /create_infs/1.json
  def update
    respond_to do |format|
      if @create_inf.update(create_inf_params)
        format.html { redirect_to create_inf_url(@create_inf), notice: "Create inf was successfully updated." }
        format.json { render :show, status: :ok, location: @create_inf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_inf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_infs/1 or /create_infs/1.json
  def destroy
    @create_inf.destroy

    respond_to do |format|
      format.html { redirect_to create_infs_url, notice: "Create inf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_inf
      @create_inf = CreateInf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_inf_params
      params.require(:create_inf).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
