user = User.new
user.first_name = "Иван"
user.last_name = "Иванов"
user.middle_name = "Иванович"
user.email = "user1@user.com"
user.phone = "123"
user.med_insurance = "32422342343332"
user.date_of_birth = DateTime.new(1994, 05, 20)
user.password = "123"
user.address = "Ufa"
user.save!

spec = Specialization.new
spec.name = "Терапевт"

doc = Doctor.new
doc.first_name = "Петр"
doc.last_name = "Петров"
doc.middle_name = "Петрович"
doc.phone = "89177684839"
doc.email = "doctor1@doc.com"
doc.date_of_birth = DateTime.new(1981, 07, 23)
doc.specialization = spec
doc.cabinet = "24"
doc.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 08:00")
a.end_datetime = DateTime.parse("15.11.2019 08:20")
a.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 08:20")
a.end_datetime = DateTime.parse("15.11.2019 08:40")
a.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 08:40")
a.end_datetime = DateTime.parse("15.11.2019 09:00")
a.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 09:00")
a.end_datetime = DateTime.parse("15.11.2019 09:20")
a.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 09:20")
a.end_datetime = DateTime.parse("15.11.2019 09:40")
a.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 09:40")
a.end_datetime = DateTime.parse("15.11.2019 10:00")
a.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 10:00")
a.end_datetime = DateTime.parse("15.11.2019 10:20")
a.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 10:20")
a.end_datetime = DateTime.parse("15.11.2019 10:40")
a.save!

a = Appointment.new
a.doctor = doc
a.start_datetime = DateTime.parse("15.11.2019 10:40")
a.end_datetime = DateTime.parse("15.11.2019 11:00")
a.save!