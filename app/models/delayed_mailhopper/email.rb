require 'mailhopper'
require 'delayed_job'

module DelayedMailhopper
  class Email < Mailhopper::Email
    after_create :enqueue

    def enqueue
      Delayed::Job.enqueue(SendJob.new(self.id))
    end
  end
end