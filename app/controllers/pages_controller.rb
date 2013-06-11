class PagesController < ApplicationController
  def index
    @apps = App.limit(3)
  end

  def show
    @app = App.find(params[:id])

  end
end
