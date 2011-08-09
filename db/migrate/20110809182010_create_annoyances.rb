class CreateAnnoyances < ActiveRecord::Migration
  def change
    create_table :annoyances do |t|
      t.string :words
      t.string :handle

      t.timestamps
    end
  end
end
