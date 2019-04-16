class User < ApplicationRecord
  has_many :tags
  has_many :favorites
  has_many :favorite_tags, through: :tags
  has_many :destinations, through: :favorites

  validates :username, uniqueness: true

  # validates :first_name, :last_name, :password, presence: true

  # self.errors.add(:attribute, 'Error Message')

  # validates :email, {uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }}

  # validates_format_of :phone_number, :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/, :message => "- Phone numbers must be in xxx-xxx-xxxx format."

end
