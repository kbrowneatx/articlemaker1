# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Article.create(author: "Jake", title: "Making the perfect steak")
a2 = Article.create(author: "Tim", title: "Three Perfect Days in Austin")
a3 = Article.create(author: "Jake", title: "Great pork chops")
a4 = Article.create(author: "Jake", title: "Grilling seafood")

s1 = a1.sections.create(content: "What makes a great steak?", fmttype: "heading")
s2 = a1.sections.create(content: "A great steak should be red or pink on the inside, and dark brown with a crust...", fmttype: "body")
s3 = a1.sections.create(content: "Preparing the steak", fmttype: "heading")
s4 = a1.sections.create(content: "First rule: never put cold meat on a grill!", fmttype: "body")