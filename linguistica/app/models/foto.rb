class Foto < ActiveRecord::Base
	validates :formato, inclusion: { in: %w(png, jpg, jpeg), message: "%{value} não é um formato válido."}
end
