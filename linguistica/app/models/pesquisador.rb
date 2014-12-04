require 'paperclip'
class Pesquisador < ActiveRecord::Base

has_attached_file :foto, :styles => { :small => "150x150>" }, 
:url  => "/assets/pesquisadores/:id/:style/:basename.:extension",
:path => ":rails_root/public/assets/pesquisadores/:id/:style/:basename.:extension"

  # Validate content type
  #validates_attachment_content_type :foto, :content_type => /\Aimage/

  # Validate filename
  #validates_attachment_file_name :foto, :matches => [/png\Z/, /jpe?g\Z/]

  # Explicitly do not validate
  #do_not_validate_attachment_file_type :foto
  
  #--------------------------------------------------------------------------------------------------------
  

end
