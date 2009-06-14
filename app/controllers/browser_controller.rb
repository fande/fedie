class BrowserController < ApplicationController
  def index
    folder = params[:folder] ? "./#{params[:folder]}/" : "./"
    @files = Dir.glob( folder + '*')
  end
  
  def new_folder
    @dir = Dir.mkdir "#{params[:folder_name]}"
    redirect_to :action => :index
  end
  
  def new_file
    @file = File.open(params[:file_name], File::WRONLY|File::TRUNC|File::CREAT)
    redirect_to :action => :index
  end
  
  def upload
  end
end
