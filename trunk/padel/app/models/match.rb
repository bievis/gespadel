class Match < ActiveRecord::Base
  has_many :pairs
  validates_presence_of :fecha, :id_par1, :id_par2, :set1_par1, :set1_par2, :set2_par1, :set2_par2
  validate :duplicado

  def duplicado
    errors.add(:id_par1,"La pareja 1 y 2 son la misma") if id_par1 == id_par2
  end
end
