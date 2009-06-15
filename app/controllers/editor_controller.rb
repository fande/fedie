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
            logger.debug(params[:file].to_s)
      if ! (params[:file].length < 1)
        @file = File.open(params[:file_name], File::TRUNC|File::WRONLY|File::CREAT, 0666){ |f| f.write(params[:file].to_s) }
      else
        flash[:notice] = "Nao salvou direito"
      end
      redirect_to :action => :index, :file => params[:file_name]
    end

  end