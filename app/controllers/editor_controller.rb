class EditorController < ApplicationController
  def index
    if params[:file]
      @file = File.read(params[:file])
    else
      return render :template => "editor/welcome"
    end
  end
  
  def save_file
    @file = File.open params[:file_name]
    
end

