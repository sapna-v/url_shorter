ActiveAdmin.register Project do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :location, :client_name, :architecture, :consultant, :tender, :receipt_of_tender,
                :tender_sub_date, :pmc, :project_cost, :walltype, :enquiry_date

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  index do
    selectable_column
    id_column
    column :name
    column :location
    column :client_name
    column :architecture
    column :consultant  
    actions
  end

  form multipart: true do |f|
    f.inputs "Project Details" do
      f.input :name
      f.input :location
      f.input :client_name
      f.input :architecture
      f.input :consultant
      f.input :tender, as: :file, :hint => f.template.image_tag(f.object.tender.url(:thumb))
      f.input :receipt_of_tender
      f.input :tender_sub_date
      f.input :pmc
      f.input :project_cost
      f.input :walltype
      f.input :enquiry_date
    end
    f.actions
  end
  
  show do |ad|
    attributes_table do
      row :name
      row :location
      row :client_name
      row :architecture
      row :consultant
      row :tender
      row :receipt_of_tender
      row :tender_sub_date
      row :pmc
      row :project_cost
      row :walltype
      row :enquiry_date
      row :tender do
        image_tag(ad.tender.url(:thumb))
      end
    # Will display the image on show object page
    end
  end

end
