# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.delete_all
Company.reset_pk_sequence
Company.create([
                   {name: 'MoGo', location: 'New York'},
                   {name: 'Apple', location: 'Los Angeles'}
               ])

Job.delete_all
Job.reset_pk_sequence
Job.create([
               {name: 'Sinatra', place: 'Remote', company_id: 1},
               {name: 'Ruby', place: 'Contract', company_id: 2},
               {name: 'Javascript', place: 'Permanent', company_id: 2},
               {name: 'Node', place: 'Remote', company_id: 2}
           ])


