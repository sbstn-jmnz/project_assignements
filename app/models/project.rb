class Project < ApplicationRecord
    has_and_belongs_to_many :workers
    after_create :send_notification

    def send_notification
        puts "Hello"
    end
    
end
