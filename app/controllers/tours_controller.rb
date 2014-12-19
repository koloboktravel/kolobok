class ToursController < ApplicationController

  layout :resolve_layout

  def index
    @tours = Tour.order(:id)
    @cities = City.order(:id)
  end

  def show
    @tour = Tour.find params[:id]
  end

  private

  def resolve_layout
    case action_name

    when "index"
      "main_page"
    else
      "application"
    end
  end
end