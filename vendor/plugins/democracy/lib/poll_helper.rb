module Democracy
  module PollHelper
    include Democracy

    def poll
      # config
      view_dir = get_view_dir

      # find latest active poll
      poll = Poll.find_by_active(true)


      if poll.blank?
        render :file =>
        "#{view_dir}/poll_not_found.rhtml"
      elsif voted?(poll.id)
        render :text => "voted"
      else
        render :file =>
        "#{view_dir}/show_poll.html.erb", :locals => {:poll_obj => poll}
      end
    end
  end
end
