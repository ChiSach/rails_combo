class Combo < ApplicationRecord
    self.table_name = "combos"
    validates :name, presence: true
    
    has_many :combo_meta
    accepts_nested_attributes_for :combo_meta, allow_destroy: true
    # validates_associated :combo_meta
end
