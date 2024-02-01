class User < ApplicationRecord
  has_many :bookings
  has_many :tools, through: :bookings
  has_many :tools_as_owner, class_name: 'Tool'
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_save :downcase_email

  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
