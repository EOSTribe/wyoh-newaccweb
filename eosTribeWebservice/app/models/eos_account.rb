class EosAccount < ApplicationRecord

  # Database input integrity validation
  # Meets the 12-character long username requirement
  validates :username, presence: true, uniqueness: true, length: {is: 12}
  validates :email, presence: true
end
