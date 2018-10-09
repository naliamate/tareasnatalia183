class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :tarea
  has_many :comentarios
end
