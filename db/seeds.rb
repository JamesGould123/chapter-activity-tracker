# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Example Chapter",
             email: "chapter1@chapters.dddssdp.org",
             password:              "foobar",
             password_confirmation: "foobar",
             permissions:           "chapter")

User.create!(name:  "Example Staffer",
            email: "staff1@sscccdp.org",
            password:              "foobar",
            password_confirmation: "foobar",
            permissions:           "staffer")

User.create!(name:  "Example Admin",
             email: "admin1@bbbssdp.org",
             password:              "foobar",
             password_confirmation: "foobar",
             permissions:           "administrator")

99.times do |n|
  name  = "Chapter"
  email = "chapter-#{n+1}@aaassdp.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              permissions:           "chapter")
end

Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)

Category.create!(
  name: "Submit roster on time",
  desc: "Each semester you will get 10 points for submitting your roster on time. You will also get one point for every five new, valid e-mails that you provide to us. You must submit a roster each semester in order to use CAT points.",
  default_points: 10
)

Category.create!(
  name: "Meet with SSDPers in another chapter",
  desc: "Recognizing that SSDPers are spread all over the place during the summer, we encourage you to meet up with other SSDP members wherever you are interning, working, vacationing or living over the next few months. Talk to your OC to get in touch with local chapters, or try reaching out in the SSDP Chapter Leaders facebook group or the regional facebook groups. To earn the points, make sure to also take a picture of yourself and whoever you meet with and send it to your OC.",
  default_points: 20
)

Category.create!(
  name: "Apply for school funding",
  desc: "The summer is a great time to think about plans to raise funds for your chapter, especially as we get closer to Fall Regional Conference season. Many universities open up funding opportunities for student groups and individuals, including money for traveling to conferences. Take advantage of your time off over the summer to look into what you need to do in order to secure a budget for the upcoming school year. If you’re unsure of where to start, reach out to your OC and they can help you out. 1 point for every $10 raised",
  default_points: 1
)
Category.create!(
  name: "Attend leadership or skills-building training",
  desc: "This refers to a leadership or skills-building training on your campus, in your community, or online. This can also refer to workshops that you attend at conferences. 5 points per person per training",
  default_points: 5
)
Category.create!(
  name: "Volunteer at SSDP or partner event",
  desc: "This can be a Sensible Soirée, a drug policy reform conference, cannabis industry event, etc. 5 points per person per hour",
  default_points: 5
)
Category.create!(
  name: "First call/conversation with Outreach Coordinator",
  desc: "If you’re a new chapter, you get points for talking to your OC over the phone or online.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Each new officer recruited and trained",
  desc: "You can earn points for this each semester. 5 points per semester per officer",
  default_points: 5
)
Category.create!(
  name: "Recognized by school/remain in good standing with school",
  desc: "You earn 10 points for this each semester.",
  default_points: 10
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and recruit potential new members.",
  default_points: 5
)
