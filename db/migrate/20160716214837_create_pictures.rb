class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :source
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
