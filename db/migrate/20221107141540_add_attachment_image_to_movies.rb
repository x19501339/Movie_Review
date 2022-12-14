class AddAttachmentImageToMovies < ActiveRecord::Migration[7.0]
def self.up
  add_column :movies, :image_file_name,    :string
  add_column :movies, :image_content_type, :string
  add_column :movies, :image_file_size,    :integer
  add_column :movies, :image_updated_at,   :datetime
end

def self.down
    remove_column :movies, :image_file_name
    remove_column :movies, :image_content_type
    remove_column :movies, :image_file_size
    remove_column :movies, :image_updated_at
  end
end