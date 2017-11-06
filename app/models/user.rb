class User < ApplicationRecord
  # Remember to create a migration!
  has_many :decks, foreign_key: :creator_id
  has_many :rounds, foreign_key: :player_id

  validates :username, :password_hash, presence: true
  validates :username, uniqueness: true
  validate :validate_password

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @plain_text_password = new_password
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def validate_password
    if @plain_text_password.nil?
      errors.add(:password, "is required")
    elsif
      @plain_text_password.length < 6
      errors.add(:password, "must be at least 6 characters")
    end
  end

  def authenticate(password)
    self.password == password
  end

end
