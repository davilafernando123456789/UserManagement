class User < ApplicationRecord
    validates :first_name, presence: { message: "The firstname is required." }
    validates :last_name, presence: { message: "The lastname is required." }
    validates :email, presence: { message: "E-mail is mandatory." }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "The e-mail format is invalid." }
    validates :email, uniqueness: { message: "This e-mail has already been registered." }
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true, message: "Age must be a non-negative integer." }
  end
  