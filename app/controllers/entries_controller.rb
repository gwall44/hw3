class EntriesController < ApplicationController
  #def new
   # @entry = Entry.new
    #@entry.place_id = params["place_id"]
  
  #end
  def new
    @place = Place.find_by({ "id" => params["place_id"] })
        @entry = Entry.new
    @entry.place_id = params["place_id"]
    # render contacts/new view with new Contact form
  end
  
  
  #savings entries from the article like companies (https://entr451.com/creating-new-records/)
  def create
    @entry = Entry.new(params["entry"])
    @entry.save
    redirect_to "/places/#{@entry.place_id}"
  end
end
