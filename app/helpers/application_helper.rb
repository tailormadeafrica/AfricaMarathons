module ApplicationHelper

  def check_location(location)
    childs = Refinery::Locations::Location.where(:parent_id => location)
    if childs.present?
      true
    end
  end

  def breadcrumbs(page=nil,location=nil,post=nil)
    links = []
    links << link_to('Home', '/')


    if page.present?
      if page.link_url.present? and ['/locations'].include? page.link_url
        links << page.title
      else
        links << link_to(page.title, refinery.url_for(page))
      end

    end
    if location.present?
      if location.parent.present?
        if location.parent.parent.present?
          links << link_to(strip_tags(location.parent.parent.name), refinery.locations_location_path(location.parent.parent))
        end
        links << link_to(strip_tags(location.parent.name), refinery.locations_location_path(location.parent))
      end
      links << link_to(strip_tags(location.name), refinery.locations_location_path(location))
    end
    if post.present?
      links << link_to(post.title, refinery.blog_post_url(post))
    end
    raw links.join('&nbsp;&nbsp;>&nbsp;&nbsp;')
  end
end
