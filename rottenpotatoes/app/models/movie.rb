class Movie < ActiveRecord::Base

  def self.find_by_director id
    director_name = Movie.find(id).director
    Movie.where("id != ?", id).where("director= ?",director_name)  
    
  end 
end
