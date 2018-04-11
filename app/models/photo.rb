class Photo < ApplicationRecord
    
    
    has_attached_file :image  
    has_many :comments
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
