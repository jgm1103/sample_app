module ApplicationHelper
  # return a title on a per-page basis
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo(parameters)
    logo_image = image_tag("logo.png", 
    	:alt => parameters[:alt_text], 
    	:class => "round"
	);
    
    link_to logo_image, root_path
  end
end
