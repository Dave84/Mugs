class CreateMugphotos < ActiveRecord::Migration
  def change
    create_table :mugphotos do |t|
      t.string :mugphoto_file_name
      t.string :mugphoto_content_type
      t.integer :mugphoto_file_size
      t.datetime :mugphoto_updated_at
      t.integer :mug_id

      t.timestamps
    end
  end
end
