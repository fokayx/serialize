class CreatePackage < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.belongs_to :exam, index: true
      t.belongs_to :item, index: true
    end

    remove_column :items, :exam_id 
  end
end
