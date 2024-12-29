INSERT INTO Users (user_id, name, phone_number, role, email, password, dob, city, state, country) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'Sam', '90909090902', 'user', 'sam@gmail.com', '12345', '2024-12-24', 'Tirupur', 'Tamil Naduq', 'India');

INSERT INTO Users (user_id, name, phone_number, role, email, password, dob, city, state, country) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'Samaaa', '063835793341', 'user', 'sammmi@gmail.com', '12345', '2024-12-13', 'Tirupur', 'Tamil Naduq', 'India');

INSERT INTO Users (user_id, name, phone_number, role, email, password, dob, city, state, country) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'KT_ADMIN', '9090', 'admin', 'admin@gmail.com', '12345', '2024-12-06', 'Tirupur', 'Tamil Naduq', 'India');

INSERT INTO Topics (topic_id, name, created_by, created_at) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'IoT', '710376335',  DATE_FORMAT(CONVERT_TZ(NOW(), '+00:00', '+05:30'), '%d/%m/%Y, %h:%i:%s %p'));

INSERT INTO UserTopics  VALUES ('723343777',223637128,"IoT","KT_ADMIN","30/12/2024, 02:15:33 AM");
