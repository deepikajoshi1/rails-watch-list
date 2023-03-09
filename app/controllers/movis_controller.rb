class MovisController < ApplicationController
  def index
    @movis = Movi.all
  end

  def show
    @movi = Movi.find(params[:id])
  end

  def new
    @movi = Movi.new
  end

  def create
    @movi = Movi.new(movi_params)
    if @movi.save
      redirect_to movi_path(@movi)
    else
      render :new
    end
  end

  def edit
    @movi = Movi.find(params[:id])
  end

  def update
    @movi = Movi.find(params[:id])
    if @movi.update(movi_params)
      redirect_to movi_path(@movi)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def movi_params
    params.require(:movi).permit(:title, :overview, :poster_url, :rating, :trailer)
  end
end
