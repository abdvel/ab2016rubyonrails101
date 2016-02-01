class Article1sController < ApplicationController
  before_action :set_article1, only: [:show, :edit, :update, :destroy]

  # GET /article1s
  # GET /article1s.json
  def index
    @article1s = Article1.all
  end

  # GET /article1s/1
  # GET /article1s/1.json
  def show
  end

  # GET /article1s/new
  def new
    @article1 = Article1.new
  end

  # GET /article1s/1/edit
  def edit
  end

  # POST /article1s
  # POST /article1s.json
  def create
    @article1 = Article1.new(article1_params)

    respond_to do |format|
      if @article1.save
        format.html { redirect_to @article1, notice: 'Article1 was successfully created.' }
        format.json { render :show, status: :created, location: @article1 }
      else
        format.html { render :new }
        format.json { render json: @article1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article1s/1
  # PATCH/PUT /article1s/1.json
  def update
    respond_to do |format|
      if @article1.update(article1_params)
        format.html { redirect_to @article1, notice: 'Article1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @article1 }
      else
        format.html { render :edit }
        format.json { render json: @article1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article1s/1
  # DELETE /article1s/1.json
  def destroy
    @article1.destroy
    respond_to do |format|
      format.html { redirect_to article1s_url, notice: 'Article1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article1
      @article1 = Article1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article1_params
      params.require(:article1).permit(:title, :text)
    end
end
