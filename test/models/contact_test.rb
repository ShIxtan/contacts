# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :text             not null
#  email      :text             not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
