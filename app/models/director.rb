class Director < ActiveRecord::Base

 #  - name: must be present; must be unique in combination with dob
 # - dob: no rules
 # - bio: no rules
 # - image_url: no rules

  validates :name, :presence => true, :uniqueness => { :scope => :dob}

has_many(:movies, :class_name => "Movie", :foreign_key => "director_id")

  

end
