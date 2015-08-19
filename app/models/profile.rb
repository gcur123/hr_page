class Profile < ActiveRecord::Base
has_many :holidays, dependent: :destroy
  validates :name, presence: true,
                    length: { minimum: 5 }
end
