class PagesController < ApplicationController
  def index
    @unit_price = params[:unit_price].to_i || 700

    render pdf: 'index',
           orientation: 'Landscape',
           page_size: 'A4'
  end
end
