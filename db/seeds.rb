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


BpCustomFields::GroupTemplate.create!(name: "About", visible: nil, appearances: [ BpCustomFields::Appearance.create(resource: "BpCustomFields::AbstractResource", resource_id: "about", appears: true, row_order: nil, group_template_id: 1)])

BpCustomFields::FieldTemplate.create!([
  {name: "About Page Title", label: "About Page Title", group_template_id: 1, field_type: "string", min: "", max: "", required: false, instructions: "", default_value: "", placeholder_text: nil, prepend: "", append: "", rows: nil, date_format: "", time_format: "", accepted_file_types: "", toolbar: "Full", choices: "", multiple: false, parent_id: nil, row_order: 3},
  {name: "About Page Text", label: "About Page Text", group_template_id: 1, field_type: "text", min: "", max: "", required: false, instructions: "", default_value: "", placeholder_text: nil, prepend: "", append: "", rows: nil, date_format: "", time_format: "", accepted_file_types: "", toolbar: "Full", choices: "", multiple: false, parent_id: nil, row_order: 4},
  {name: "About Image", label: "About Image", group_template_id: 1, field_type: "image", min: "", max: "", required: false, instructions: "", default_value: "", placeholder_text: nil, prepend: "", append: "", rows: nil, date_format: "", time_format: "", accepted_file_types: "", toolbar: "Full", choices: "", multiple: false, parent_id: nil, row_order: 5}
])

BpCustomFields::AbstractResource.create!([
  {name: "about"},
  {name: "contact"}
])