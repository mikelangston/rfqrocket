class Rfq < ApplicationRecord
  belongs_to :project

  STATUS = ['Active', 'Archived', 'Blocked']
end
