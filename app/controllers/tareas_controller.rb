class TareasController < ApplicationController
  def index
  	@tareas = Tarea.all
  	#select * from tareas
  end

  def new
  	@tarea = Tarea.new
  end

  	def create
		  @tarea = Tarea.new(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
		  if @tarea.save
		  	#insert into tareas(titulo,descripcion) values ()
		 
		  else
		  	render :new
		  end
	end
  def show
  	@tarea = Tarea.find(params[:id])
  	#slect * from tareas where id-
  end
 end