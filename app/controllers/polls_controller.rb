class PollsController < ApplicationController
  def index
  end

  def new
    @poll = Poll.new
    3.times { @poll.poll_answers.build }
  end
  
  def create
    @poll = Poll.new(params[:poll])
    @poll.save!
    redirect_to "/"
  end

  def show
    @poll = Poll.find(params[:id])
  end
end
