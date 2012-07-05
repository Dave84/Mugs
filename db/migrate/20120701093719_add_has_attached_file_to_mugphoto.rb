class AddHasAttachedFileToMugphoto < ActiveRecord::Migration
  def up
    change_table :mugphotos do |t|
      t.has_attached_file :photo
    end
  end

  def down
    drop_attached_file :mugphotos, :photo
  end
end