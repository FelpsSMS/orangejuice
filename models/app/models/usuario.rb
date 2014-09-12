class Usuario < ActiveRecord::Base
	validates :nome, length: { minimum: 3 }
	validates :nome, presence: true
end
