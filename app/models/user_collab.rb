class UserCollab < ApplicationRecord
  belongs_to :user
  belongs_to :collab

  # def talent_tracker
  #   case self.user.specialty
  #     byebug
  #     when 'drums'
  #       self.collab.drummers -= 1
  #     when 'guitar'
  #       self.collab.guitars -= 1
  #     when 'bass'
  #       self.collab.basses -= 1
  #     when 'keyboard'
  #       self.collab.keyboards -= 1
  #     when 'rapper'
  #       self.collab.rappers -= 1
  #     when 'singer'
  #       self.collab.singers -= 1
  #     when 'beatboxer'
  #       self.collab.beatboxers -= 1
  #     when 'producer'
  #       self.collab.producers -= 1
  #     end
  # end

  def talent_tracker
    if self.user.specialty === 'rapper'
      byebug
      self.collab.rappers -= 1
    end
  end
end
