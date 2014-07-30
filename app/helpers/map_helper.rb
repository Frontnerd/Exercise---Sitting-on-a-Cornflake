module MapHelper
  def idea_map(options={ })
    gmaps({
      "map_options" => {
        "auto_adjust" => true,
        "auto_zoom" => false,
        "zoom" => 10,
        "raw" => "{scrollwheel: false, styles: BWStyle }" ## this is not included in the gmaps4rails gem
      },
      "markers" => {
        "data" => Idea.to_gmaps4rails
      }
    })
  end
end
