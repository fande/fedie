class BrowserController < ApplicationController
  def index
    folder = params[:folder] ? "./#{params[:folder]}/" : "./"
    @files = Dir.glob( folder + '*')
  end
  
  def new_folder
  end
  
  def new_file
  end
  
  def upload
  end
end
