class CreateVariantFields < ActiveRecord::Migration[5.0]
  def change
    create_table :variant_fields do |t|
      t.string :name
      t.belongs_to :variant

      t.timestamps
    end
  end
end
