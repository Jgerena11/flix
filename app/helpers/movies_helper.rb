module MoviesHelper

  def total_gross(movie)
    if movie.released?
      if movie.flop?
        "Flop!"
      else
        number_to_currency(movie.total_gross, precision: 2)
      end
    else
      'Movie not yet released'
    end
  end

  def year_of(movie)
    movie.released_on.year
  end
end
