class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    if record.title == "God"
      record.errors.add :base, "gods is not for sale"
    end
  end
end

class Article < ApplicationRecord
  # Cette méthode valide qu'une case à cocher sur l'interface utilisateur a été cochée lorsqu'un formulaire a été soumis avec message d'erreur
  #validates :title, length: { in: 6..20, message: 'must be abided'}
  # fin
  # ou bien une accept option
        #validates :terms_of_service, acceptance: { message: 'must be abided'}
        #validates :eula, acceptance: { accept: ['TRUE', 'accepted'] }
  # fin 
  has_many :comments, dependent: :destroy
 
  # validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  # validates :email, confirmation: true
  # validates :name, length: { minimum: 2 }
  # validates :bio, length: { maximum: 500 }
  # validates :password, length: { in: 6..20 }
  # validates :registration_number, length: { is: 6 }

  validates_with GoodnessValidator

  validates :title, presence: { strict: true }

  #validates :title, presence: true, if: :paid_with_title?
  #def paid_with_title?
   # payment_type == "title"
  #end

  validates :body, presence: true, length: { minimum: 8}

  # for the book
 
end 
