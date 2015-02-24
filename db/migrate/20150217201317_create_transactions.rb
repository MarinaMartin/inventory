class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.text :description
      t.text :audience, :default => []
      t.text :eligibility_criteria
      t.text :determine_eligibility
      t.boolean :phone, :default => false
      t.string :phone_number
      t.integer :call_volume
      t.boolean :online, :default => false
      t.string :url
      t.integer :digital_volume
      t.boolean :in_person_ro, :default => false
      t.boolean :in_person_mc, :default => false
      t.boolean :by_mail, :default => false
      t.integer :mail_volume
      t.string :form
      t.string :details_url
      t.string :office
      t.string :resolution_time
      t.string :resolution_time_95th
      t.string :resolution_rate
      t.string :first_time_resolution_rate
      t.integer :request_volume
      t.text :keywords
      t.integer :search_on_va
      t.integer :search_on_google
      t.integer :man_hours

      t.timestamps null: false
    end
  end
end
