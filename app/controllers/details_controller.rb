class DetailsController < ApplicationController
  def index
    @details = Detail.all
  end
  def show 
    @detail=Detail.find(params[:id])
  end
  def new 
    @detail=Detail.new
  end
  def create
    @detail=Detail.new(detail_params)
    if @detail.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @detail=Detail.find(params[:id])
  end
  def update
    @detail=Detail.find(params[:id])
    if @detail.update(detail_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @detail=Detail.find(params[:id])
    @detail.destroy
    redirect_to root_path, status: :see_other
  end
  private
    def detail_params
      params.require(:detail).permit(:name, :place, :body, :age, :contact, :department, :group, :selfdetails, :sex)
    end
end
