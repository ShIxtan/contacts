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

class Contact < ActiveRecord::Base
  validates :name, :email, :user_id, presence: :true
  validates :email, uniqueness: {scope: :user_id}

  belongs_to(
    :owner,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many :contact_shares, dependent: :destroy

  has_many(
    :shared_users,
    through: :contact_shares,
    source: :user
  )
end
