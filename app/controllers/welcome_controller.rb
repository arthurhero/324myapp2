class WelcomeController < ApplicationController
  def index
      @lucky_num=rand(10)
  end

  def about 
  end

  def story 
  end
end
