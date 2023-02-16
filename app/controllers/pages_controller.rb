
class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def test
    @projects = Project.all

  end
end
