class ChapterActionsController < ApplicationController
  before_action :set_chapter_action, only: [:show, :edit, :update, :destroy]

  # GET /chapter_actions
  # GET /chapter_actions.json
  def index
    @chapter_actions = ChapterAction.all.order('date_completed DESC').limit(100)
  end

  # GET /chapter_actions/1
  # GET /chapter_actions/1.json
  def show
  end

  # GET /chapter_actions/new
  def new
    @chapter_action = ChapterAction.new

    @chapter_building_categories = Category.where("bucket_id=1").order("default_points DESC")
    @policy_change_categories = Category.where("bucket_id=2").order("default_points DESC")
    @training_and_education_categories = Category.where("bucket_id=3").order("default_points DESC")

    @users = User.all.map { |u| [u.name, u.id] }
  end

  # GET /chapter_actions/1/edit
  def edit
    @chapter_building_categories = Category.where("bucket_id=1").order("default_points DESC")
    @policy_change_categories = Category.where("bucket_id=2").order("default_points DESC")
    @training_and_education_categories = Category.where("bucket_id=3").order("default_points DESC")

    @users = User.all.map { |u| [u.name, u.id] }
  end

  # POST /chapter_actions
  # POST /chapter_actions.json
  def create
    @chapter_building_categories = Category.where("bucket_id=1").order("default_points DESC")
    @policy_change_categories = Category.where("bucket_id=2").order("default_points DESC")
    @training_and_education_categories = Category.where("bucket_id=3").order("default_points DESC")

    @chapter_action = ChapterAction.new(chapter_action_params)
    @chapter_action.category_id = params[:category_id]
    @chapter_action.user_id = params[:user_id]
    respond_to do |format|
      if @chapter_action.save
        format.html { redirect_to @chapter_action, notice: 'Chapter action was successfully created.' }
        format.json { render :show, status: :created, location: @chapter_action }
      else
        format.html { render :new }
        format.json { render json: @chapter_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapter_actions/1
  # PATCH/PUT /chapter_actions/1.json
  def update
    respond_to do |format|
      @chapter_action.category_id = params[:category_id]
      if @chapter_action.update(chapter_action_params)
        format.html { redirect_to @chapter_action, notice: 'Chapter action was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapter_action }
      else
        format.html { render :edit }
        format.json { render json: @chapter_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapter_actions/1
  # DELETE /chapter_actions/1.json
  def destroy
    @chapter_action.destroy
    respond_to do |format|
      format.html { redirect_to chapter_actions_url, notice: 'Chapter action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter_action
      @chapter_action = ChapterAction.find(params[:id])
      @categories = Category.all.map { |c| [c.name, c.id]}

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_action_params
      params.require(:chapter_action).permit(:user_id, :points, :note, :date_completed)
    end
end
