# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  city = City.create!(name: Faker::Address.city)
end

5.times do
  specialty = Specialty.create!(name: Faker::Job.title)
end

10.times do

  doctor = Doctor.create!(
                          first_name: Faker::Name.first_name, 
                          last_name: Faker::Name.last_name,
                          zip_code: Faker::Address.zip_code,
                          city: City.all.sample,
                         )
  patient = Patient.create!(
                            first_name: Faker::Name.first_name,
                            last_name: Faker::Name.last_name,
                            city: City.all.sample
                            )

  appointment = Appointment.create!(
                                    date: Faker::Date.forward(30),
                                    doctor_id: rand(Doctor.first.id..Doctor.last.id),
                                    patient_id: rand(Patient.first.id..Patient.last.id),
                                    city: City.all.sample
                                    )
end

10.times do
  doctor_specialty = DoctorSpecialty.create!(
                                              doctor: Doctor.all.sample,
                                              specialty: Specialty.all.sample
                                            )
end



                                  

