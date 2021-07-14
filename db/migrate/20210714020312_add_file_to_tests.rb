class AddFileToTests < ActiveRecord::Migration[6.1]
  def change
    add_column :tests, :file, :string
  end
end
