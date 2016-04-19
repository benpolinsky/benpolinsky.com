# Example Projects
Project.create({
  name: "Philadelphia Slick",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  creation_date: Date.parse('1-1-2010'),
  site_url: "https://www.philadelphiaslick.com",
  client: "Me, Myself, and I",
  image: "http://placehold.it/100x100"
})

Project.create({
  name: "Benpolinsky.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  creation_date: Date.parse('1-1-2016'),
  site_url: "https://www.benpolinsky.com",
  public_repo: "git@publicrepo.com",
  client: "Me, Myself, and I",
  image: "http://placehold.it/100x100"
})


# Example Links:

Link.create({
  name: "Github", 
  url: "http://www.github.com/benpolinsky", 
  subtitle: "Check out my code on Github",
  image: "http://placehold.it/50x50"
   })
   
Link.create({
  name: "Bitbucket", 
  url: "http://www.bitbucket.com/benpolinsky", 
  subtitle: "Check out my code on Bitbucket",
  image: "http://placehold.it/50x50"
  })