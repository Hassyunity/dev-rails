class Comment < ApplicationRecord
  
 
  belongs_to :article
  belongs_to :comment, optional: true
end