class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string   :country
      t.string   :city
      t.datetime :begin_at
      t.datetime :expected_at
      t.string   :transport
      t.string   :travel
      t.float    :price
      t.text     :description

      t.timestamps
    end
  end
end
