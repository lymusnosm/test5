class TheloaisController < ApplicationController
  def show
    @theloais = Theloai.all
    @theloai = Theloai.find(params[:id])
    @truyens = @theloai.truyens
  end

  def new
    @theloai = Theloai.new
    @theloais = Theloai.all
  end

  def create
    @theloai = Theloai.new(theloai_params)
    if @theloai.save
      redirect_to '/themtheloai'
    end
  end

  private
  def theloai_params
    params.require(:theloai).permit(:title)
  end
end
