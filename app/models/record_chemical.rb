class RecordChemical < ApplicationRecord
    belongs_to :record
    belongs_to :chemical
end
