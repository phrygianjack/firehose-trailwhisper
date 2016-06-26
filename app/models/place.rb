class Place < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: { message: "Field Cannot Be Blank" }, length: {minimum: 3, too_short: "Must Be at Least %{count} Characters."}
  validates :address, presence: { message: "Field Cannot Be Blank" }
  validates :description, presence: { message: "Field Cannot Be Blank" }
end
