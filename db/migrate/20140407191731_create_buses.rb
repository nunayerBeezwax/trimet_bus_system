class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.column :name, :varchar
      t.column :line_id, :int

      t.timestamps
    end
    add_column :stops, :time, :time
  end
end
