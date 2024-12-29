CREATE TABLE Users (
    user_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(15),
    role VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(50),
    dob VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Topics (
    topic_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    created_by VARCHAR(100), 
    created_at VARCHAR(50),
    FOREIGN KEY (created_by) REFERENCES users(user_id) 
    ON UPDATE CASCADE
);


CREATE TABLE UserTopics (
    user_id VARCHAR(20),
    topic_id VARCHAR(20),
    name VARCHAR(100),
    created_by VARCHAR(100), 
    created_at VARCHAR(50),
    PRIMARY KEY (user_id, topic_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (topic_id) REFERENCES Topics(topic_id)
);	

CREATE TABLE SubTopics (
    subtopic_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    topic_id VARCHAR(20),
    created_by VARCHAR(100),
    created_at VARCHAR(20),
    FOREIGN KEY (topic_id) REFERENCES Topics(topic_id)
);

CREATE TABLE LearningMaterials (
	topic_id VARCHAR(20),
    subtopic_id VARCHAR(20),
    content TEXT,
    PRIMARY KEY (topic_id,subtopic_id),
    FOREIGN KEY (subtopic_id) REFERENCES subtopics(subtopic_id),
    FOREIGN KEY (topic_id) REFERENCES Topics(topic_id)
);

CREATE TABLE Practices (
	title_id VARCHAR(20) PRIMARY KEY,
    topic_id VARCHAR(20),
    subtopic_id VARCHAR(20),
    title VARCHAR(20),
    FOREIGN KEY (subtopic_id) REFERENCES subtopics(subtopic_id),
    FOREIGN KEY (topic_id) REFERENCES Topics(topic_id)
);

    

CREATE TABLE Tests (
	title_id VARCHAR(20) PRIMARY KEY,
    topic_id VARCHAR(20),
    subtopic_id VARCHAR(20),
    title VARCHAR(20),
    FOREIGN KEY (subtopic_id) REFERENCES subtopics(subtopic_id),
    FOREIGN KEY (topic_id) REFERENCES Topics(topic_id)
);


CREATE TABLE PracticeQuestions (
	question_id VARCHAR(20) PRIMARY KEY,
    title_id VARCHAR(20),
    question VARCHAR(100),
    correct_option INT,
    explanation TEXT,
    FOREIGN KEY (title_id) REFERENCES Practices(title_id)
);

CREATE TABLE TestQuestions (
	question_id VARCHAR(20) PRIMARY KEY,
    title_id VARCHAR(20),
    question VARCHAR(100),
    correct_option INT,
    explanation TEXT,
    FOREIGN KEY (title_id) REFERENCES Tests(title_id)
);

CREATE TABLE PracticeOptions (
	option_id VARCHAR(20) PRIMARY KEY,
    question_id VARCHAR(20),
    option1 VARCHAR(100),
    option2 VARCHAR(100),
    option3 VARCHAR(100),
    option4 VARCHAR(100),
    FOREIGN KEY (question_id) REFERENCES PracticeQuestions(question_id)
);

CREATE TABLE TestOptions (
	option_id VARCHAR(20) PRIMARY KEY,
    question_id VARCHAR(20),
    option1 VARCHAR(100),
    option2 VARCHAR(100),
    option3 VARCHAR(100),
    option4 VARCHAR(100),
    FOREIGN KEY (question_id) REFERENCES TestQuestions(question_id)
);

CREATE TABLE TestHistory (
	test_id VARCHAR(20) PRIMARY KEY,
    user_id VARCHAR(20),
    topic_id VARCHAR(20),
    subtopic_id VARCHAR(20),
    title_id VARCHAR(20),
    type VARCHAR(20),
    title VARCHAR(20),
    start_at VARCHAR(20),
    finished_at VARCHAR(20),
    status VARCHAR(20),
    score INT,
    total_question INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (topic_id) REFERENCES Topics(topic_id),
    FOREIGN KEY (subtopic_id) REFERENCES SubTopics(subtopic_id),
    FOREIGN KEY (title_id) REFERENCES Tests(title_id)
);

CREATE TABLE Reports (
    report_id INT PRIMARY KEY,
    test_id VARCHAR(20),
    report JSON,
    FOREIGN KEY (test_id) REFERENCES TestHistory(test_id)
);
