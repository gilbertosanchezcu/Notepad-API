class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :username
      t.string :message

      t.timestamps
    end
  end
end
