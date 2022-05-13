class FinishingsController < ApplicationController
  before_action :set_finishing, only: %i[ show edit update destroy ]

  # GET /finishings or /finishings.json
  def index
    @finishings = Finishing.all
  end

  # GET /finishings/1 or /finishings/1.json
  def show
  end

  # GET /finishings/new
  def new
    @finishing = Finishing.new
  end

  # GET /finishings/1/edit
  def edit
  end

  # POST /finishings or /finishings.json
  def create
    @finishing = Finishing.new(finishing_params)

    respond_to do |format|
      if @finishing.save
        format.html { redirect_to finishing_url(@finishing), notice: "Finishing was successfully created." }
        format.json { render :show, status: :created, location: @finishing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finishing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finishings/1 or /finishings/1.json
  def update
    respond_to do |format|
      if @finishing.update(finishing_params)
        format.html { redirect_to finishing_url(@finishing), notice: "Finishing was successfully updated." }
        format.json { render :show, status: :ok, location: @finishing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finishing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finishings/1 or /finishings/1.json
  def destroy
    @finishing.destroy

    respond_to do |format|
      format.html { redirect_to finishings_url, notice: "Finishing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finishing
      @finishing = Finishing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def finishing_params
      params.require(:finishing).permit(:title)
    end
end
