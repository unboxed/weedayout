module ApplicationHelper
  
  def print_if_params(text, conditions)
    match = true;
    conditions.each do | con |
      if con[1].class == Array
        match = false unless !params[con[0]].blank? && con[1].include?(params[con[0]])
      else
        match = false unless params[con[0]] == con[1]
      end
    end
    return match ? text : nil
  end
  
  def get_gmaps_api_key
    GOOGLE_MAPS_API_KEYS[request.domain(5)]
  end
end
