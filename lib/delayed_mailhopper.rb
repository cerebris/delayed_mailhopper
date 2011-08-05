require "delayed_mailhopper/engine"
require File.expand_path('../../app/models/delayed_mailhopper/email', __FILE__)

module DelayedMailhopper
end

::Mailhopper.setup do |config|
  config.email_class = DelayedMailhopper::Email
end
