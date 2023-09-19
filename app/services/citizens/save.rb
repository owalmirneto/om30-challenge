# frozen_string_literal: true

module Citizens
  class Save < ApplicationOrganizer
    organize(FindOrNew, Persist, SendNotifyEmail)
  end
end
