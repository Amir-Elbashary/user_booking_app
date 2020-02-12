#########################################################
#                   Creating 4 users                    #
#########################################################

4.times do
  # This will be used as serial for user names
  user_number = 1

  User.create(email: "user#{user_number}@example.com", first_name: "First_#{user_number}", last_name: "Last_#{user_number}")

  user_number += 1
end



#########################################################
#       Creating Product 1 with it's own objects        #
#########################################################

product = Product.create(name: 'Product 1')

# Creating 2 events for the first product
event_1 = Event.create(product: product, name: "Event 1 for #{product.name}")
event_2 = Event.create(product: product, name: "Event 2 for #{product.name}")

# Creating appointments for the events

# For the first event
2.times do
  appointment_number = 1
  offset = 1.day
  appointment_date = DateTime.now + offset

  Appointment.create(event: event_1,
                     name: "Appointment #{appointment_number} for #{event_1.name}",
                     start_date: appointment_date,
                     end_date: (appointment_date + 2.hours)
                    )

  offset += 1.day
end

# For the second event
3.times do
  appointment_number = 1
  offset = 4.days
  appointment_date = DateTime.now + offset

  Appointment.create(event: event_2,
                     name: "Appointment #{appointment_number} for #{event_2.name}",
                     start_date: appointment_date,
                     end_date: (appointment_date + 2.hours)
                    )

  offset += 1.day
end



#########################################################
#       Creating Product 2 with it's own objects        #
#########################################################

# This product should have the most booking

product = Product.create(name: 'Product 2')

# Creating 4 events for the first product
event_1 = Event.create(product: product, name: "Event 1 for #{product.name}")
event_2 = Event.create(product: product, name: "Event 2 for #{product.name}")
event_3 = Event.create(product: product, name: "Event 3 for #{product.name}")
event_4 = Event.create(product: product, name: "Event 4 for #{product.name}")

# Creating appointments for the events

# For the first event
3.times do
  appointment_number = 1
  offset = 10.days
  appointment_date = DateTime.now + offset

  Appointment.create(event: event_1,
                     name: "Appointment #{appointment_number} for #{event_1.name}",
                     start_date: appointment_date,
                     end_date: (appointment_date + 2.hours)
                    )

  offset += 1.day
end

# Bookings for the first event
Booking.create(user: User.first, appointment: event_1.appointments.first)
Booking.create(user: User.first, appointment: event_1.appointments.offset(1).first)
Booking.create(user: User.last, appointment: event_1.appointments.first)
Booking.create(user: User.last, appointment: event_1.appointments.offset(1).first)

# For the second event
6.times do
  appointment_number = 1
  offset = 12.days
  appointment_date = DateTime.now + offset

  Appointment.create(event: event_2,
                     name: "Appointment #{appointment_number} for #{event_2.name}",
                     start_date: appointment_date,
                     end_date: (appointment_date + 2.hours)
                    )

  offset += 1.day
end

# Bookings for second event
Booking.create(user: User.first, appointment: event_2.appointments.first)
Booking.create(user: User.first, appointment: event_2.appointments.offset(3).first)
Booking.create(user: User.last, appointment: event_2.appointments.last)
Booking.create(user: User.last, appointment: event_2.appointments.offset(4).first)

# For the third event
3.times do
  appointment_number = 1
  offset = 14.days
  appointment_date = DateTime.now + offset

  Appointment.create(event: event_3,
                     name: "Appointment #{appointment_number} for #{event_3.name}",
                     start_date: appointment_date,
                     end_date: (appointment_date + 2.hours)
                    )

  offset += 1.day
end

# Bookings for second event
Booking.create(user: User.first, appointment: event_3.appointments.first)
Booking.create(user: User.last, appointment: event_2.appointments.last)

# For the fourth event
appointment_number = 1
offset = 16.days
appointment_date = DateTime.now + offset

Appointment.create(event: event_4,
                   name: "Appointment #{appointment_number} for #{event_4.name}",
                   start_date: appointment_date,
                   end_date: (appointment_date + 2.hours)
                  )



#########################################################
#       Creating Product 3 with it's own objects        #
#########################################################
# This product should have the fewest bookings

product = Product.create(name: 'Product 3')

# Creating 2 events for the first product
event_1 = Event.create(product: product, name: "Event 1 for #{product.name}")

# Creating appointments for the events

# For the first event
2.times do
  appointment_number = 1
  offset = 20.days
  appointment_date = DateTime.now + offset

  appointment= Appointment.create(event: event_1,
                                  name: "Appointment #{appointment_number} for #{event_1.name}",
                                  start_date: appointment_date,
                                  end_date: (appointment_date + 2.hours)
                                 )

  # Create 1 booking for the appointment
  Booking.create(user: User.first, appointment: appointment)

  offset += 1.day
end

