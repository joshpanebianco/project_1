# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Artist.destroy_all
# Artist.create(:name => 'Joan Miro', :nationality => 'Spanish', :dob => '1893/04/20', :period => '20th century', :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5c/Portrait_of_Joan_Miro%2C_Barcelona_1935_June_13.jpg')
#
# Work.destroy_all
# Work.create(:title => 'The Flight of the Dragonfly in Front of the Sun', :year => '1968', :medium => 'oil on canvas', :style => 'Abstract Art', :image => 'http://41.media.tumblr.com/6b293aea7473596f536e145b957b2cd4/tumblr_mzrwc18h3b1qzu1hko1_1280.jpg')

User.destroy_all
User.create(:name => 'Jane Smith', :email => 'janesmith@gmail.com', :gender =>
'female', :dob => '14/09/1987')

User.create(:name => 'Blake Holt', :email => 'blake86@yahoo.com', :gender =>
'male', :dob => '09/05/1990')

Measurement.destroy_all
Measurement.create(:height => '156', :weight => '82', :waist => '64', :chest =>
'74', :thighs => '38', :stomach => '68', :hips => '72', :upper_arm_right => '28', :upper_arm_left => '26')

Measurement.create(:height => '191', :weight => '115', :waist => '108', :chest =>'110', :thighs => '48', :stomach => '82', :hips => '92', :upper_arm_right => '33', :upper_arm_left => '31')
