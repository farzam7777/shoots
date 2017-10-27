ActiveAdmin.register CrewMember do
	menu priority: 4

	permit_params :stage_name, :legal_name, :agent_name, :phone, :email, :image

	form do |f|
    f.inputs "Crew Member Details" do
      f.input :stage_name
      f.input :legal_name
      f.input :agent_name
      f.input :phone
      f.input :email
      f.input :image, :as => :file, :hint => f.object.image.present? \
      ? image_tag(f.object.logo.url(:thumb))
      : content_tag(:span, "no Image yet")
    end
    f.button :Submit
  end 

  index do
    selectable_column
    column :id
    column :stage_name
    column :legal_name
    column :agent_name
    column :phone
    column :email
    actions
  end

  show do
    attributes_table do
      row :id
      row :stage_name
      row :legal_name
      row :agent_name
      row :phone
      row :email
      panel 'Participated in Following Listed Shoots' do
        ul style:'line-height: 2em; border-left: 5px solid #5ea3d3' do
          crew_member.shoots.map do |shoot|
            li link_to(shoot.title, [:admin, shoot]), style: "list-style: none"
          end
        end
	    end
      row :image do
        image_tag crew_member.image.url(:medium)
      end
  	end  
    active_admin_comments
  end

  filter :shoots
  filter :stage_name_cont, label: 'Satge Name'
  filter :legal_name_cont, label: 'Legal Name'
  filter :agent_name_cont, label: 'Agent Name'
  filter :phone_cont, label: 'Phone'
  filter :email_cont, label: 'Email'
end
