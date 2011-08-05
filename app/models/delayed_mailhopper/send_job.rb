module DelayedMailhopper
  class SendJob < Struct.new(:id)
    def perform
      Email.find(id).send!
    end

    def success(job)
      Rails::logger.info "[DelayedMailhopper::SendJob] success for email_id #{id}, delayed_job_id #{job.id}"
    end

    def error(job, e)
      Rails::logger.error "[DelayedMailhopper::SendJob] error for email_id #{id}, delayed_job_id #{job.id}\n" +
                          "#{e.class}\n#{e.message}\n\n=== BACKTRACE ===\n" + e.backtrace.join("\n")
    end
  end
end
