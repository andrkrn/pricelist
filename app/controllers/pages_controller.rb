class PagesController < ApplicationController
  def index
    if params[:unit_price].present? && params[:unit_price].to_i != 0
      @unit_price = params[:unit_price].to_i
    else
      @unit_price = 700
    end

    render pdf: 'index',
           orientation: 'Landscape',
           page_size: 'A4'
  end
end
