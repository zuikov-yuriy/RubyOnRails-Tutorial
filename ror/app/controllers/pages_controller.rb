require "ConvertLanguage.rb"

class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end

  def crawler
    c = ConvertLanguage.new("ab")
    @title = c.ru
  end

end


