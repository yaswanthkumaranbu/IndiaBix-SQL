select * from users;

select * from Topics;

select * from SubTopics;

select * from usertopics;

select * from users inner join usertopics on users.user_id = usertopics.user_id;

select * from topics join subtopics on topics.topic_id = subtopics.topic_id;

select * from learningmaterials ;

select * from practices;

select * from practicequestions;

select * from practiceoptions;

select * from tests;

select * from testquestions;

select * from testoptions;

select * from testhistory;

select * from reports;

select question from testquestions   join tests on tests.title_id = testquestions.title_id where title = 'Sami';


