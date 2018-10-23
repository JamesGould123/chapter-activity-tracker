# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

flask_cat_user_seeds_file = File.join(Rails.root, 'db', 'seeds','user.json')

flask_cat_user_seeds = File.read(flask_cat_user_seeds_file)

chapters = JSON.parse(flask_cat_user_seeds)

flask_cat_action_seeds_file = File.join(Rails.root,'db', 'seeds', 'action.json')

flask_cat_action_seeds = File.read(flask_cat_action_seeds_file)

actions = JSON.parse(flask_cat_action_seeds)

# Set up staff names as an array for database seed
staff = [
         "Betty", "Stacia", "Lauren", "Rachel", "Jake",
         "Elise", "Luis", "Hannah", "Vilmarie", "Nick"
        ]

# Create starter admin. Add instructions to change password.
User.create!(
                name:                  "Admin",
                email:                 "tyler.williams@ssdp.org",
                password:              "meowcatgrassroots",
                password_confirmation: "meowcatgrassroots",
                permissions:           "administrator",
                slug:                  "admin"
            )

staff.each do |staffer|
  User.create!(
                  name:                  staffer,
                  email:                 "#{staffer}@ssdp.org",
                  password:              "meowcatgrassroots",
                  password_confirmation: "meowcatgrassroots",
                  permissions:           "staffer",
                  slug:                  staffer
              )
end

chapters.each do |chapter|
  User.create!(
                  name:                  chapter["username"],
                  email:                 chapter["email"],
                  password:              "meowcatgrassroots",
                  password_confirmation: "meowcatgrassroots",
                  permissions:           "chapter",
                  slug:                  chapter["url"]
              )
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
  name: "Table on campus (5 points)",
  desc: "Set up a table on campus to pass out information related to SSDP and
  recruit potential new members.",
  default_points: 5,
  bucket_id: 1
)

Category.create!(
  name: "Submit roster on time (10 points plus 1 point per five new, valid e-mails)",
  desc: "Each semester you will get 10 points for submitting your roster on time.
  You will also get one point for every five new, valid e-mails that you provide
  to us. You must submit a roster each semester in order to use CAT points.",
  default_points: 10,
  bucket_id: 1

)

Category.create!(
  name: "Meet with SSDPers in another chapter (20 points)",
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
  name: "Apply for school funding (1 point for every $10 raised)",
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
  name: "Attend leadership or skills-building training (5 points per person per training)",
  desc: "This refers to a leadership or skills-building training on your campus,
   in your community, or online. This can also refer to workshops that you attend
    at conferences. 5 points per person per training",
  default_points: 5,
  bucket_id: 1

)

Category.create!(
  name: "Get trained by SSDP staff (5 points per person per training)",
  desc: "This refers to a Chapter building, Policy change, or Training and Education training conducted by an SSDP staff member for your chapter. This can be online or in-person.",
  default_points: 5,
  bucket_id: 1

)

