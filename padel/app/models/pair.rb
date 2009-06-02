class Pair < ActiveRecord::Base
  has_many :players
  belongs_to :match
  validates_presence_of :id_play1, :id_play2
  validate :duplicado

  def duplicado
    errors.add(:id_play1,"El jugador 1 y 2 son el mismo") if id_play1 == id_play2
  end
end
