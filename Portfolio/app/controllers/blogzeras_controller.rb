class BlogzerasController < ApplicationController
  before_action :set_blogzera, only: %i[ show edit update destroy ]

  # GET /blogzeras or /blogzeras.json
  def index
    @blogzeras = Blogzera.all
  end

  # GET /blogzeras/1 or /blogzeras/1.json
  def show
  end

  # GET /blogzeras/new
  def new
    @blogzera = Blogzera.new
  end

  # GET /blogzeras/1/edit
  def edit
  end

  # POST /blogzeras or /blogzeras.json
  def create
    @blogzera = Blogzera.new(blogzera_params)

    respond_to do |format|
      if @blogzera.save
        format.html { redirect_to @blogzera, notice: "Blogzera was successfully created." }
        format.json { render :show, status: :created, location: @blogzera }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blogzera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogzeras/1 or /blogzeras/1.json
  def update
    respond_to do |format|
      if @blogzera.update(blogzera_params)
        format.html { redirect_to @blogzera, notice: "Blogzera was successfully updated." }
        format.json { render :show, status: :ok, location: @blogzera }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blogzera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogzeras/1 or /blogzeras/1.json
  def destroy
    @blogzera.destroy
    respond_to do |format|
      format.html { redirect_to blogzeras_url, notice: "Blogzera was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogzera
      @blogzera = Blogzera.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blogzera_params
      params.require(:blogzera).permit(:title, :body)
    end
end
