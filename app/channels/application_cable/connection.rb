module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_person
    def connect
      self.current_person = find_verified_user
    end
    protected
    def find_verified_user
      if (verified_user = env['warden'].user)
        verified_user
      else
        verified_user
      end
    end
  end
end
