# == Schema Information
#
# Table name: choices
#
#  id             :bigint           not null, primary key
#  user_id        :bigint
#  personality_id :bigint
#  importance     :integer
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Choice < ApplicationRecord
  belongs_to :user
  belongs_to :personality
end
