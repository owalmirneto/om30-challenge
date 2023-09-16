# frozen_string_literal: true

class CreateCitizensTable < ActiveRecord::Migration[7.0]
  def change
    create_table :citizens, id: :uuid do |t|
      t.string :name, null: false
      t.string :cpf, null: false
      t.string :cns, null: false
      t.string :email, null: false
      t.date :born_in, null: false
      t.string :phone, null: false
      t.boolean :enabled, null: false, default: true

      t.timestamps
    end
  end
end
