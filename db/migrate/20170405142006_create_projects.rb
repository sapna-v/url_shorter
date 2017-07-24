class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :location
      t.string :client_name
      t.string :architecture
      t.string :consultant
      t.date :receipt_of_tender
      t.date :tender_sub_date
      t.string :pmc
      t.decimal :project_cost
      t.string :walltype
      t.date :enquiry_date

      t.timestamps null: false
    end
  end
end
