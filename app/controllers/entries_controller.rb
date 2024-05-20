class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @entry.place_id = params["place_id"]
  
  end
  
  #savings entries from the article like companies (https://entr451.com/creating-new-records/)
  def create
    @entry = Entry.new(params["entry"])
    @entry.save
    redirect_to "/places"
 
  end
end
