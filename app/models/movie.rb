class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(year)
      Movie.where(year: year)
    end

    def self.create_with_title(title)
      titled_movie = Movie.create(title: title)
      titled_movie
    end

    def self.first_movie
      Movie.first
    end

    def self.last_movie
      Movie.last
    end

    def self.movie_count
      Movie.count
    end

    def self.find_movie_with_id(id)
      Movie.find(id)
    end

    def self.find_movie_with_attributes(title)
      Movie.find_by(title)
    end

    def self.find_movies_after_2002
      Movie.where("release_date > 2002")
    end

    def update_with_attributes(title)
      # puts title
      # movie = Movie.find_by(title: "Awesome Flick")
      # puts movie.title
      # movie.update(title)
      # puts movie.title
      puts Movie.first.title
      Movie.first.update(title: title)
      puts Movie.first.title     
           
    end


  end