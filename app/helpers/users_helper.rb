# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  dob             :datetime
#  gender          :string
#  admin           :boolean          default(FALSE)
#  image           :text
#

module UsersHelper
end
