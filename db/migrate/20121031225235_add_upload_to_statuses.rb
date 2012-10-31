class AddUploadToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :image, :string
  end
end
