# Example Projects
Project.delete_all
Link.delete_all
Project.create({
  name: "Philadelphia Slick",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  creation_date: Date.parse('1-1-2010'),
  site_url: "https://www.philadelphiaslick.com",
  client: "Me, Myself, and I",
  remote_image_url: "https://placehold.it/100x100"
})

Project.create({
  name: "Benpolinsky.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  creation_date: Date.parse('1-1-2016'),
  site_url: "https://www.benpolinsky.com",
  public_repo: "git@publicrepo.com",
  client: "Me, Myself, and I",
  remote_image_url: "https://placehold.it/100x100"
})

Project.create({
  name: "Village Industries",
  description: "A Shopify Site.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  creation_date: Date.parse('1-1-2010'),
  site_url: "https://www.villageindustries.com",
  client: "Village Arts",
  remote_image_url: "https://placehold.it/100x100"
})

Project.create({
  name: "Village of Arts and Humanities",
  description: "A Wordpress Site.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  creation_date: Date.parse('1-1-2010'),
  site_url: "https://www.villagearts.com",
  client: "Village Arts",
  remote_image_url: "https://placehold.it/100x100"
})

Project.create({
  name: "Elliot Polinsky",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  creation_date: Date.parse('1-1-2010'),
  site_url: "https://www.elliotpolinsky.com",
  client: "Elliot polinsky",
  remote_image_url: "https://placehold.it/100x100"
})

Project.create({
  name: "Weiss Sound",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  creation_date: Date.parse('1-1-2010'),
  site_url: "https://www.weiss-sound.com",
  client: "Weiss Audio",
  remote_image_url: "https://placehold.it/100x100"
})

6.times do |n|
  Project.create({
    name: "Random Site #{n}",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    creation_date: Date.parse("#{n%12+1}-1-2010"),
    site_url: "https://www.random_site_#{n}.com",
    client: "Client #{n}",
    remote_image_url: "https://placehold.it/100x100"
  })
end


# Example Links:

Link.create({
  name: "Github", 
  url: "https://www.github.com/benpolinsky", 
  subtitle: "Check out my code on Github",
  remote_image_url: "https://placehold.it/50x50"
   })
   
Link.create({
  name: "Bitbucket", 
  url: "https://www.bitbucket.com/benpolinsky", 
  subtitle: "Check out my code on Bitbucket",
  remote_image_url: "https://placehold.it/50x50"
})
  
# example admin

Admin.create({
  email: "benjamin.polinsky@gmail.com",
  password: "password"
})