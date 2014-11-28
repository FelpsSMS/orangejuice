class Projeto < ActiveRecord::Base
  belongs_to :pesquisador
  belongs_to :arquivo
  belongs_to :tematica
  
end
