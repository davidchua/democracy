require File.dirname(__FILE__) + '/lib/democracy'
require File.dirname(__FILE__) + '/lib/poll_helper'
ActionController::Base.send :include, Democracy
ActionView::Base.send :include, Democracy::PollHelper
