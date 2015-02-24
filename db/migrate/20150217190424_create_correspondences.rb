class CreateCorrespondences < ActiveRecord::Migration
  def change
    create_table :correspondences do |t|
      t.string :subject
      t.text :triggers, :default => []
      t.text :format, :default => []
      t.string :office
      t.text :sample_message
      t.text :audience, :default => []

      t.timestamps null: false
    end
  end
end
