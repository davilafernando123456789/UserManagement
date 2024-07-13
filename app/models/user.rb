class User < ApplicationRecord
    # Validación de presencia con mensaje personalizado
    validates :first_name, presence: { message: "The firstname is required." }
    validates :last_name, presence: { message: "The lastname is required." }
    validates :email, presence: { message: "E-mail is mandatory." }
  
     # Validación del formato de email con mensaje personalizado
     validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "The e-mail format is invalid." }
  
    # Validación de unicidad con mensaje personalizado
    validates :email, uniqueness: { message: "This e-mail has already been registered." }
  
  
    # Validación opcional para la edad, si es relevante para tu aplicación
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true, message: "Age must be a non-negative integer." }
  end
  