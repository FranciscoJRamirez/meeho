class Event < ApplicationRecord
    validates_presence_of :name, :start_date, :end_date, :max_students
    has_and_belongs_to_many :users, -> { distinct }

    #validates :max_students, presence: true, uniqueness: false

    

    def is_full?
        self.users.count >= self.max_students
    end
    
end
