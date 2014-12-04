class AddAttachmentFotoToProjetos < ActiveRecord::Migration
  def self.up
    add_column :projetos, :foto_file_name, :string # Original filename
    add_column :projetos, :foto_content_type, :string # Mime type
    add_column :projetos, :foto_file_size, :integer # File size in bytes
  end

  def self.down
    remove_column :projetos, :foto_file_name
    remove_column :projetos, :foto_content_type
    remove_column :projetos, :foto_file_size
  end
end
