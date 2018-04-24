class Pet < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :breed, presence: true
  validates :age, inclusion: { in: ['até 1 ano', '1-2 anos','2-5 anos', '5-10 anos', '10+ anos']}
  validates :weight, inclusion: { in: ['até 5 kg', '5-10 kg','10-20 kg', '20-40 kg']}
  validates :sex, inclusion: { in: ['macho', 'fêmea']}
  validates :vaccine, inclusion: { in: ['em dia', 'incompleto']}
  validates :castrated, inclusion: { in: [ true, false ] }

end
