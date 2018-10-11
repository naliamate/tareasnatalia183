class CorreosMailer < ApplicationMailer

  
  def notificacion(tarea)
    @tarea = tarea

    mail to: "naliamate@gmail.com", subject:"Tarea nueva"
  end

end
