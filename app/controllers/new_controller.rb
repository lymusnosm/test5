class NewController < ApplicationController
  def show
    @theloais=Theloai.all
    @truyens=Truyen.all
  end
end
