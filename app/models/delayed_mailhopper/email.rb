require 'mailhopper'
require 'delayed_job'

module DelayedMailhopper
  class Email < Mailhopper::Email
    after_create :enqueue

    def enqueue
      dj = Delayed::Job.enqueue(SendJob.new(self.id))
      self.save!
    end
  end
end