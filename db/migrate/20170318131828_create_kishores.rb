class CreateKishores < ActiveRecord::Migration[5.1]
  def change
    create_table :kishores do |t|
      t.string :name

      t.timestamps
    end
  end
end
