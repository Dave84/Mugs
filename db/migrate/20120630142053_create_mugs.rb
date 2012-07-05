class CreateMugs < ActiveRecord::Migration
  def change
    create_table :mugs do |t|
      t.string :name

      t.timestamps
    end
  end
end
