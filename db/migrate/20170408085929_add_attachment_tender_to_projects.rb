class AddAttachmentTenderToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :tender
    end
  end

  def self.down
    remove_attachment :projects, :tender
  end
end
