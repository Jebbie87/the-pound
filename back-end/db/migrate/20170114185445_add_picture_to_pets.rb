class AddPictureToPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :profile_picture, :string
  end
end
