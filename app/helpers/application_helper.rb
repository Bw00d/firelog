module ApplicationHelper
  def mobile_device
    agent = request.user_agent
    return "tablet" if agent =~ /(tablet|ipad)|(android(?!.*mobile))/i
    return "mobile" if agent =~ /Mobile/
    return "desktop"
  end
  def total(array)
    total = 0
    array.each { |n| total += n.amount }
    total
  end
end
