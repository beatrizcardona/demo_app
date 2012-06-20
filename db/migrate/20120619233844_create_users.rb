class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :contact_name
      t.string :description
      t.date :not_operating_from
      t.date :not_operating_to

      t.timestamps
    end
  end
end
