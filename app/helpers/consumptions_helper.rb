module ConsumptionsHelper

  def caffeine(consumptions)
    caffeine = 0
    consumptions.each do |c|
      caffeine += c.drink.caffeine
    end
    caffeine
  end

end
