module ApplicationHelper
  def time_ago_human time
    t 'time.ago', time: time_ago_in_words(time)
  end
end
