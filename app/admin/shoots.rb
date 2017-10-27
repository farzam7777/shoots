ActiveAdmin.register Shoot do
	menu priority: 2

	permit_params :title, :start_date, ActorShootMaps_attributes: [:id, :shoot_id, :actor_id, :_destroy], 
								CrewShootMaps_attributes: [:id, :shoot_id, :crew_member_id, :_destroy]

	form multipart: true do |f|
    f.inputs "Shoot Details" do
      f.input :title
      f.input :start_date, as: :date_picker, input_html: { style: 'width: 78% !important' }
      f.inputs "Assign Actors To Shoot" do
        f.has_many :ActorShootMaps, allow_destroy: true do |a|
          a.input :actor
        end
      end
      f.inputs "Assign Crew Members To Shoot" do
        f.has_many :CrewShootMaps, allow_destroy: true do |c|
          c.input :CrewMember
        end
      end
    end
    f.actions
  end

  index do
    selectable_column
    column :id
    column :title
    column :start_date
    actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :start_date
      
      panel 'Actors Assigned To This Shoot' do
        ul style:'line-height: 2em; border-left: 5px solid #5ea3d3' do
          shoot.actors.map do |actor|
            li link_to(actor.stage_name, [:admin, actor]), style: "list-style: none"
          end
        end
	    end

	    panel 'Crew Members Assigned To This Shoot' do
        ul style:'line-height: 2em; border-left: 5px solid #5ea3d3' do
          shoot.CrewMembers.map do |member|
            li link_to(member.stage_name, [:admin, member])
          end
        end
	    end
    end
    
    active_admin_comments
  end

  filter :title_cont, label: 'title'
  filter :actors
  filter :CrewMembers
  filter :start_date
end
