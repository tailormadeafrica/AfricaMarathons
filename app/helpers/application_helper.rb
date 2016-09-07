module ApplicationHelper

  def check_location(location)
    childs = Refinery::Locations::Location.where(:parent_id => location)
    if childs.present?
      true
    end
  end
end
