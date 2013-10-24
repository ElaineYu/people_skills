=begin
 What skills does user 1 have?
 	User.find(1).skills

 What proficiency level does user 1 have for hunting?
 	User.find(1).proficiency_level.where(skill = "hunting")

=end
class CreateProficiencies < ActiveRecord::Migration
  def change
  	create_table :proficiencies do |t|
  		t.integer :user_id, :skill_id, :proficiency_rating
  	end
  end
end
