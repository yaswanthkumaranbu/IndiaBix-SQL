INSERT INTO Users (user_id, name, phone_number, role, email, password, dob, city, state, country) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'Sam', '90909090902', 'user', 'sam@gmail.com', '12345', '2024-12-24', 'Tirupur', 'Tamil Naduq', 'India');

INSERT INTO Users (user_id, name, phone_number, role, email, password, dob, city, state, country) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'Samaaa', '063835793341', 'user', 'sammmi@gmail.com', '12345', '2024-12-13', 'Tirupur', 'Tamil Naduq', 'India');

INSERT INTO Users (user_id, name, phone_number, role, email, password, dob, city, state, country) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'KT_ADMIN', '9090', 'admin', 'admin@gmail.com', '12345', '2024-12-06', 'Tirupur', 'Tamil Naduq', 'India');

INSERT INTO Users (user_id, name, phone_number, role, email, password, dob, city, state, country) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'KT_SUBADMIN', '9090', 'subadmin', 'admin@gmail.com', '12345', '2024-12-06', 'Tirupur', 'Tamil Naduq', 'India');



INSERT INTO Topics (topic_id, name, created_by, created_at) 
VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'), 'IoT', '710376335',  DATE_FORMAT(CONVERT_TZ(NOW(), '+00:00', '+05:30'), '%d/%m/%Y, %h:%i:%s %p'));



INSERT INTO UserTopics  VALUES ('723343777',223637128,"IoT","KT_ADMIN","30/12/2024, 02:15:33 AM");

INSERT INTO UserTopics (user_id,topic_id,name,created_by,created_at) VALUES('280212463','223637128','IoT',"KT_ADMIN","30/12/2024, 02:15:33 AM");



INSERT INTO subtopics VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'Network , 4G , 5G',223637128,'811646721',DATE_FORMAT(CONVERT_TZ(NOW(), '+00:00', '+05:30'), '%d/%m/%Y, %h:%i:%s %p'));


INSERT INTO learningmaterials(topic_id,subtopic_id,content) VALUES("223637128","935354972","<h1><strong><u>What is a Computer Network?</u></strong></h1><p>A computer network is a collection of interconnected devices that share resources and information. These devices can include computers, servers, printers, and other hardware. Networks allow for the efficient exchange of data, enabling various applications such as email, file sharing, and internet browsing.</p><h1><br></h1><h1>How Does a Computer Network Work?</h1><p>Basics building blocks of a Computer network are Nodes and Links. A Network Node can be illustrated as Equipment for Data Communication like a Modem, Router, etc., or Equipment of a Data Terminal like connecting two computers or more. Link in Computer Networks can be defined as wires or cables or free space of wireless networks.</p><p><br></p><p>The working of Computer Networks can be simply defined as rules or protocols which help in sending and receiving data via the links which allow Computer networks to communicate. Each device has an IP Address, that helps in identifying a device.</p><p><br></p><p><strong>What do Computer Networks do?</strong></p><p>Computer networks first developed in 1950 for military and defense purpose. At that time they are mainly used to send data through telephone lines and had limited use in business or science.</p><p><br></p><p>Today comput<em>er networks are essential for businesses also. Modern networks offer more than just connecting devices. They play a key role in helping businesses adapt to the dig</em>ital world and succeed. These networks have become more flexible, automated, and secure, making them even more important in today’s business environment.</p>");


INSERT INTO Practices(title_id, topic_id,subtopic_id,title) VALUES(LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'223637128','935354972','Hello');


-- pratice question 1 and options
 
INSERT INTO PracticeQuestions (question_id,title_id,question,correct_option,explanation) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'188853177','What is LED?',1,'An LED is a semiconductor device that emits light when an electric current passes through it. It is widely used in electronic displays, lighting, and indicators.');

INSERT INTO PracticeOptions (option_id,question_id,option1,option2,option3,option4) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'956805429','Light Emitting Diode','Low Energy Device','Light Energy Device','Linear Energy Diode');

-- pratice question 2 and options

INSERT INTO PracticeQuestions (question_id,title_id,question,correct_option,explanation) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'188853177','What is resistor?',1,'Resistor is a component');

INSERT INTO PracticeOptions (option_id,question_id,option1,option2,option3,option4) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'355200213','Resistor is a component','fsdfsdfa','hgfbfbnkejnrg','tsugvkfwajvfhk');

-- test 1 question 1 and options

INSERT INTO Tests(title_id, topic_id,subtopic_id,title) VALUES(LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'223637128','935354972','SK  KS');

INSERT INTO TestQuestions (question_id,title_id,question,correct_option,explanation) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'361007380','What is LED?',1,'An LED is a semiconductor device that emits light when an electric current passes through it. It is widely used in electronic displays, lighting, and indicators.');

INSERT INTO TestOptions (option_id,question_id,option1,option2,option3,option4) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'726305272','Light Emitting Diode','Low Energy Device','Light Energy Device','Linear Energy Diode');


-- test 2 question 1 and options

INSERT INTO Tests(title_id, topic_id,subtopic_id,title) VALUES(LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'223637128','935354972','Sami');

INSERT INTO TestQuestions (question_id,title_id,question,correct_option,explanation) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'335366971','Who is SK?',1,'SK is a famous kollywood actor.');

INSERT INTO TestOptions (option_id,question_id,option1,option2,option3,option4) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'934486014','Kollywood Actor','Bollywood actor','hollywood actor','tollywood actor');


-- Test history and report of user named Sam

INSERT INTO TestHistory (test_id, user_id, topic_id, subtopic_id, title_id, type, title, start_at, finished_at, status, score, total_question) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'280212463','223637128','935354972','361007380','Test','SKKS','27/12/2024, 4:57:40 pm','27/12/2024, 5:00:01 pm','completed',0,2);

INSERT INTO Reports (report_id, test_id,report) VALUES (LPAD(FLOOR(RAND() * 1000000000), 9, '0'),'333171947','[{
            "question_number": 1,
            "correct_option": 1,
            "selected_option": 0,
            "is_correct": false
          },
          {
            "question_number": 2,
            "correct_option": 3,
            "selected_option": 0,
            "is_correct": false
          }]
         ');