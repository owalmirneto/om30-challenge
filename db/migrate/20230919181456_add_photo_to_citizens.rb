# frozen_string_literal: true

class AddPhotoToCitizens < ActiveRecord::Migration[7.0]
  def change
    change_table :citizens do |t|
      t.string :photo
    end
  end
end
