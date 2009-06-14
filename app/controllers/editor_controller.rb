class EditorController < ApplicationController
  def index
    @file = File.read(params[:file])
  end
end

