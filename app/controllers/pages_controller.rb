class PagesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf do 
        render pdf: 'index',
               orientation: 'Landscape',
               page_size: 'A4'
      end
    end
  end
end
