-- Get all damages with corresponding customer, car and describtion
SELECT damages.damage_ID, customer.customer_ID, customer.first_name, customer.last_name, cars.car_ID, cars.manufaturer, cars.model, damages.describtion FROM customer INNER JOIN ( damages INNER JOIN cars on damages.car_ID = cars.car_ID) on customer.customer_ID = damages.customer_ID;
/*Get all invoices with customer name, car-type and costs*/
SELECT customer.last_name, customer.first_name, cars.manufaturer, cars.model, invoices.intial_charges, invoices.additional_charges  From
 cars inner join (invoices INNER JOIN ( rentals inner join customer on customer.customer_ID= rentals.customer_ID) on invoices.customer_ID= customer.customer_ID) on rentals.car_ID = cars.car_ID;
/*Get all cars that are at a station and their location*/
SELECT stations.station_ID, stations.street, stations.zip_code, stations.country_code, cars.car_ID, cars.manufaturer, cars.model  from stations inner join cars on stations.station_ID =  cars.station_ID;
/*Get all cars that care currently rented by a customer*/
SELECT customer.customer_ID, customer.first_name, customer.last_name, cars.car_ID, cars.manufaturer, cars.model FROM cars INNER JOIN customer on cars.customer_ID = customer.customer_ID;