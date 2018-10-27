class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true
  validates :name, presence: { message: "can't be blank" }, uniqueness: { message: "must be unique" }
end
