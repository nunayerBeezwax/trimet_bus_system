class CreateArrivals < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.belongs_to :bus
      t.belongs_to :stop
      t.time :time

      t.timestamps
    end
  end
end
