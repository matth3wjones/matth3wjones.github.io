User.destroy_all
Post.destroy_all
Comment.destroy_all

users = [
  {
    username: "matth3w",
    email: "matthewjones00@me.com",
    password: "123123123",
    password_confirmation: "123123123"
  },
  {
    username: "derrick",
    email: "derrick_ray@me.com",
    password: "123123123",
    password_confirmation: "123123123"
  }
]

posts = [
  {
    title: "CYA with a new HR app",
    description: "download in the app store",
    user_id: 1
  },
  {
    title: "SonoSite Lead Logger",
    description: "This app helps employees at SonoSite log potential leads from medical tradeshows, allowing them to bypass the expensive offerings from the tradeshows to acquire lead data, this simple to use web app makes life easy.",
    user_id: 2
  },
  {
    title: "Perfect your look with Tinker",
    description: "We've all been there, getting ready for a friend's party, a first date or a job interview, not sure what to wear.  We've all been shopping at a store only to see a few options and ponder which looks best.  Enter Tinker.  The app that lets you quickly touch base with friends and experts and get their advice for what to wear and what looks best, snap a photo direct from the app, jot a little description of what help you are seeking and send it to a few friends or experts to get their insights and to help you look your best.",
    user_id: 1
  }
]

comments = [
  {
    text: "This looks like a great app!",
    name: "matt",
    post_id: 1
  },
  {
    text: "This is a great way to save money on tradeshows!",
    name: "gunner",
    post_id: 2
  },
  {
    text: "I could use this app, my employees suck!",
    name: "sarge",
    post_id: 2
  }
]

User.create!(users)
Post.create!(posts)
Comment.create!(comments)