Category.create!(
  name: "Volunteer at SSDP or partner event (5 points per person per hour)",
  desc: "This can be a Sensible Soirée, a drug policy reform conference,
  annabis industry event, etc. 5 points per person per hour",
  default_points: 5,
  bucket_id: 1

)
Category.create!(
  name: "First call/conversation with Outreach Coordinator (5 points, new chapters only)",
  desc: "If you’re a new chapter, you get points for talking to your OC over the
   phone or online.",
  default_points: 5,
  bucket_id: 1

)
Category.create!(
  name: "Each new officer recruited and trained (VP, Sec, Treas, etc.) (5 points. per semester)",
  desc: "You can earn points for this each semester. 5 points per semester per officer",
  default_points: 5,
  bucket_id: 1

)
Category.create!(
  name: "Recognized by school/remain in good standing with school (10 points per semester)",
  desc: "You earn 10 points for this each semester.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Secure/maintain faculty adviser (10 points. per semester)",
  desc: "You earn 10 points for this each semester.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Build/maintain relationships with other orgs on campus (10 points per org. per semester)",
  desc: "10 points per org per semester.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Host regular meetings, at least twice a month (15 points. per semester)",
  desc: "15 points per semester.",
  default_points: 15,
  bucket_id: 1

)
Category.create!(
  name: "Recruit and train next chapter President (30 points)",
  desc: "",
  default_points: 30,
  bucket_id: 1

)
Category.create!(
  name: "Successfully fundraise (1 point per $10 raised)",
  desc: "1 point per $10 raised",
  default_points: 1,
  bucket_id: 1

)
Category.create!(
  name: "Positive quote/media hit (10 points)",
  desc: "Someone from your chapter is quoted or your chapter is mentioned in a
  news article. Send the media source to your outreach coordinator to receive
   these points. Please attach the media link in the notes of your points submission.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Submit content for blog (15 points)",
  desc: "Send a draft of the blog post to outreach@ssdp.org and an outreach
   coordinator will get back to you in 24 hours.",
  default_points: 15,
  bucket_id: 1

)
Category.create!(
  name: "Translate an item for SSDP’s website into a non-english language (15 points per 750 words)",
  desc: "15 points per 750 words",
  default_points: 15,
  bucket_id: 1

)
Category.create!(
  name: "Refer a friend (10 points per new chapter application)",
  desc: "Love SSDP? Want to spread that love to other schools? If you know
  students at a school where there is no SSDP chapter, ask them to start one
  using our google form. Make sure when they fill out the new chapter application
  that they list you in how they heard about SSDP. An Outreach Coordinator will
  add these points when we receive the chapter application.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Take a picture with donor sheets and send to your Outreach coordinator (10 points)",
  desc: "Follow the instructions on your donor thank you sheet (from your care
  package or found here) and send a picture of your chapter to your Outreach Coordinator.",
  default_points: 10,
  bucket_id: 1

)
Category.create!(
  name: "Fill out the SSDP Membership Survey (3 Points per response)",
  desc: "3 points per member of your chapter that fills out the SSDP membership survey.",
  default_points: 3,
  bucket_id: 1

)
Category.create!(
  name: "Submit case study (50 points)",
  desc: "The case study template is here. You can submit a case study for any
   Policy Change action that was successfully implemented, or that was initiated
   and may have failed",
  default_points: 50,
  bucket_id: 2

)
Category.create!(
  name: "Register voters (1 point each voter registered)",
  desc: "1 point per voter registered",
  default_points: 1,
  bucket_id: 2

)
Category.create!(
  name: "Make a campaign plan with your outreach coordinator (15 points)",
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
  name: "Chapter member elected to student government (25 points)",
  desc: "",
  default_points: 25,
  bucket_id: 2

)
Category.create!(
  name: "Collect signatures for ballot initiative (5 points per person per hour)",
  desc: "5 points per person per hour.",
  default_points: 5,
  bucket_id: 2

)
Category.create!(
  name: "Attend lobbying training (10 points)",
  desc: "This can be a training hosted by SSDP staff or a partner organization.",
  default_points: 10,
  bucket_id: 2

)
Category.create!(
  name: "Write & submit LTE/op-ed (10 points)",
  desc: "This can be in any campus or community media outlet.",
  default_points: 10,
  bucket_id: 2

)
Category.create!(
  name: "Get LTE/op-ed published (10 points)",
  desc: "This can be in any campus or community media outlet.",
  default_points: 10,
  bucket_id: 2

)
Category.create!(
  name: "Get politician on the record (15 points)",
  desc: "This refers to SSDP’s On the Record project. ",
  default_points: 15,
  bucket_id: 2

)
Category.create!(
  name: "Pass a student government resolution endorsing policy reform (20 points)",
  desc: "This can mean any relevant drug policy reform. Visit ssdp.org/campaigns
   for ideas!",
  default_points: 20,
  bucket_id: 2

)
Category.create!(
  name: "Meet with decision makers (20 points)",
  desc: " This can be decision makers on campus, or decision makers the local, state, federal, and international level. | Esto puede ser tomadores de decisiones en el campus, o tomadores de decisiones a nivel local, estatal, federal e internacional. ",
  default_points: 20,
  bucket_id: 2

)

