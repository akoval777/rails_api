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
Geek.delete_all
Geek.reset_pk_sequence
Geek.create([
                { name: "Mike", stack: "Sinatra React", resume: true },
                { name: "Alex", stack: "Ruby React", resume: true },
                { name: "Martha", stack: "Rails", resume: false },
                { name: "Juri", stack: "Java", resume: true },
                { name: "Andrew", stack: "PHP", resume: false },
                { name: "Nina", stack: "Node", resume: true },
                { name: "Bob", stack: "Front end", resume: true },
                { name: "Kate", stack: "PHP", resume: false },
                { name: "Boris", stack: "Full stack", resume: true },
            ])

Apply.delete_all
Apply.reset_pk_sequence
Apply.create([
                 { job_id: 1, geek_id: 1, read: true, invited: true },
                 { job_id: 1, geek_id: 2, read: false, invited: false },
                 { job_id: 2, geek_id: 5, read: true, invited: false },
                 { job_id: 3, geek_id: 8, read: false, invited: false },
             ])



