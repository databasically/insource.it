class StaticController < ApplicationController

  def home
    @title = "Kansas City Small Business IT Support Services"
  end
  
  def contact
    @title = "IT Experts that fix problems fast"
  end
  
  def products
    @title = "Flexible business computer tech support solutions"
  end
  
  def about
    @title = "Small Business IT Experts"
  end
  
end
