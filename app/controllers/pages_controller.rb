class PagesController < ApplicationController
  def home
  end

  def about
    @posts = Blog.all
    @skills = Skill.all
  end

  def contact
  end
end
