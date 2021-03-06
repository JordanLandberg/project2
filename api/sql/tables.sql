DROP TABLE app_user;
DROP TABLE user_role;
DROP TABLE question;
DROP TABLE answer;
DROP TABLE question_category;
DROP TABLE question_status;

CREATE TABLE user_role (
    role_id SERIAL PRIMARY KEY,
    role_name TEXT UNIQUE NOT NULL
);
CREATE TABLE app_user (
    user_id SERIAL PRIMARY KEY,
    email TEXT UNIQUE NOT NULL,
    user_password TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone TEXT NOT NULL,
    role_id INTEGER NOT NULL REFERENCES user_role(role_id)
);

CREATE TABLE question_category (
    category_id SERIAL PRIMARY KEY,
    category_name TEXT UNIQUE NOT NULL
);
CREATE TABLE question_status (
    status_id SERIAL PRIMARY KEY,
    status_name TEXT UNIQUE NOT NULL
);
CREATE TABLE question (
    question_id SERIAL PRIMARY KEY,
    question TEXT NOT NULL,
    correct_answer INTEGER,
    category_id INTEGER NOT NULL REFERENCES question_category(category_id),
    status_id INTEGER NOT NULL REFERENCES question_status(status_id)
);
CREATE TABLE answer (
    answer_id SERIAL PRIMARY KEY,
    answer TEXT NOT NULL,
    question_id INTEGER NOT NULL REFERENCES question(question_id)
);