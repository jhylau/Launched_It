class AppsController < ApplicationController
  # GET /apps
  # GET /apps.json
  def index
    @apps = App.all
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
    # @comments = Comment.where(:integer => 1)
    @comment = Comment.new
    @prop = Prop.new
    @props = Prop.all
    @prop_count = Prop.where(:app_id => params[:id]).all.count
    @app = App.find(params[:id])
    @app_id = params[:id]
    @comments = Comment.where(:app_id => @app_id)
  end

  # GET /apps/new
  # GET /apps/new.json
  def new
    #binding.pry
    

    if params[:part_app].present?
      @app = App.new(params[:part_app])
    else
      @app = App.new
    end

  end

  # GET /apps/1/edit
  def edit
    @app = App.find(params[:id])
  end

  # POST /apps
  # POST /apps.json
  def create
    @app = App.new(params[:app])

      if @app.save
        redirect_to @app, notice: 'App was successfully created.'
      else
        render action: "new"
      end
  end

  # PUT /apps/1
  # PUT /apps/1.json
  def update
    @app = App.find(params[:id])

    respond_to do |format|
      if @app.update_attributes(params[:app])
        format.html { redirect_to @app, notice: 'App was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app = App.find(params[:id])
    @app.destroy

    respond_to do |format|
      format.html { redirect_to apps_url }
      format.json { head :no_content }
    end
  end
end
