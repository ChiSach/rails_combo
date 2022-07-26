class ComboMetum < ApplicationRecord

    belongs_to :combo
    validates :name_meta, presence: true
end
