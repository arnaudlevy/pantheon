# == Schema Information
#
# Table name: choices
#
#  id             :bigint           not null, primary key
#  user_id        :bigint
#  personality_id :bigint
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  major          :boolean          default(FALSE)
#

class Choice < ApplicationRecord
  belongs_to :user
  belongs_to :personality

  scope :major, -> { where(major: true) }
  scope :minor, -> { where(major: false) }
end
