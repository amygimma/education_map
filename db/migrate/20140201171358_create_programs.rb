class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :name
      t.string :description
      t.string :homepage
      t.string :twitter
      t.string :facebook
      t.string :meetup
      t.string :email
      t.string :publish
      t.string :phone1
      t.string :phone2
      t.integer :user_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
