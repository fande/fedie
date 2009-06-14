class EditorController < ApplicationController
  def index
    if params[:file]
      @file = File.read(params[:file])
    else
      return render :template => "editor/welcome"
    end
  end
  
  def save_file
      # nao esta salvando direito...
    if ! (params[:file].length < 1)
      @file = File.open(params[:file_name], File::WRONLY|File::CREAT)
      @file.puts params[:file]
    else
      flash[:notice] = "Nao salvou direito"
    end
    redirect_to :action => :index, :file => params[:file_name]
  end
end

