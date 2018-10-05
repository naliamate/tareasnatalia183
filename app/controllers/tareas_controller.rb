class TareasController < ApplicationController
  
  before_action :set_tarea, except: [:index, :new, :create]
  
  def index
  	@tareas = Tarea.all
  	#select * from tareas
  end

  def new
  	@tarea = Tarea.new (tarea_params)
    if @tarea.save

  end

  	def create
		  @tarea = Tarea.new(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
		  if @tarea.save
		  	#insert into tareas(titulo,descripcion) values ()
		    redirect_to controller: 'tareas', acttion: 'show', id: @tarea.id
		  else
		  	render :new
		  end
	end
  def show
  	#@tarea = Tarea.find(params[:id])
  	#select * from tareas where id=:id
  end

  def destroy
    #@tarea = Tarea.find(params[:id])
    @tarea.destroy
    redirect_to tareas_path
    #redirect_to controller: "tareas", action: "index"
  end

  def edit
    #@tarea = Tarea.find(params[:id])
  end

  def update
  #@tarea = Tarea.find {params|:id|}
  @tarea.update(titulo: params[:titulo], descripcion: params[:descripcion])
  redirect_to controller: "tareas", action: 'show', id: @tarea.id
else
  render :edit
  end
end

private
  def set_tarea
    @tarea = Tarea.find {params|:id|}
  end

  def tarea_params
    params.require(:tarea).permit(:titulo,:descripcion)
  end
 end