class BrowserController < ApplicationController
  def index
    @files = Dir.glob('*')
  end
end
