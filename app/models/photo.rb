class Photo < ApplicationRecord
    
    
    has_attached_file :image 
    has_many :comments, dependent: :destroy
    has_many :reports, dependent: :destroy
    
    validates :title, presence: true, length: { minimum: 5 }
    validates :image, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
