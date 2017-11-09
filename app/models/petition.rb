class Petition < ApplicationRecord
  validates :name, presence: true
  validates :dob, presence: { message: "Date of birth can't be blank" }
  validates :gender, presence: true
  validates :residency_type, presence: true
  validates :start_date, presence: { message: "Preferred start date can't be blank"}
  validates :duration, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :social_media, presence: true
  validates :practice_medium, presence: { message: "Medium can't be blank" }
  validates :artistic_statement, presence: true
  validates :history, presence: { message: "Experience can't be blank" }
  validates :intention, presence: { message: "Intended work can't be blank" }
  validates :offering, presence: true
  validates :references, presence: true
end