Category.create!(
  name: "Host campaign-themed event/forum/debate (20 points)",
  desc: "This refers to an event around a policy change campaign.",
  default_points: 20,
  bucket_id: 2

)

Category.create!(
  name: "Policy changed or adopted (50 points)",
  desc: "This can refer to policy on campus or at the local, state, and
  federal level.",
  default_points: 50,
  bucket_id: 2

)
Category.create!(
  name: "Research one campus for the SSDP Campus Policy Gradebook (30 points)",
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
  name: "Policy Change Volunteering (5 points per hour per person)",
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
  name: "Do the SSDP DARE (10 points)",
  desc: "Each month SSDP’s Diversity Awareness, Reflection and Education (DARE)
  committee produces a newsletter called the Monthly Mosaic. Each monthly newsletter
  will have 1-3 SSDP DAREs, which is a challenge related to diversity and
  inclusion for your chapter to complete.",
  default_points: 10,
  bucket_id: 3
)
Category.create!(
  name: "Respond to P2P Reflection Questions on a Training Curriculum module (15 points per module completed)",
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
  name: "Distribute educational materials in a non-tabling setting (5 points)",
  desc: "This can mean educational materials delivered at an event or canvassing.",
  default_points: 5,
  bucket_id: 3

)
Category.create!(
  name: "Distribute harm reduction training/materials (1 point per person reached)",
  desc: "This refers to any educational materials related to harm reduction or
  any event that trains people on how to practice harm reduction.
  1 point per person reached",
  default_points: 1,
  bucket_id: 3

)
Category.create!(
  name: "Direct service volunteering (Assembling or distributing syringes or Naloxone kits. 5 points per person per hour)",
  desc: "This refers to assembling or distributing syringes or naloxone kits,
   or working directly with those impacted by the War on Drugs.
    5 points per person per hour",
  default_points: 5,
  bucket_id: 3

)
Category.create!(
  name: "Host general event/forum/debate (20 points)",
  desc: "",
  default_points: 20,
  bucket_id: 3

)
Category.create!(
  name: "Present an SSDP Peer Education module (20 points)",
  desc: "From https://ssdp.org/justsayknow",
  default_points: 20,
  bucket_id: 3

)
Category.create!(
  name: "Collect evaluation from SSDP Peer Education (5 points per evaluation collected)",
  desc: "Send the evaluation to everyone who attended your JSK event to collect
   feedback that goes back to SSDP headquarters.",
  default_points: 5,
  bucket_id: 3

)
Category.create!(
  name: "Submit suggestion for SSDP JSK modules on specific drugs (1 point per resource suggested)",
  desc: "Contact vilmarie@ssdp.org - 1 point per resource suggested.",
  default_points: 1,
  bucket_id: 3

)
Category.create!(
  name: "Submit suggestion for SSDP Training Curriculum (1 point per resource suggested)",
  desc: "Contact vilmarie@ssdp.org - 1 point per resource suggested.",
  default_points: 1,
  bucket_id: 3

)
Category.create!(
  name: "Create a Just Say Know Module (50 Points)",
  desc: "Contact vilmarie@ssdp.org for information on how to create a Just Say Know module. ",
  default_points: 50,
  bucket_id: 3

)

actions.each do |action|
  name = action["author_id"].to_s
  title = action["title"].to_s
  ChapterAction.create!(
                           user_id:        User.where("name = '#{name}'")[0].id,
                           note:           action["note"],
                           points:         action["points"],
                           category_id:    Category.where("name = '#{title}'")[0].id,
                           date_completed: action["created"]
  )
end
