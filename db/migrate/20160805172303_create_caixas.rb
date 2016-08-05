class CreateCaixas < ActiveRecord::Migration[5.0]
  def change
    create_table :caixas do |t|

      t.timestamps
    end
  end
end
