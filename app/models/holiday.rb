class Holiday < ActiveRecord::Base
  belongs_to :profile
  validates :name, presence: true,
                    length: { minimum: 5 }
def self.search(search)
  where("name LIKE ?", "%#{search}%") 
end
end
