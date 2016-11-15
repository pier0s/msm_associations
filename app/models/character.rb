class Character < ActiveRecord::Base

  # Character:
  #  - movie_id: must be present
  #  - actor_id: must be present
  #  - name: no rules

validates :movie_id, :presence => true
belongs_to(:actor, :class_name => "Actor", :foreign_key => "actor_id")

end
