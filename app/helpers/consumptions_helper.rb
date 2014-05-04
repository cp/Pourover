module ConsumptionsHelper

  def caffeine(consumptions)
    caffeine = 0
    consumptions.each do |c|
      caffeine += c.drink.caffeine
    end
    caffeine
  end

  def map_url(consumptions)
    url = "http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false"
    consumptions.each do |c|
      next unless c.geocoded?
      url << "&markers=#{c.latitude},#{c.longitude}"
    end
    url
  end
end
