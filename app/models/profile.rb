class Profile < ActiveRecord::Base
has_many :holidays, dependent: :destroy
  validates :name, presence: true,
                    length: { minimum: 5 }
def self.search(search)
  where("name LIKE ?", "%#{search}%") 
end
end