# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  uid        :string
#  name       :string
#  agency_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end