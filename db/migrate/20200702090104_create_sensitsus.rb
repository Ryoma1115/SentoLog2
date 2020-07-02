class CreateSensitsus < ActiveRecord::Migration[5.2]
  def change
    create_table :sensitsus do |t|

      t.string :name
      t.timestamps
    end
  end
end
