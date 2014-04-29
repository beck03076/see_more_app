module ApplicationHelper
  def notifiably_audited2(script)
  
    user_id = current_user.id rescue nil
    
    html = '<script>    
    
    PrivatePub.subscribe("/notifiably_audited/'
    
    html += user_id.to_s 
    
    html += '", function(data, channel) {'
    
    html += script
    
    html += '});</script>'
    
    html += subscribe_to "/notifiably_audited/#{user_id}"
    
  end
end
