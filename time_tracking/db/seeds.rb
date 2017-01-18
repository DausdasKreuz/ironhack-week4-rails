# Project.create!(name: 'Ironhack', description: 'Ironhack is a...')
# Project.create!(name: 'Time tracking app')
# Project.create!(name: 'Recipes', description: 'Track my favourite recipes')

(1..10).each do |i|
  project = Project.create!(name: "Name #{i}", description: "Description #{i}")
  project.time_entries.create!(hours: rand(0..2), minutes: rand(0..60), comments: "This is de time_entry #{i}")
end
