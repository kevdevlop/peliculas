class PeliculasController < ApplicationController
  before_action :find_pelicula, only: [:edit, :update, :destroy, :show]

  def index
    @peliculas = Pelicula.all
  end

  def new
    @pelicula = Pelicula.new
    
  end

  def create
    
    @pelicula = Pelicula.new(peliculas_params)
    if @pelicula.save
        p "SE HA CREADO CORRECTAMENTE"
        redirect_to peliculas_path
    else
      render :new
      p "ERROR AL CREAR"
    end
  end

  def edit
  end

  def update
    
    if @pelicula.update(peliculas_params)
      p "SE HA EDITADO CORRECTAMENTE"
      redirect_to peliculas_path
    else
      p "ERROR AL EDITAR"
    #  render :edit
    end
  end

  def destroy
    @pelicula.destroy
    redirect_to peliculas_path
  end

  def show
  end

  private
  def peliculas_params
    params.require(:pelicula).permit(:title,:year,:rating,:description)
  end

  def find_pelicula
    @pelicula = Pelicula.find(params[:id])
  end
end
