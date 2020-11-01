# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


japan = Binder.create(title: "Japan Binder")
florida = Binder.create(title: "Florida Binder")

doc1 = Document.create(title: "car form", document: "https://pcsmypov.blob.core.windows.net/public/IAL_ShippingStorage_Instruction_Form.pdf")
doc2 = Document.create(title: "travel form", document: "file:///Users/jordonterry/Downloads/AMC%20Travel%20Sheet%20TERRY,%20JORDON%2005OCT2020.pdf")