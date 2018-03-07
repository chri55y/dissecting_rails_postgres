class PagesController < ApplicationController
  def home
  end

  def about
    @posts = Blog.all
  end

  def contact
  end
end
