# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Example Chapter",
             email: "chapter1@chapters.ssdp.org",
             password:              "foobar",
             password_confirmation: "foobar",
             permissions:           "chapter",
             slug: "example-chapter")


User.create!(name:  "Example Staffer",
            email: "staff@ssdp.org",
            password:              "foobar",
            password_confirmation: "foobar",
            permissions:           "staffer",
            slug: "example-staffer")



User.create!(name:  "Example Admin",
             email: "admin@ssdp.org",
             password:              "foobar",
             password_confirmation: "foobar",
             permissions:           "administrator",
             slug: "example-administrator")



99.times do |n|
  name  = "Chapter#{n+1}"
  email = "chapter-#{n+1}@chapters.ssdp.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              permissions:           "chapter",
              slug: name)

end

Bucket.create!(
  name: "Chapter Building"
)

Bucket.create!(
  name: "Policy Change"
)

Bucket.create!(
  name: "Training and Education"
)

Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and
  recruit potential new members.",
  default_points: 5,
  bucket_id: 1
)

Category.create!(
  name: "Submit roster on time",
  desc: "Each semester you will get 10 points for submitting your roster on time.
  You will also get one point for every five new, valid e-mails that you provide
  to us. You must submit a roster each semester in order to use CAT points.",
  default_points: 10,
  bucket_id: 1

)

Category.create!(
  name: "Meet with SSDPers in another chapter",
  desc: "Recognizing that SSDPers are spread all over the place during the summer,
  we encourage you to meet up with other SSDP members wherever you are interning,
   working, vacationing or living over the next few months.
   Talk to your OC to get in touch with local chapters, or try reaching out in
    the SSDP Chapter Leaders facebook group or the regional facebook groups.
    To earn the points, make sure to also take a picture of yourself and whoever
    you meet with and send it to your OC.",
  default_points: 20,
  bucket_id: 1

)

