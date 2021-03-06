class Actor < ActiveRecord::Base

  # Actor:
  #  - name: must be present; must be unique in combination with dob
  #  - dob: no rules
  #  - bio: no rules
  #  - image_url: no rules

  validates :name, :presence => true, :uniqueness => { :scope => :dob}

has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")
end
