class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances

    validates :start_date, :duration, :title, :description, :price, :location, presence: true

    validates :duration, numericality: { greater_than_or_equal_to: 5 }

    validates :title, length: { in: 5..140 }

    validates :description, length: { in: 20..1000 }

    validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 1000}

    validate :start_date_after_current_date

    validate :duration_multiple

    private

    def start_date_after_current_date 
        if start_date < Date.current
          errors.add(:start_date, "Must be after current date")
        end
     end

     def duration_multiple
        if duration % 5 != 0
            errors.add(:duration, "Must be a multiple of 5")
        end
    end
end
