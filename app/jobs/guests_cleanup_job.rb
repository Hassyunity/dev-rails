class GuestsCleanupJob < ApplicationJob
  self.queue_adapter = :resque

  def perform(*args)
    # Do something later
  end
end
