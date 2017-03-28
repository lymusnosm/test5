class TruyensController < ApplicationController
  def show
    @theloais = Theloai.all
    @truyen = Truyen.find(params[:id])
    @comments = @truyen.comments
    @comment = Comment.new
  end

  def new
    @truyen = Truyen.new
    @theloais=Theloai.all
  end

  def edit
    @theloais=Theloai.all
    @truyen = Truyen.find(params[:id])
  end

  def list
    @truyens=Truyen.all
  end

  def update
    @truyen = Truyen.find(params[:id])
    if @truyen.update(truyen_params)
      redirect_to '/edittruyen'
    end
  end
  def create
    @truyen = Truyen.new(truyen_params)
    if @truyen.save
      redirect_to '/uptruyen'
    end
  end

  private
  def truyen_params
    params.require(:truyen).permit(:name_vn, :name_en, :content_vn, :content_en, :image, :theloai_id)
  end
end
