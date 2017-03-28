class HomeController < ApplicationController
  def index
    @theloais=Theloai.all
  end
end
