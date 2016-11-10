class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|

        t.string :brand
        t.string :size
        t.integer :user_id, null:false

      t.timestamps
    end
  end
end
