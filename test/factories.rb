Factory.define :user do |u|
  u.name { Factory.next(:name) }
  u.email { Factory.next(:email) }
end

Factory.define :post do |p|
  p.title "A title"
  p.text "My long blog post"
  p.association :user     
end

Factory.define :comment do |c|
  c.text "My comment"
  c.association :user
  c.association :post
end

Factory.sequence :email do |n|
  "person#{n}@octo.com"
end

Factory.sequence :name do |n|
  "Name#{n}"
end

