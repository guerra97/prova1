class Utente < ApplicationRecord
  # wrap_parameters :utente, include: [:nome, :password, :password_confirmation]

  include Gravtastic
  gravtastic
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :nome, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX }
  has_secure_password
end
