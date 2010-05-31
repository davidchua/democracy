module Democracy
  mattr_accessor :view_path
  
  public


  def voted? poll_id
    VoteRecord.find_by_ip_address_and_poll_id(request.remote_ip, poll_id)
  end

  def register_vote
    poll = Poll.find(params[:poll_id])
    view_dir = get_view_dir(params[:view_dir])
    answer_ids = params[:democracy_answer]
    # check if user voted already, if yes...
    # TODO

    if answer_ids.nil?
      render :file => "#{view_dir}/no_vote.html.erb"
    else
      # all good, lets register!  
      answers = PollAnswer.find answer_ids      
      answers.each do |ans|
        ans.increment! :votes
        ans.save!
        VoteRecord.create(:poll_id => poll.id, :ip_address => request.remote_ip)
      end

      render :file => "#{view_dir}/after_vote.html.erb"
    end
  end

  def get_view_dir
    if @view_path.blank?
      "#{RAILS_ROOT}/vendor/plugins/democracy/views"
    else
      "#{RAILS_ROOT}/#{@view_path}"
    end
  end

end
