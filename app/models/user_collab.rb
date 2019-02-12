class UserCollab < ApplicationRecord
  belongs_to :user
  belongs_to :collab

  # validate :valid_join
  #
  def talent_tracker
    case self.user.specialty
      when 'drummers'
        self.collab.drummers -= 1
      when 'guitars'
        self.collab.guitars -= 1
      when 'basses'
        self.collab.basses -= 1
      when 'keyboards'
        self.collab.keyboards -= 1
      when 'rappers'
        self.collab.rappers -= 1
      when 'singers'
        self.collab.singers -= 1
      when 'beatboxers'
        self.collab.beatboxers -= 1
      when 'producers'
        self.collab.producers -= 1
      end
  end
  #
  # def valid_join
  #   self.talent_tracker
  #   if (self.collab.drummers < 0 ||
  #     self.collab.guitars < 0 ||
  #     self.collab.basses < 0 ||
  #     self.collab.rappers < 0 ||
  #     self.collab.keyboards < 0 ||
  #     self.collab.singers < 0 ||
  #     self.collab.beatboxers < 0 ||
  #     self.collab.producers < 0)
  #       errors.add(:collab, 'group is full')
  #   end
  # end

end
