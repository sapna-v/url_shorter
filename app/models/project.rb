class Project < ActiveRecord::Base
  has_attached_file :tender, 
  :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  :url => "/system/:attachment/:id/:style/:filename", 
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "path to default image"
  validates_attachment_content_type :tender, :content_type => ["image/jpg", "image/jpeg", "image/png",
                                                                "image/gif", "application/pdf",
                                                                "application/force-download", "application/xls",
                                                                "application/xlsx", "application/doc",
                                                                "application/docx", "application/ppt",
                                                                "application/pptx"]
end