Category.create!(
  name: "Apply for school funding",
  desc: "The summer is a great time to think about plans to raise funds for your chapter,
   especially as we get closer to Fall Regional Conference season.
   Many universities open up funding opportunities for student groups and
   individuals, including money for traveling to conferences.
   Take advantage of your time off over the summer to
   look into what you need to do in order to secure a budget for the upcoming
     school year. If you’re unsure of where to start, reach out to your OC and
      they can help you out. 1 point for every $10 raised",
  default_points: 1,
  bucket_id: 1

)
Category.create!(
  name: "Attend leadership or skills-building training",
  desc: "This refers to a leadership or skills-building training on your campus,
   in your community, or online. This can also refer to workshops that you attend
    at conferences. 5 points per person per training",
  default_points: 5,
  bucket_id: 1

)
Category.create!(
  name: "Volunteer at SSDP or partner event",
  desc: "This can be a Sensible Soirée, a drug policy reform conference,
  annabis industry event, etc. 5 points per person per hour",
  default_points: 5,
  bucket_id: 1

)
Category.create!(
  name: "First call/conversation with Outreach Coordinator",
  desc: "If you’re a new chapter, you get points for talking to your OC over the
   phone or online.",
  default_points: 5,
  bucket_id: 1

)
Category.create!(
  name: "Table on campus",
  desc: "Set up a table on campus to pass out information related to SSDP and
  recruit potential new members.",
  default_points: 5,
  bucket_id: 1

)
Category.create!(
  name: "Each new officer recruited and trained",
  desc: "You can earn points for this each semester. 5 points per semester per officer",
  default_points: 5,
  bucket_id: 1

)
Category.create!(
  name: "Recognized by school/remain in good standing with school",
  desc: "You earn 10 points for this each semester.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Secure/maintain faculty adviser ",
  desc: "You earn 10 points for this each semester.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Build/maintain relationships with other orgs on campus",
  desc: "10 points per org per semester.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Host regular meetings, at least twice a month",
  desc: "15 points per semester.",
  default_points: 15,
  bucket_id: 1

)
Category.create!(
  name: "Recruit and train next chapter President",
  desc: "",
  default_points: 30,
  bucket_id: 1

)
Category.create!(
  name: "Successfully fundraise",
  desc: "1 point per $10 raised",
  default_points: 1,
  bucket_id: 1

)
Category.create!(
  name: "Positive quote/media hit",
  desc: "Someone from your chapter is quoted or your chapter is mentioned in a
  news article. Send the media source to your outreach coordinator to receive
   these points. Please attach the media link in the notes of your points submission.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Submit content for blog",
  desc: "Send a draft of the blog post to outreach@ssdp.org and an outreach
   coordinator will get back to you in 24 hours.",
  default_points: 15,
  bucket_id: 1

)
Category.create!(
  name: "Translate an item for SSDP’s website into a non-english language",
  desc: "15 points per 750 words",
  default_points: 15,
  bucket_id: 1

)
Category.create!(
  name: "Refer a friend",
  desc: "Love SSDP? Want to spread that love to other schools? If you know
  students at a school where there is no SSDP chapter, ask them to start one
  using our google form. Make sure when they fill out the new chapter application
  that they list you in how they heard about SSDP. An Outreach Coordinator will
  add these points when we receive the chapter application.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Take a picture with donor sheets and send to your Outreach coordinator",
  desc: "Follow the instructions on your donor thank you sheet (from your care
  package or found here) and send a picture of your chapter to your Outreach Coordinator.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Fill out the SSDP Membership Survey",
  desc: "3 points per member of your chapter that fills out the SSDP membership survey.",
  default_points: 3,
  bucket_id: 1

)
Category.create!(
  name: "Submit case study",
  desc: "The case study template is here. You can submit a case study for any
   Policy Change action that was successfully implemented, or that was initiated
   and may have failed",
  default_points: 50,
  bucket_id: 2

)
Category.create!(
  name: "Register voters",
  desc: "1 point per voter registered",
  default_points: 1,
  bucket_id: 2

)
Category.create!(
  name: "Make a campaign plan with your outreach coordinator",
  desc: "We know that you, as an SSDP chapter leader, want to change drug
   policies and help bring the War on Drugs to an end. But you don’t have to go
   it alone, and we've created resources to help you make change. One of the
   most important components of any change-making campaign is developing a plan.
    We've talked about how to create a campaign plan with your Outreach
    Coordinator before, but have not had any formal tools to assist in the process.
    To make things more clear about what we mean when we say make a plan -
    we've created a template document that you your OC can fill out together,
    or you can fill out on your own and review with your Outreach Coordinator
    if preferred. Check it out here. ",
  default_points: 15,
  bucket_id: 2

)
Category.create!(
  name: "Chapter member elected to student government",
  desc: "",
  default_points: 25,
  bucket_id: 2

)
Category.create!(
  name: "Collect signatures for ballot initiative",
  desc: "5 points per person per hour.",
  default_points: 5,
  bucket_id: 2

)
Category.create!(
  name: "Attend lobbying training",
  desc: "This can be a training hosted by SSDP staff or a partner organization.",
  default_points: 10,
  bucket_id: 2

)
Category.create!(
  name: "Write and submit LTE/op-ed",
  desc: "This can be in any campus or community media outlet.",
  default_points: 10,
  bucket_id: 2

)
Category.create!(
  name: "Get LTE/op-ed published",
  desc: "This can be in any campus or community media outlet.",
  default_points: 10,
  bucket_id: 2

)
Category.create!(
  name: "Get politician on the record",
  desc: "This refers to SSDP’s On the Record project. ",
  default_points: 15,
  bucket_id: 2

)
Category.create!(
  name: "Pass a student government resolution endorsing policy reform",
  desc: "This can mean any relevant drug policy reform. Visit ssdp.org/campaigns
   for ideas!",
  default_points: 20,
  bucket_id: 2

)
Category.create!(
  name: "Policy changed or adopted",
  desc: "This can refer to policy on campus or at the local, state, and
  federal level.",
  default_points: 50,
  bucket_id: 2

)
Category.create!(
  name: "Research one campus for the SSDP Campus Policy Gradebook",
  desc: "The purpose of the Gradebook is to assess the campus policies and
  philosophy surrounding the use of various substances on campus and in the
  campus community. This gradebook is a resource for students. It serves as a
  guide for SSDP chapters who are interested in engaging in policy change at
  the campus level. In addition, when published in the Spring of 2017, the
  Gradebook will serve as a source of information for incoming college and
  university students who are weighing the decision of what school to attend.
   Under the Campus Policy Grading Rubric, there are 100 points possible.
    Schools with sensible policies, a philosophy of response which does not
     include inflexible prohibition, stigmatization, and punishment,
     which provide accurate drug education and information; who promote a
      culture of openness and accessibility to harm reduction practices &
      services receive higher score. Please review the instructions for the
      Gradebook here, and we will award you points when we've confirmed your
      submission.",
  default_points: 30,
  bucket_id: 2

)
Category.create!(
  name: "Policy Change Volunteering",
  desc: "This category is meant to describe any amount of time spent doing
  policy change work that is not otherwise captured in another category.
  For example, if you put on a campaign themed event, protest, or rally,
  please use that category. But if someone on SSDP staff asked you to do some
    policy research for a lobby day, or if you spent time doing other similar
    work not captured in another category, please record your time using this
    category. 5 points per person per hour.",
  default_points: 5,
  bucket_id: 2

)
Category.create!(
  name: "Do the SSDP DARE",
  desc: "Each month SSDP’s Diversity Awareness, Reflection and Education (DARE)
  committee produces a newsletter called the Monthly Mosaic. Each monthly newsletter
  will have 1-3 SSDP DAREs, which is a challenge related to diversity and
  inclusion for your chapter to complete.",
  default_points: 10,
  bucket_id: 3
)
Category.create!(
  name: "Respond to P2P Reflection Questions on a Training Curriculum module",
  desc: "SSDP’s Peer Education Program was launched in April with the goal of
  empowering students with the tools and knowledge to facilitate open and honest
  conversation about substances and to reduce drug related harm on campus and in
  their communities. In order to become a certified SSDP Peer Educator,
  you must go through the lessons in the Training Curriculum and answer the
  Reflection Questions in each module. While undergoing this process is not
  necessary to be able to present an SSDP Just Say Know lesson
  (which can be found at SSDP.org/justsayknow), going through the Training
  Curriculum will make you much more equipped to tackle tough situations
  that may arise. Submit your responses here.",
  default_points: 15,
  bucket_id: 3

)
Category.create!(
  name: "Distribute educational materials in a non-tabling setting",
  desc: "This can mean educational materials delivered at an event or canvassing.",
  default_points: 5,
  bucket_id: 3

)
Category.create!(
  name: "Distribute harm reduction training/materials",
  desc: "This refers to any educational materials related to harm reduction or
  any event that trains people on how to practice harm reduction.
  1 point per person reached",
  default_points: 1,
  bucket_id: 3

)
Category.create!(
  name: "Direct service volunteering (Assembling or distributing syringes or Naloxone kits.)",
  desc: "This refers to assembling or distributing syringes or naloxone kits,
   or working directly with those impacted by the War on Drugs.
    5 points per person per hour",
  default_points: 5,
  bucket_id: 3

)
Category.create!(
  name: "Host general even/tforum/debate",
  desc: "",
  default_points: 20,
  bucket_id: 3

)
Category.create!(
  name: "Present an SSDP Peer Education module",
  desc: "From https://ssdp.org/justsayknow",
  default_points: 20,
  bucket_id: 3

)
Category.create!(
  name: "Collect evaluation from SSDP Peer Education",
  desc: "Send the evaluation to everyone who attended your JSK event to collect
   feedback that goes back to SSDP headquarters.",
  default_points: 5,
  bucket_id: 3

)
Category.create!(
  name: "Submit suggestion for SSDP JSK modules on specific drugs",
  desc: "Contact vilmarie@ssdp.org - 1 point per resource suggested.",
  default_points: 1,
  bucket_id: 3

)
Category.create!(
  name: "Submit suggestion for SSDP Training Curriculum",
  desc: "Contact vilmarie@ssdp.org - 1 point per resource suggested.",
  default_points: 1,
  bucket_id: 3

)
Category.create!(
  name: "Create a Just Say Know Module",
  desc: "Contact vilmarie@ssdp.org for information on how to create a Just Say Know module. ",
  default_points: 50,
  bucket_id: 3

)
