ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
    end

  columns do
      column do
        panel link_to('Recent Shoots', admin_shoots_path, style: 'color: white; text-decoration: none') do
          ul do
            Shoot.last(5).map do |shoot|
              li link_to(shoot.title, admin_shoot_path(shoot))
            end
          end
        end
      end
    end
    
    columns do
      column do
        panel link_to('Recent Actors', admin_actors_path, style: 'color: white; text-decoration: none') do
          ul do
            Actor.last(5).map do |actor|
              li link_to(actor.stage_name, admin_actor_path(actor))
            end
          end
        end
      end
    end
    
    columns do
      column do
        panel link_to('Recent Crew Members', admin_crew_members_path, style: 'color: white; text-decoration: none') do
          ul do
            CrewMember.last(5).map do |member|
              li link_to(member.stage_name, admin_crew_member_path(member))
            end
          end
        end
      end
    end

  end # content
end
