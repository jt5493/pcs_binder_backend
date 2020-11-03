# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Document.destroy_all
Note.destroy_all
Link.destroy_all
Binder.destroy_all

japan = Binder.create!(title: "Japan Binder")
florida = Binder.create!(title: "Florida Binder")

Document.create!(title: "car form", document: "https://pcsmypov.blob.core.windows.net/public/IAL_ShippingStorage_Instruction_Form.pdf", binder_id: japan.id)
Document.create!(title: "travel form", document: "file:///Users/jordonterry/Downloads/AMC%20Travel%20Sheet%20TERRY,%20JORDON%2005OCT2020.pdf", binder_id: florida.id)

Note.create!(title: "travel time", content: "flight leaves at 7:50 am", binder_id: japan.id)
Note.create!(title: "movers arrival", content: "movers will be here at 4:00 pm", binder_id: florida.id)

Link.create!(title: "airline link", url: "https://www.amc.af.mil/Home/AMC-Travel-Site/", binder_id: japan.id)
Link.create!(title: "movers website", url: "https://www.goldenservicesllc.com/", binder_id: florida.id)