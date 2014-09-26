class Projeto < ActiveRecord::Base
  belongs_to :tematica
  belongs_to :pesquisador
  belongs_to :arquivo
end
