class PagesController < ApplicationController
  def home
    @materials = Material.all
  end

  def about
  end

  def contact
  end
end
