class SayGreeting < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :greeting_text, presence: true
end
