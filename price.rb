# De 1 - Cau 3

module Price
    @min_ticket_quantity = 100
    def min_ticket_need_sell
        puts "You need 	sell at least #{@min_ticket_quantity} ticket to fly"
    end
end

class Plane
    include Price
    class << self
        def max_fly_speed
            puts "913 km/h"
        end
    end

    def flight_attendant attendant 
        puts "In flight have #{attendant} attendant"
    end
end

vietnam_airline = Plane.new
vietnam_airline.flight_attendant 10

vietjet = Plane.new
vietjet.flight_attendant 20

Plane.max_fly_speed

vietnam_airline.min_ticket_need_sell
vietjet.min_ticket_need_sell