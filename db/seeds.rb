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
  name: "Secure/maintain faculty adviser ",
  desc: "You earn 10 points for this each semester.",
  default_points: 10
)
Category.create!(
  name: "Build/maintain relationships with other orgs on campus",
  desc: "10 points per org per semester.",
  default_points: 10
)
Category.create!(
  name: "Host regular meetings, at least twice a month",
  desc: "15 points per semester.",
  default_points: 15
)
Category.create!(
  name: "Recruit and train next chapter President",
  desc: "",
  default_points: 30
)
Category.create!(
  name: "Successfully fundraise",
  desc: "1 point per $10 raised",
  default_points: 1
)
Category.create!(
  name: "Positive quote/media hit",
  desc: "Someone from your chapter is quoted or your chapter is mentioned in a news article. Send the media source to your outreach coordinator to receive these points. Please attach the media link in the notes of your points submission.",
  default_points: 10
)
Category.create!(
  name: "Submit content for blog",
  desc: "Send a draft of the blog post to outreach@ssdp.org and an outreach coordinator will get back to you in 24 hours.",
  default_points: 15
)
Category.create!(
  name: "Translate an item for SSDP’s website into a non-english language",
  desc: "15 points per 750 words",
  default_points: 15
)
Category.create!(
  name: "Refer a friend",
  desc: "Love SSDP? Want to spread that love to other schools? If you know students at a school where there is no SSDP chapter, ask them to start one using our google form. Make sure when they fill out the new chapter application that they list you in how they heard about SSDP. An Outreach Coordinator will add these points when we receive the chapter application.",
  default_points: 10
)
Category.create!(
  name: "Take a picture with donor sheets and send to your Outreach coordinator",
  desc: "Follow the instructions on your donor thank you sheet (from your care package or found here) and send a picture of your chapter to your Outreach Coordinator.",
  default_points: 10
)
Category.create!(
  name: "Fill out the SSDP Membership Survey",
  desc: "3 points per member of your chapter that fills out the SSDP membership survey.",
  default_points: 3
)
Category.create!(
  name: "Submit case study",
  desc: "The case study template is here. You can submit a case study for any Policy Change action that was successfully implemented, or that was initiated and may have failed",
  default_points: 50
)
Category.create!(
  name: "Table on campus",
  desc: "The case study template is here. You can submit a case study for any Policy Change action that was successfully implemented, or that was initiated and may have failed",
  default_points: 50
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
