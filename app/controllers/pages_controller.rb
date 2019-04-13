class PagesController < ApplicationController
  def home
  end

  def about
    respond_to do |format|
      format.html
      format.js
    end
  end
end
