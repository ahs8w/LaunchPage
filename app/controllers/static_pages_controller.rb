class StaticPagesController < ApplicationController
  def home
    @email = Email.new
  end

  def about
  end

  def contact
  end
end
