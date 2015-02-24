class AddRemarksToCorrespondence < ActiveRecord::Migration
  def change
    add_column :correspondences, :comments, :text
  end
end
