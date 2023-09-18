# frozen_string_literal: true

class CreateAddressesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses, id: :uuid do |t|
      t.belongs_to :addressable, null: false, type: :uuid, polymorphic: true, index: true
      t.string :zip_code, null: false
      t.string :street_name, null: false
      t.string :building_number
      t.string :neighborhood, null: false
      t.string :city, null: false
      t.enum :state, null: false, enum_type: "address_states_enum"
      t.string :complement
      t.integer :ibge

      t.timestamps
    end
  end
end
