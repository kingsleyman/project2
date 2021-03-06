class Event
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :venue
  belongs_to :category
  has_many :pictures, dependent: :delete
  accepts_nested_attributes_for :pictures
  
  # def self.category_types
  #   ["Around Town", "Art", "Classical", "Clubs", "Film", "Food & Drink", "Pop & Rock",  "Queer", "Sport", "Stage"]
  # end

  field :title, type: String
  field :category
  field :start_date, type: Date
  field :end_date, type: Date
  field :price, type: Float
  field :recommended, type: Boolean
  field :description, type: String


  # validates :category, inclusion: { in: Event.category_types } 


end

