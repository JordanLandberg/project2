INSERT INTO user_role (role_name)
    VALUES  ('student'),
            ('admin');

INSERT INTO app_user (email, user_password, first_name, last_name, phone, role_id)
    VALUES  ('jordanlandberg@gmail.com', 'password', 'Jordan', 'Landberg',
                '(516)806-7753', (SELECT role_id FROM user_role WHERE role_name='admin')),
            ('abood.aqrab@hotmail.com', 'password', 'Abdulah', 'Aqrabawi',
                '(951)215-1414', (SELECT role_id FROM user_role WHERE role_name='admin')),
            ('carrichka@yahoo.com', 'password', 'Carri', 'Martin',
                '(303)916-0458', (SELECT role_id FROM user_role WHERE role_name='admin')),
            ('yosuke.kibe@yosuke.com', 'password', 'Yosuke', 'Kibe',
                '(123)1578-9523', (SELECT role_id FROM user_role WHERE role_name='admin')),
            ('blake.kruppa@revature.com', 'pass', 'Blake', 'Kruppa',
                '(587)364-9861', (SELECT role_id FROM user_role WHERE role_name='admin')),
            ('phongtran@gmail.com', 'password', 'Phong', 'Tran',
                '(364)669-9753', (SELECT role_id FROM user_role WHERE role_name='student')),
            ('chrispy@magic.com', 'password', 'Chris', 'Prosser',
                '(598)744-1258', (SELECT role_id FROM user_role WHERE role_name='student')),
            ('jboakye@ginyuforce.org', 'password', 'Joseph', 'Boakye',
                '(635)257-1354', (SELECT role_id FROM user_role WHERE role_name='student'));

INSERT INTO question_category (category_name)
    VALUES  ('HTML'), ('CSS'), ('JavaScript'), ('React'), ('Redux'), ('SQL'), ('pgAdmin'), 
            ('Java'), ('Node'), ('Express'), ('AWS'), ('DevOps'), ('Algorithms');

INSERT INTO question_status (status_name)
    VALUES ('Pending'), ('Approved'), ('Denied');

-- HTML QUESTIONS
INSERT INTO question (question, category_id, status_id)
    VALUES  ('What is HTML?',
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is an element?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is the difference between an id and a class?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How does every HTML page start?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How many elements can you add the id of "custom-id"?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How many elements can you add the class of "custom-class"?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is the format for creating a div element in JavaScript?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What does DOM stand for?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is a meta tag used for?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Which of these is valid list syntax for creating an ordered list?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you link a CSS file?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you link a JavaScript file?', 
                (SELECT category_id FROM question_category WHERE category_name = 'HTML'), 
                (SELECT status_id FROM question_status WHERE status_name = 'Approved'));
-- HTML ANSWERS
INSERT INTO answer (answer, question_id)
    VALUES  ('Hyper Text Markup Language',
                (SELECT question_id FROM question WHERE question = 'What is HTML?')),
            ('Hidden Token Middle Language',
                (SELECT question_id FROM question WHERE question = 'What is HTML?')),
            ('Hyperlinks and Text Markup Language',
                (SELECT question_id FROM question WHERE question = 'What is HTML?')),
            ('Hyper Tool Markup Language',
                (SELECT question_id FROM question WHERE question = 'What is HTML?')),
            ('Everything from the start tag to an end tag',
                (SELECT question_id FROM question WHERE question = 'What is an element?')),
            ('A way to style a tag',
                (SELECT question_id FROM question WHERE question = 'What is an element?')),
            ('A way that you can tell a tag where it will be on a page',
                (SELECT question_id FROM question WHERE question = 'What is an element?')),
            ('Air, Earth, Fire, Water',
                (SELECT question_id FROM question WHERE question = 'What is an element?')),
            ('Id''s can be used only once while classes can be used multiple times',
                (SELECT question_id FROM question WHERE question = 'What is the difference between an id and a class?')),
            ('Classes can be used only once while id''s can be used multiple times',
                (SELECT question_id FROM question WHERE question = 'What is the difference between an id and a class?')),
            ('Id''s are used in databases for a primary key while classes are used exclusively in HTML',
                (SELECT question_id FROM question WHERE question = 'What is the difference between an id and a class?')),
            ('Classes are able to be used in only a single file while id''s can be used in as many files as you want',
                (SELECT question_id FROM question WHERE question = 'What is the difference between an id and a class?')),
            ('<!DOCTYPE html>',
                (SELECT question_id FROM question WHERE question = 'How does every HTML page start?')),
            ('<html>',
                (SELECT question_id FROM question WHERE question = 'How does every HTML page start?')),
            ('<>',
                (SELECT question_id FROM question WHERE question = 'How does every HTML page start?')),
            ('<div>',
                (SELECT question_id FROM question WHERE question = 'How does every HTML page start?')),
            ('1',
                (SELECT question_id FROM question WHERE question = 'How many elements can you add the id of "custom-id"?')),
            ('As many as you want',
                (SELECT question_id FROM question WHERE question = 'How many elements can you add the id of "custom-id"?')),
            ('0',
                (SELECT question_id FROM question WHERE question = 'How many elements can you add the id of "custom-id"?')),
            ('About 3',
                (SELECT question_id FROM question WHERE question = 'How many elements can you add the id of "custom-id"?')),
            ('As many as you want',
                (SELECT question_id FROM question WHERE question = 'How many elements can you add the class of "custom-class"?')),
            ('1',
                (SELECT question_id FROM question WHERE question = 'How many elements can you add the class of "custom-class"?')),
            ('0',
                (SELECT question_id FROM question WHERE question = 'How many elements can you add the class of "custom-class"?')),
            ('About 3',
                (SELECT question_id FROM question WHERE question = 'How many elements can you add the class of "custom-class"?')),
            ('document.createElement(''div'')',
                (SELECT question_id FROM question WHERE question = 'What is the format for creating a div element in JavaScript?')),
            ('file.CreateElement(tagname)',
                (SELECT question_id FROM question WHERE question = 'What is the format for creating a div element in JavaScript?')),
            ('document.createDiv()',
                (SELECT question_id FROM question WHERE question = 'What is the format for creating a div element in JavaScript?')),
            ('this.createElement(''div''',
                (SELECT question_id FROM question WHERE question = 'What is the format for creating a div element in JavaScript?')),
            ('Document Object Model',
                (SELECT question_id FROM question WHERE question = 'What does DOM stand for?')),
            ('Document Objective Modeling',
                (SELECT question_id FROM question WHERE question = 'What does DOM stand for?')),
            ('Directed Object Method',
                (SELECT question_id FROM question WHERE question = 'What does DOM stand for?')),
            ('Displayed Object Middleware',
                (SELECT question_id FROM question WHERE question = 'What does DOM stand for?')),
            ('Specify information about the page such as author or keywords',
                (SELECT question_id FROM question WHERE question = 'What is a meta tag used for?')),
            ('Can be used to encapsulate a section of data with block level styling',
                (SELECT question_id FROM question WHERE question = 'What is a meta tag used for?')),
            ('They are no longer supported as of HTML 5',
                (SELECT question_id FROM question WHERE question = 'What is a meta tag used for?')),
            ('Creating an element that will develop superpowers',
                (SELECT question_id FROM question WHERE question = 'What is a meta tag used for?')),
            ('<ol> <li>Item 1</li> <li>Item 2</li> <li>Item 3</li> </ol>',
                (SELECT question_id FROM question WHERE question = 'Which of these is valid list syntax for creating an ordered list?')),
            ('<ol> <li>Item 1</li> <li>Item 2</li> <li>Item 3</li> </ul>',
                (SELECT question_id FROM question WHERE question = 'Which of these is valid list syntax for creating an ordered list?')),
            ('<li> <ol>Item 1</ol> <ol>Item 2</ol> <ol>Item 3</ol> </li>',
                (SELECT question_id FROM question WHERE question = 'Which of these is valid list syntax for creating an ordered list?')),
            ('<ul> <li>Item 1</li> <li>Item 2</li> <li>Item 3</li> </ul>',
                (SELECT question_id FROM question WHERE question = 'Which of these is valid list syntax for creating an ordered list?')),
            ('<link rel="stylesheet" type="text/css" href="test.css">',
                (SELECT question_id FROM question WHERE question = 'How do you link a CSS file?')),
            ('<script rel="stylesheet" type="text/css" href="test.css"></script>',
                (SELECT question_id FROM question WHERE question = 'How do you link a CSS file?')),
            ('<script src="test.css"></script>',
                (SELECT question_id FROM question WHERE question = 'How do you link a CSS file?')),
            ('<link type="stylesheet" rel="text/css" src="test.css">',
                (SELECT question_id FROM question WHERE question = 'How do you link a CSS file?')),
            ('<script src="test.js"></script>',
                (SELECT question_id FROM question WHERE question = 'How do you link a JavaScript file?')),
            ('<link rel="script" type="text/css" href="test.js">',
                (SELECT question_id FROM question WHERE question = 'How do you link a JavaScript file?')),
            ('<script rel="script" type="text/css" href="test.js"></script>',
                (SELECT question_id FROM question WHERE question = 'How do you link a JavaScript file?')),
            ('<link type="script" rel="text/css" src="test.js">',
                (SELECT question_id FROM question WHERE question = 'How do you link a JavaScript file?'));
-- HTML CORRECT ANSWER
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Hyper Text Markup Language' AND question_id = (SELECT question_id FROM question WHERE question = 'What is HTML?'))
WHERE question = 'What is HTML?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Everything from the start tag to an end tag' AND question_id = (SELECT question_id FROM question WHERE question = 'What is an element?'))
WHERE question = 'What is an element?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Id''s can be used only once while classes can be used multiple times' AND question_id = (SELECT question_id FROM question WHERE question = 'What is the difference between an id and a class?'))
WHERE question = 'What is the difference between an id and a class?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '<!DOCTYPE html>' AND question_id = (SELECT question_id FROM question WHERE question = 'How does every HTML page start?'))
WHERE question = 'How does every HTML page start?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '1' AND question_id = (SELECT question_id FROM question WHERE question = 'How many elements can you add the id of "custom-id"?'))
WHERE question = 'How many elements can you add the id of "custom-id"?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'As many as you want' AND question_id = (SELECT question_id FROM question WHERE question = 'How many elements can you add the class of "custom-class"?'))
WHERE question = 'How many elements can you add the class of "custom-class"?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'document.createElement(''div'')' AND question_id = (SELECT question_id FROM question WHERE question = 'What is the format for creating a div element in JavaScript?'))
WHERE question = 'What is the format for creating a div element in JavaScript?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Document Object Model' AND question_id = (SELECT question_id FROM question WHERE question = 'What does DOM stand for?'))
WHERE question = 'What does DOM stand for?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Specify information about the page such as author or keywords' AND question_id = (SELECT question_id FROM question WHERE question = 'What is a meta tag used for?'))
WHERE question = 'What is a meta tag used for?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '<ol> <li>Item 1</li> <li>Item 2</li> <li>Item 3</li> </ol>' AND question_id = (SELECT question_id FROM question WHERE question = 'Which of these is valid list syntax for creating an ordered list?'))
WHERE question = 'Which of these is valid list syntax for creating an ordered list?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '<link rel="stylesheet" type="text/css" href="test.css">' AND question_id = (SELECT question_id FROM question WHERE question = 'How do you link a CSS file?'))
WHERE question = 'How do you link a CSS file?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '<script src="test.js"></script>' AND question_id = (SELECT question_id FROM question WHERE question = 'How do you link a JavaScript file?'))
WHERE question = 'How do you link a JavaScript file?'; 
-- CSS 
INSERT INTO question (question, category_id, status_id)
    VALUES  ('What does CSS stand for?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you change the size of an element?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is the correct syntax for the types of units can you use to change the size of an element?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What does the CSS box model look like from inner to outer?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you select elements by class name?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you select elements by id?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What ways can you select elements by?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What does the color property do?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How many columns are in the bootstrap grid system?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What are the different ways to address color?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you center the text of an element?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is the order of margin values? ex)margin: 0px 10px 20px 30px',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you select a direct child class(a) of another class(b)?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you select all child elements(p) of a class(a)?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Which of these are not valid border styles?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you remove the list-item marker from a list?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Which of these are not an example of a pseudo-selector?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Where in an HTML document would you reference an external style sheet?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you create a comment?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you change the color of an element?',
                (SELECT category_id FROM question_category WHERE category_name = 'CSS'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved'));
-- CSS ANSWERS
INSERT INTO answer (answer, question_id)
    VALUES  ('Cascading Style Sheets',
                (SELECT question_id FROM question WHERE question = 'What does CSS stand for?')),
            ('Concealing Stable Sheets',
                (SELECT question_id FROM question WHERE question = 'What does CSS stand for?')),
            ('Colorful Style Sheets',
                (SELECT question_id FROM question WHERE question = 'What does CSS stand for?')),
            ('Creative Style Sheets',
                (SELECT question_id FROM question WHERE question = 'What does CSS stand for?')),
            ('Width/Height properties',
                (SELECT question_id FROM question WHERE question = 'How do you change the size of an element?')),
            ('PageWidth/PageHeight properties',
                (SELECT question_id FROM question WHERE question = 'How do you change the size of an element?')),
            ('Page-Width/Page-Height properties',
                (SELECT question_id FROM question WHERE question = 'How do you change the size of an element?')),
            ('px/em/%',
                (SELECT question_id FROM question WHERE question = 'What is the correct syntax for the types of units can you use to change the size of an element?')),
            ('inches/centimeters/meters',
                (SELECT question_id FROM question WHERE question = 'What is the correct syntax for the types of units can you use to change the size of an element?')),
            ('pixels/points',
                (SELECT question_id FROM question WHERE question = 'What is the correct syntax for the types of units can you use to change the size of an element?')),
            ('picas/inches/millimeters',
                (SELECT question_id FROM question WHERE question = 'What is the correct syntax for the types of units can you use to change the size of an element?')),
            ('content --> padding --> border --> margin',
                (SELECT question_id FROM question WHERE question = 'What does the CSS box model look like from inner to outer?')),
            ('content --> margin --> border --> padding',
                (SELECT question_id FROM question WHERE question = 'What does the CSS box model look like from inner to outer?')),
            ('content --> border --> padding --> margin',
                (SELECT question_id FROM question WHERE question = 'What does the CSS box model look like from inner to outer?')),
            ('content --> border --> margin --> padding',
                (SELECT question_id FROM question WHERE question = 'What does the CSS box model look like from inner to outer?')),
            ('.classname',
                (SELECT question_id FROM question WHERE question = 'How do you select elements by class name?')),
            ('#classname',
                (SELECT question_id FROM question WHERE question = 'How do you select elements by class name?')),
            ('$classname',
                (SELECT question_id FROM question WHERE question = 'How do you select elements by class name?')),
            ('!classname',
                (SELECT question_id FROM question WHERE question = 'How do you select elements by class name?')),
            ('#idname',
                (SELECT question_id FROM question WHERE question = 'How do you select elements by id?')),
            ('.idname',
                (SELECT question_id FROM question WHERE question = 'How do you select elements by id?')),
            ('$idname',
                (SELECT question_id FROM question WHERE question = 'How do you select elements by id?')),
            ('!idname',
                (SELECT question_id FROM question WHERE question = 'How do you select elements by id?')),
            ('Class / ID / Element',
                (SELECT question_id FROM question WHERE question = 'What ways can you select elements by?')),
            ('Class / Element / Pseudo-Selectors',
                (SELECT question_id FROM question WHERE question = 'What ways can you select elements by?')),
            ('Only Class',
                (SELECT question_id FROM question WHERE question = 'What ways can you select elements by?')),
            ('Only ID',
                (SELECT question_id FROM question WHERE question = 'What ways can you select elements by?')),
            ('Changes the text color',
                (SELECT question_id FROM question WHERE question = 'What does the color property do?')),
            ('Changes the background color',
                (SELECT question_id FROM question WHERE question = 'What does the color property do?')),
            ('Changes the border color',
                (SELECT question_id FROM question WHERE question = 'What does the color property do?')),
            ('Changes the shadow color',
                (SELECT question_id FROM question WHERE question = 'What does the color property do?')),
            ('12',
                (SELECT question_id FROM question WHERE question = 'How many columns are in the bootstrap grid system?')),
            ('8',
                (SELECT question_id FROM question WHERE question = 'How many columns are in the bootstrap grid system?')),
            ('16',
                (SELECT question_id FROM question WHERE question = 'How many columns are in the bootstrap grid system?')),
            ('10',
                (SELECT question_id FROM question WHERE question = 'How many columns are in the bootstrap grid system?')),
            ('RGB / NAME(ex:blue) / RGBA / HEX',
                (SELECT question_id FROM question WHERE question = 'What are the different ways to address color?')),
            ('RGBAB / RGBA / RGB',
                (SELECT question_id FROM question WHERE question = 'What are the different ways to address color?')),
            ('ONLY NAME(ex:blue)',
                (SELECT question_id FROM question WHERE question = 'What are the different ways to address color?')),
            ('HEX / RGB',
                (SELECT question_id FROM question WHERE question = 'What are the different ways to address color?')),
            ('text-align: center',
                (SELECT question_id FROM question WHERE question = 'How do you center the text of an element?')),
            ('text-align-middle: true',
                (SELECT question_id FROM question WHERE question = 'How do you center the text of an element?')),
            ('text-align: middle',
                (SELECT question_id FROM question WHERE question = 'How do you center the text of an element?')),
            ('text-align-center: true',
                (SELECT question_id FROM question WHERE question = 'How do you center the text of an element?')),
            ('UP / RIGHT / DOWN / LEFT',
                (SELECT question_id FROM question WHERE question = 'What is the order of margin values? ex)margin: 0px 10px 20px 30px')),
            ('UP / DOWN / LEFT / RIGHT',
                (SELECT question_id FROM question WHERE question = 'What is the order of margin values? ex)margin: 0px 10px 20px 30px')),
            ('DOWN / UP / LEFT / RIGHT',
                (SELECT question_id FROM question WHERE question = 'What is the order of margin values? ex)margin: 0px 10px 20px 30px')),
            ('LEFT / DOWN / RIGHT / UP',
                (SELECT question_id FROM question WHERE question = 'What is the order of margin values? ex)margin: 0px 10px 20px 30px')),
            ('.b > .a',
                (SELECT question_id FROM question WHERE question = 'How do you select a direct child class(a) of another class(b)?')),
            ('#b > #a',
                (SELECT question_id FROM question WHERE question = 'How do you select a direct child class(a) of another class(b)?')),
            ('.b .a',
                (SELECT question_id FROM question WHERE question = 'How do you select a direct child class(a) of another class(b)?')),
            ('.b.a',
                (SELECT question_id FROM question WHERE question = 'How do you select a direct child class(a) of another class(b)?')),
            ('.a p',
                (SELECT question_id FROM question WHERE question = 'How do you select all child elements(p) of a class(a)?')),
            ('.ap',
                (SELECT question_id FROM question WHERE question = 'How do you select all child elements(p) of a class(a)?')),
            ('.a > p',
                (SELECT question_id FROM question WHERE question = 'How do you select all child elements(p) of a class(a)?')),
            ('p > .a',
                (SELECT question_id FROM question WHERE question = 'How do you select all child elements(p) of a class(a)?')),
            ('double-dashed',
                (SELECT question_id FROM question WHERE question = 'Which of these are not valid border styles?')),
            ('double',
                (SELECT question_id FROM question WHERE question = 'Which of these are not valid border styles?')),
            ('dashed',
                (SELECT question_id FROM question WHERE question = 'Which of these are not valid border styles?')),
            ('single',
                (SELECT question_id FROM question WHERE question = 'Which of these are not valid border styles?')),
            ('list-style-type: none',
                (SELECT question_id FROM question WHERE question = 'How do you remove the list-item marker from a list?')),
            ('no-list-style: type',
                (SELECT question_id FROM question WHERE question = 'How do you remove the list-item marker from a list?')),
            ('list: none',
                (SELECT question_id FROM question WHERE question = 'How do you remove the list-item marker from a list?')),
            ('list-style: none;',
                (SELECT question_id FROM question WHERE question = 'How do you remove the list-item marker from a list?')),
            ('pick',
                (SELECT question_id FROM question WHERE question = 'Which of these are not an example of a pseudo-selector?')),
            ('focus',
                (SELECT question_id FROM question WHERE question = 'Which of these are not an example of a pseudo-selector?')),
            ('hover',
                (SELECT question_id FROM question WHERE question = 'Which of these are not an example of a pseudo-selector?')),
            ('active',
                (SELECT question_id FROM question WHERE question = 'Which of these are not an example of a pseudo-selector?')),
            ('head',
                (SELECT question_id FROM question WHERE question = 'Where in an HTML document would you reference an external style sheet?')),
            ('header',
                (SELECT question_id FROM question WHERE question = 'Where in an HTML document would you reference an external style sheet?')),
            ('body',
                (SELECT question_id FROM question WHERE question = 'Where in an HTML document would you reference an external style sheet?')),
            ('main',
                (SELECT question_id FROM question WHERE question = 'Where in an HTML document would you reference an external style sheet?')),
            ('//',
                (SELECT question_id FROM question WHERE question = 'How do you create a comment?')),
            ('*/ /*',
                (SELECT question_id FROM question WHERE question = 'How do you create a comment?')),
            ('/*/ /*/',
                (SELECT question_id FROM question WHERE question = 'How do you create a comment?')),
            ('--',
                (SELECT question_id FROM question WHERE question = 'How do you create a comment?')),
            ('color',
                (SELECT question_id FROM question WHERE question = 'How do you change the color of an element?')),
            ('txt-color',
                (SELECT question_id FROM question WHERE question = 'How do you change the color of an element?')),
            ('text-color',
                (SELECT question_id FROM question WHERE question = 'How do you change the color of an element?')),
            ('t-color',
                (SELECT question_id FROM question WHERE question = 'How do you change the color of an element?'));
-- CSS CORRECT ANSWER
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Cascading Style Sheets' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What does CSS stand for?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'What does CSS stand for?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Width/Height properties' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you change the size of an element?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you change the size of an element?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'px/em/%' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is the correct syntax for the types of units can you use to change the size of an element?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'What is the correct syntax for the types of units can you use to change the size of an element?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'content --> padding --> border --> margin' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What does the CSS box model look like from inner to outer?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'What does the CSS box model look like from inner to outer?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '.classname' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you select elements by class name?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you select elements by class name?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '#idname' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you select elements by id?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you select elements by id?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Class / ID / Element' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What ways can you select elements by?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'What ways can you select elements by?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Changes the text color' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What does the color property do?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'What does the color property do?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '12' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How many columns are in the bootstrap grid system?') AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS'))
WHERE question = 'How many columns are in the bootstrap grid system?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'RGB / NAME(ex:blue) / RGBA / HEX' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What are the different ways to address color?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'What are the different ways to address color?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'text-align: center' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you center the text of an element?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you center the text of an element?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'UP / RIGHT / DOWN / LEFT' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is the order of margin values? ex)margin: 0px 10px 20px 30px' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'What is the order of margin values? ex)margin: 0px 10px 20px 30px';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '.b > .a' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you select a direct child class(a) of another class(b)?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you select a direct child class(a) of another class(b)?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '.a p' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you select all child elements(p) of a class(a)?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you select all child elements(p) of a class(a)?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'double-dashed' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'Which of these are not valid border styles?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'Which of these are not valid border styles?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'list-style-type: none' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you remove the list-item marker from a list?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you remove the list-item marker from a list?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'pick' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'Which of these are not an example of a pseudo-selector?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'Which of these are not an example of a pseudo-selector?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'head' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'Where in an HTML document would you reference an external style sheet?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'Where in an HTML document would you reference an external style sheet?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '//' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you create a comment?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you create a comment?';  
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'color' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you change the color of an element?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'CSS')))
WHERE question = 'How do you change the color of an element?';

-- JS QUESTIONS
INSERT INTO question (question, category_id, status_id)
    VALUES  ('What is JavaScript?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What are the JavaScript data types?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Which company developed JavaScript?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is not a way to declare a variable?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('The "this" keyword refers to the object it belongs to?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you create a comment?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you set a session variable?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Which of these is not a way to manage the flow of control?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is the difference between "==" and "==="?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Which of the following are not falsy values?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is TypeScript?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is the result of this statement? "this could happen" || "this could happen too"',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What the result of this statement? null && "random text"',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('I can dynamically add fields to objects?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('JavaScript variable declarations "let" and "const" allow for variable hoisting?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you set the type of a variable in TypeScript?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Is JavaScript multi-threaded or single-threaded?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Which of the following are not objects?',
                (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved'));
-- JS ANSWERS
INSERT INTO answer (answer, question_id)
    VALUES  ('An object oriented programming language that is single-threaded and is a functional programming language',
                (SELECT question_id FROM question WHERE question = 'What is JavaScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('Helps make the site look better through the use of a style sheet',
                (SELECT question_id FROM question WHERE question = 'What is JavaScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('Structures the way a site looks with tags and elements',
                (SELECT question_id FROM question WHERE question = 'What is JavaScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('number, string, boolean, null, undefined',
                (SELECT question_id FROM question WHERE question = 'What are the JavaScript data types?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('int, String, double',
                (SELECT question_id FROM question WHERE question = 'What are the JavaScript data types?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('number, double, null, int',
                (SELECT question_id FROM question WHERE question = 'What are the JavaScript data types?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('int String, double, boolean, null, undefined',
                (SELECT question_id FROM question WHERE question = 'What are the JavaScript data types?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('int',
                (SELECT question_id FROM question WHERE question = 'What is not a way to declare a variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('let',
                (SELECT question_id FROM question WHERE question = 'What is not a way to declare a variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('const',
                (SELECT question_id FROM question WHERE question = 'What is not a way to declare a variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('var',
                (SELECT question_id FROM question WHERE question = 'What is not a way to declare a variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('TRUE',
                (SELECT question_id FROM question WHERE question = 'The "this" keyword refers to the object it belongs to?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('FALSE',
                (SELECT question_id FROM question WHERE question = 'The "this" keyword refers to the object it belongs to?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
           ('//',
                (SELECT question_id FROM question WHERE question = 'How do you create a comment?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('*/ /*',
                (SELECT question_id FROM question WHERE question = 'How do you create a comment?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('/*/ /*/',
                (SELECT question_id FROM question WHERE question = 'How do you create a comment?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('--',
                (SELECT question_id FROM question WHERE question = 'How do you create a comment?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('sessionStorage.setItem()',
                (SELECT question_id FROM question WHERE question = 'How do you set a session variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('sessionStorage.getItem()',
                (SELECT question_id FROM question WHERE question = 'How do you set a session variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('session.setItem()',
                (SELECT question_id FROM question WHERE question = 'How do you set a session variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('this.session.setItem()',
                (SELECT question_id FROM question WHERE question = 'How do you set a session variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('if - then - else',
                (SELECT question_id FROM question WHERE question = 'Which of these is not a way to manage the flow of control?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('if - else if - else',
                (SELECT question_id FROM question WHERE question = 'Which of these is not a way to manage the flow of control?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('do-while loop',
                (SELECT question_id FROM question WHERE question = 'Which of these is not a way to manage the flow of control?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('for loop',
                (SELECT question_id FROM question WHERE question = 'Which of these is not a way to manage the flow of control?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('"==" compares the values without type coercion and "===" compares the values in memory',
                (SELECT question_id FROM question WHERE question = 'What is the difference between "==" and "==="?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('"==" compares the values in memory and "===" compares the values without type coercion',
                (SELECT question_id FROM question WHERE question = 'What is the difference between "==" and "==="?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('"==" sets values while "===" compares values',
                (SELECT question_id FROM question WHERE question = 'What is the difference between "==" and "==="?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('"===" does not exist in JavaScript',
                (SELECT question_id FROM question WHERE question = 'What is the difference between "==" and "==="?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('[]',
                (SELECT question_id FROM question WHERE question = 'Which of the following are not falsy values?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('null',
                (SELECT question_id FROM question WHERE question = 'Which of the following are not falsy values?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('0',
                (SELECT question_id FROM question WHERE question = 'Which of the following are not falsy values?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('""',
                (SELECT question_id FROM question WHERE question = 'Which of the following are not falsy values?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('JavaScript plus. Introduces types and abstract classes/interfaces',
                (SELECT question_id FROM question WHERE question = 'What is TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('Adds styling to JavaScript which allows you to style your pages',
                (SELECT question_id FROM question WHERE question = 'What is TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('Only introduces types to JavaScript, not anything else',
                (SELECT question_id FROM question WHERE question = 'What is TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('"this could happen too"',
                (SELECT question_id FROM question WHERE question = 'What is the result of this statement? "this could happen" || "this could happen too"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('[]',
                (SELECT question_id FROM question WHERE question = 'What is the result of this statement? "this could happen" || "this could happen too"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('Object Object',
                (SELECT question_id FROM question WHERE question = 'What is the result of this statement? "this could happen" || "this could happen too"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('"this could happen"',
                (SELECT question_id FROM question WHERE question = 'What is the result of this statement? "this could happen" || "this could happen too"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('"random text"',
                (SELECT question_id FROM question WHERE question = 'What the result of this statement? null && "random text"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('null',
                (SELECT question_id FROM question WHERE question = 'What the result of this statement? null && "random text"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('NullPointerException',
                (SELECT question_id FROM question WHERE question = 'What the result of this statement? null && "random text"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('String',
                (SELECT question_id FROM question WHERE question = 'What the result of this statement? null && "random text"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('TRUE',
                (SELECT question_id FROM question WHERE question = 'I can dynamically add fields to objects?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('FALSE',
                (SELECT question_id FROM question WHERE question = 'I can dynamically add fields to objects?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('FALSE',
                (SELECT question_id FROM question WHERE question = 'JavaScript variable declarations "let" and "const" allow for variable hoisting?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('TRUE',
                (SELECT question_id FROM question WHERE question = 'JavaScript variable declarations "let" and "const" allow for variable hoisting?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('let x: number',
                (SELECT question_id FROM question WHERE question = 'How do you set the type of a variable in TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('let x-number',
                (SELECT question_id FROM question WHERE question = 'How do you set the type of a variable in TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('let x::number',
                (SELECT question_id FROM question WHERE question = 'How do you set the type of a variable in TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('let number:x',
                (SELECT question_id FROM question WHERE question = 'How do you set the type of a variable in TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('Single Threaded',
                (SELECT question_id FROM question WHERE question = 'Is JavaScript multi-threaded or single-threaded?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('Multi-Threaded',
                (SELECT question_id FROM question WHERE question = 'Is JavaScript multi-threaded or single-threaded?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('NaN',
                (SELECT question_id FROM question WHERE question = 'Which of the following are not objects?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('[]',
                (SELECT question_id FROM question WHERE question = 'Which of the following are not objects?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript'))),
            ('{}',
                (SELECT question_id FROM question WHERE question = 'Which of the following are not objects?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')));
-- JS CORRECT ANSWER
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'An object oriented programming language that is single-threaded and is a functional programming language' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is JavaScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'What is JavaScript?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'number, string, boolean, null, undefined' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What are the JavaScript data types?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'What are the JavaScript data types?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'int' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is not a way to declare a variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'What is not a way to declare a variable?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'TRUE' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'The "this" keyword refers to the object it belongs to?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'The "this" keyword refers to the object it belongs to?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '//' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you create a comment?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'How do you create a comment?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'sessionStorage.setItem()' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you set a session variable?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'How do you set a session variable?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'if - then - else' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'Which of these is not a way to manage the flow of control?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'Which of these is not a way to manage the flow of control?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '"==" compares the values without type coercion and "===" compares the values in memory' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is the difference between "==" and "==="?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'What is the difference between "==" and "==="?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '[]' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'Which of the following are not falsy values?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'Which of the following are not falsy values?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'JavaScript plus. Introduces types and abstract classes/interfaces' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'What is TypeScript?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '"this could happen too"' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is the result of this statement? "this could happen" || "this could happen too"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'What is the result of this statement? "this could happen" || "this could happen too"';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = '"random text"' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What the result of this statement? null && "random text"' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'What the result of this statement? null && "random text"';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'TRUE' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'I can dynamically add fields to objects?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'I can dynamically add fields to objects?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'FALSE' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'JavaScript variable declarations "let" and "const" allow for variable hoisting?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'JavaScript variable declarations "let" and "const" allow for variable hoisting?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'let x: number' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you set the type of a variable in TypeScript?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'How do you set the type of a variable in TypeScript?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Single Threaded' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'Is JavaScript multi-threaded or single-threaded?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'Is JavaScript multi-threaded or single-threaded?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'NaN' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'Which of the following are not objects?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'JavaScript')))
WHERE question = 'Which of the following are not objects?';


-- DATA STRUCTURE/ALGORITHMS QUESTIONS
INSERT INTO question (question, category_id, status_id)
    VALUES  ('What are data structures?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What are some examples of data structures?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How does an array list differ from an array?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('In a linked list, what is contained within a node?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What makes a hash set different from a tree set?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is a Deque?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is a map?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('When would you use a linked list?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('Does a queue have LIFO ordering?',
                (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved'));
            -- ('What are some characteristics that a tree has?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('What are some characteristics that a binary tree has?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('What is meant by "Depth First Search"?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('How does a "Depth First Search" differ from "Breadth First Search"?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('How do you make a 2D array?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('What is Big O Notation?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('How does spatial complexity differ from temporal complexity?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('In regards to Big O, what''s the best case scenario?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('What is an algorithm?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('What is recursion?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            -- ('Recursive answers would be an alternative to what?',
            --     (SELECT category_id FROM question_category WHERE category_name = 'Algorithms'),
            --     (SELECT status_id FROM question_status WHERE status_name = 'Approved'));
-- DATA STRUCTURE/ALGORITHMS ANSWERS
INSERT INTO answer (answer, question_id)
    VALUES  ('Different ways of organizing and storing data',
               (SELECT question_id FROM question WHERE question = 'What are data structures?')),
            ('Different ways of storing and retrieving data',
                (SELECT question_id FROM question WHERE question = 'What are data structures?')),
            ('Different ways of organizing and manipulating data',
                (SELECT question_id FROM question WHERE question = 'What are data structures?')),
            ('Sets of rules for organizing data',
                (SELECT question_id FROM question WHERE question = 'What are data structures?')),
            ('Array lists, Arrays, Tree sets, and queues',
                (SELECT question_id FROM question WHERE question = 'What are some examples of data structures?')),
            ('The heap, the stack, and the callback queue',
                (SELECT question_id FROM question WHERE question = 'What are some examples of data structures?')),
            ('Arrays, Array lists, and Array sets',
                (SELECT question_id FROM question WHERE question = 'What are some examples of data structures?')),
            ('Hash set, Tree set, and Linked set',
                (SELECT question_id FROM question WHERE question = 'What are some examples of data structures?')),
            ('An array is constant in size, while an array list is dynamically sizing',
                (SELECT question_id FROM question WHERE question = 'How does an array list differ from an array?')),
            ('An array has an index, an array list does not',
                (SELECT question_id FROM question WHERE question = 'How does an array list differ from an array?')),
            ('Array lists are better at adding elements to the middle',
                (SELECT question_id FROM question WHERE question = 'How does an array list differ from an array?')),
            ('Arrays are worse at quickly accessing items by index',
                (SELECT question_id FROM question WHERE question = 'How does an array list differ from an array?')),
            ('The node contains the object representation of data, as well as a reference to the next node',
                (SELECT question_id FROM question WHERE question = 'In a linked list, what is contained within a node?')),
            ('The node has both an object and all variables that reference that object',
                (SELECT question_id FROM question WHERE question = 'In a linked list, what is contained within a node?')),
            ('A node contains all of the states and behaviors of a class',
                (SELECT question_id FROM question WHERE question = 'In a linked list, what is contained within a node?')),
            ('A node has each subsequent form of a given overridden method',
                (SELECT question_id FROM question WHERE question = 'In a linked list, what is contained within a node?')),
            ('A Hash Set must contain unique items, while a Tree set must contain ordered items',
                (SELECT question_id FROM question WHERE question = 'What makes a hash set different from a tree set?')),
            ('A Hash Set must contain ordered items, while a Tree set must contain unique items',
                (SELECT question_id FROM question WHERE question = 'What makes a hash set different from a tree set?')),
            ('A Hash Set contains classes, while a Tree set contains interfaces',
                (SELECT question_id FROM question WHERE question = 'What makes a hash set different from a tree set?')),
            ('A Hash Set contains interfaces, while a Tree set contains classes',
                (SELECT question_id FROM question WHERE question = 'What makes a hash set different from a tree set?')),
            ('A Deque is a double-ended queue. Elements can be added or removed from either the head or the tail',
                (SELECT question_id FROM question WHERE question = 'What is a Deque?')),
            ('A Deque is a dangerously-elastic queue. It only resizes in large quantites to accomodate large chunck of data',
                (SELECT question_id FROM question WHERE question = 'What is a Deque?')),
            ('A deque is a double-ended queue. Elements at the end can swap positions. ',
                (SELECT question_id FROM question WHERE question = 'What is a Deque?')),
            ('A Deque is a double-entendre queue. This might not be safe for work',
                (SELECT question_id FROM question WHERE question = 'What is a Deque?')),
            ('A Map is an object that maps unique keys to values',
                (SELECT question_id FROM question WHERE question = 'What is a map?')),
            ('A Map is a class that guides users through a data structure',
                (SELECT question_id FROM question WHERE question = 'What is a map?')),
            ('A Map allows you to travel through the history of an application.',
                (SELECT question_id FROM question WHERE question = 'What is a map?')),
            ('A map is an object that maps variables to the object they reference',
                (SELECT question_id FROM question WHERE question = 'What is a map?')),
            ('You would use a linked list when you want to add or remove elements to the middle of the list',
                (SELECT question_id FROM question WHERE question = 'When would you use a linked list?')),
            ('You would use a linked list when you need to access elements quickly',
                (SELECT question_id FROM question WHERE question = 'When would you use a linked list?')),
            ('You would use a linked list when you need to order elements',
                (SELECT question_id FROM question WHERE question = 'When would you use a linked list?')),
            ('You would use a linked list when you want to have unique elements',
                (SELECT question_id FROM question WHERE question = 'When would you use a linked list?')),
            ('FALSE',
                (SELECT question_id FROM question WHERE question = 'Does a queue have LIFO ordering?')),
            ('TRUE',
                (SELECT question_id FROM question WHERE question = 'Does a queue have LIFO ordering?'));
            -- ('A Tree is a non-linear data structure where data objects are organized in terms of hierarchical relationship',
            --     (SELECT question_id FROM question WHERE question = 'What are some characteristics that a tree has?')),
            -- ('A Tree is a non-linear data structure where data objects are organized in terms of spatial complexity',
            --     (SELECT question_id FROM question WHERE question = 'What are some characteristics that a tree has?')),
            -- ('A Tree is a non-linear data structure where data objects are organized in terms of temporal complexity',
            --     (SELECT question_id FROM question WHERE question = 'What are some characteristics that a tree has?')),
            -- ('A Tree is a linear data structure where data objects are organized in terms of hierarchical relationship',
            --     (SELECT question_id FROM question WHERE question = 'What are some characteristics that a tree has?')),
            -- ('A binary tree is a tree data structure in which each node has at most two child nodes, usually distinguished as "left" and "right"',
            --     (SELECT question_id FROM question WHERE question = 'What are some characteristics that a binary tree has?')),
            -- ('A binary tree is a tree data structure in which each node has at most two child nodes, usually distinguished as "top" and "bottom"',
            --     (SELECT question_id FROM question WHERE question = 'What are some characteristics that a binary tree has?')),
            -- ('A binary tree is a tree data structure in which each node has at most two child nodes, usually distinguished as "abstract" and "concrete"',
            --     (SELECT question_id FROM question WHERE question = 'What are some characteristics that a binary tree has?')),
            -- ('A binary tree is a tree data structure in which two nodes share a child node',
            --     (SELECT question_id FROM question WHERE question = 'What are some characteristics that a binary tree has?')),
            -- ('A search that begins at the root node and then traverses down the left-most branch. Once it hits the end, the search continues in the next branch',
            --     (SELECT question_id FROM question WHERE question = 'What is meant by "Depth First Search"?')),
            -- ('A search that begins at the root node and then traverses down the right-most branch. Once it hits the end, the search continues in the next branch',
            --     (SELECT question_id FROM question WHERE question = 'What is meant by "Depth First Search"?')),
            -- ('A search that begins at the bottom-most node and then traverses up the left branch. Once it hits the top, the search continues in the next branch',
            --     (SELECT question_id FROM question WHERE question = 'What is meant by "Depth First Search"?')),
            -- ('A search that begins at the bottom-most node and then traverses up the right branch. Once it hits the top, the search continues in the next branch',
            --     (SELECT question_id FROM question WHERE question = 'What is meant by "Depth First Search"?')),
            -- ('Depth First Search searches laterally, while Breadth First Search searches horizontally along a tree',
            --     (SELECT question_id FROM question WHERE question = 'How does a "Depth First Search" differ from "Breadth First Search"?')),
            -- ('Depth First Search searches horizontally, while Breadth First Search searches vertically along a tree',
            --     (SELECT question_id FROM question WHERE question = 'How does a "Depth First Search" differ from "Breadth First Search"?')),
            -- ('Depth First Search starts at the root node, while Breadth First Search starts at the furthest child node',
            --     (SELECT question_id FROM question WHERE question = 'How does a "Depth First Search" differ from "Breadth First Search"?')),
            -- ('Depth First Search starts at the furthest child node, while Breadth First Search starts at the root node',
            --     (SELECT question_id FROM question WHERE question = 'How does a "Depth First Search" differ from "Breadth First Search"?')),
            -- ('int[][] twoD_arr = new int[5][10];',
            --     (SELECT question_id FROM question WHERE question = 'How do you make a 2D array?')),
            -- ('int[][] twoD_arr = int[5][10];',
            --     (SELECT question_id FROM question WHERE question = 'How do you make a 2D array?')),
            -- ('[][] twoD_arr = new int[5][10];',
            --     (SELECT question_id FROM question WHERE question = 'How do you make a 2D array?')),
            -- ('int[] twoD_arr = new int[5][10];',
            --     (SELECT question_id FROM question WHERE question = 'How do you make a 2D array?')),
            -- ('Big O notation is notation that describes the performance or complexity of an algorithm',
            --     (SELECT question_id FROM question WHERE question = 'What is Big O Notation?')),
            -- ('Big O notation is notation that describes only the performance',
            --     (SELECT question_id FROM question WHERE question = 'What is Big O Notation?')),
            -- ('Big O notation is notation that describes only the complexity of an algorithm',
            --     (SELECT question_id FROM question WHERE question = 'What is Big O Notation?')),
            -- ('Big O notation is notation that describes the error rate of an algorithm',
            --     (SELECT question_id FROM question WHERE question = 'What is Big O Notation?')),
            -- ('Spatial complexity regards the amount of storage an algorithm needs, while Time complexity describes the time needed to run an algorithm',
            --     (SELECT question_id FROM question WHERE question = 'How does spatial complexity differ from Time complexity?')),
            -- ('Spatial complexity is measured with Big O, while Time complexity is not',
            --     (SELECT question_id FROM question WHERE question = 'How does spatial complexity differ from Time complexity?')),
            -- ('Spatial complexity is not measured with Big O, while Time complexity is',
            --     (SELECT question_id FROM question WHERE question = 'How does spatial complexity differ from Time complexity?')),
            -- ('Spatial complexity regards the amount of storage a logging report needs, while Time complexity describes the time needed to perform test suite',
            --     (SELECT question_id FROM question WHERE question = 'How does spatial complexity differ from Time complexity?')),
            -- ('The best case is O(1)',
            --     (SELECT question_id FROM question WHERE question = 'In regards to Big O, what''s the best case scenario?')),
            -- ('The best case is O(logn)',
            --     (SELECT question_id FROM question WHERE question = 'In regards to Big O, what''s the best case scenario?')),
            -- ('The best case is O(n^2)',
            --     (SELECT question_id FROM question WHERE question = 'In regards to Big O, what''s the best case scenario?')),
            -- ('The best case is O(n)',
            --     (SELECT question_id FROM question WHERE question = 'In regards to Big O, what''s the best case scenario?')),
            -- ('A process or set of rules to be followed in calculations or other problem-solving operations',
            --     (SELECT question_id FROM question WHERE question = 'What is an algorithm?')),
            -- ('A computer program',
            --     (SELECT question_id FROM question WHERE question = 'What is an algorithm?')),
            -- ('A process or set of rules to be followed in trying to debug code',
            --     (SELECT question_id FROM question WHERE question = 'What is an algorithm?')),
            -- ('A block of code that performs an action',
            --     (SELECT question_id FROM question WHERE question = 'What is an algorithm?')),
            -- ('Performing a repeated action by having a method call itself continuously',
            --     (SELECT question_id FROM question WHERE question = 'What is recursion?')),
            -- ('Performing a series of actions by having a method call other methods from within the same class',
            --     (SELECT question_id FROM question WHERE question = 'What is recursion?')),
            -- ('Iterating through an array',
            --     (SELECT question_id FROM question WHERE question = 'What is recursion?')),
            -- ('Performing a repeated action by having a method call other methods continuously',
            --     (SELECT question_id FROM question WHERE question = 'What is recursion?')),
            -- ('Loop statements',
            --     (SELECT question_id FROM question WHERE question = 'Recursive answers would be an alternative to what?')),
            -- ('Logical statements',
            --     (SELECT question_id FROM question WHERE question = 'Recursive answers would be an alternative to what?')),
            -- ('Mathematical statements',
            --     (SELECT question_id FROM question WHERE question = 'Recursive answers would be an alternative to what?')),
            -- ('Recursive answers are not really an alternative to anything and are not particularly useful',
            --     (SELECT question_id FROM question WHERE question = 'Recursive answers would be an alternative to what?');
-- DATA STRUCTURES / ALGORITHMS CORRECT ANSWER
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Different ways of organizing and storing data' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What are data structures?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'What are data structures?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Array lists, Arrays, Tree sets, and queues' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What are some examples of data structures?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'What are some examples of data structures?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'An array is constant in size, while an array list is dynamically sizing' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How does an array list differ from an array?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'How does an array list differ from an array?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'The node contains the object representation of data, as well as a reference to the next node' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'In a linked list, what is contained within a node?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'In a linked list, what is contained within a node?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'A Hash Set must contain unique items, while a Tree set must contain ordered items' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What makes a hash set different from a tree set?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'What makes a hash set different from a tree set?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'A Deque is a double-ended queue. Elements can be added or removed from either the head or the tail' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is a Deque?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'What is a Deque?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'A Map is an object that maps unique keys to values' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is a map?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'What is a map?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'You would use a linked list when you want to add or remove elements to the middle of the list' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'When would you use a linked list?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'When would you use a linked list?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'FALSE' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'Does a queue have LIFO ordering?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Algorithms')))
WHERE question = 'Does a queue have LIFO ordering?';


-- NODE QUESTIONS
INSERT INTO question(question, category_id, status_id)
    VALUES  ('What is node?',
                (SELECT category_id FROM question_category WHERE category_name = 'Node'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What can we do with node?',
                (SELECT category_id FROM question_category WHERE category_name = 'Node'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What does NPM stand for?',
                (SELECT category_id FROM question_category WHERE category_name = 'Node'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What does NPM do for us?',
                (SELECT category_id FROM question_category WHERE category_name = 'Node'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What does the command "npm install" do?',
                (SELECT category_id FROM question_category WHERE category_name = 'Node'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What technology is node built on?',
                (SELECT category_id FROM question_category WHERE category_name = 'Node'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is package.json?',
                (SELECT category_id FROM question_category WHERE category_name = 'Node'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved'));
-- NODE ANSWERS
INSERT INTO answer (answer, question_id)
    VALUES  ('An open-source, cross-platform, runtime environment for JavaScript',
                (SELECT question_id FROM question WHERE question = 'What is node?')),
            ('A dynamic JavaScript IDE',
                (SELECT question_id FROM question WHERE question = 'What is node?')),
            ('A JavaScript server',
                (SELECT question_id FROM question WHERE question = 'What is node?')),
            ('A programming language like JavaScript',
                (SELECT question_id FROM question WHERE question = 'What is node?')),
            ('It allows JavaScript to be used outside of Web Browsers, for creating web and network applications',
                (SELECT question_id FROM question WHERE question = 'What can we do with node?')),
            ('It resolves dependencies in a project',
                (SELECT question_id FROM question WHERE question = 'What can we do with node?')),
            ('It compiles JavaScript',
                (SELECT question_id FROM question WHERE question = 'What can we do with node?')),
            ('It allows me to create a new node in my project',
                (SELECT question_id FROM question WHERE question = 'What can we do with node?')),
            ('Node Package Manager',
                (SELECT question_id FROM question WHERE question = 'What does NPM stand for?')),
            ('Node Program Manager',
                (SELECT question_id FROM question WHERE question = 'What does NPM stand for?')),
            ('Node Program Module',
                (SELECT question_id FROM question WHERE question = 'What does NPM stand for?')),
            ('Node Program Merger',
                (SELECT question_id FROM question WHERE question = 'What does NPM stand for?')),
            ('It provides access to hundreds of thousands of reusable packages',
                (SELECT question_id FROM question WHERE question = 'What does NPM do for us?')),
            ('It compiles JavaScript',
                (SELECT question_id FROM question WHERE question = 'What does NPM do for us?')),
            ('It makes it possible for JavaScript to run in a browser',
                (SELECT question_id FROM question WHERE question = 'What does NPM do for us?')),
            ('It turns JavaScript into TypeScript',
                (SELECT question_id FROM question WHERE question = 'What does NPM do for us?')),
            ('It installs all modules that are listed in the package.json file and their dependencies',
                (SELECT question_id FROM question WHERE question = 'What does the command "npm install" do?')),
            ('It installs JavaScript',
                (SELECT question_id FROM question WHERE question = 'What does the command "npm install" do?')),
            ('It installs all of the node dependencies',
                (SELECT question_id FROM question WHERE question = 'What does the command "npm install" do?')),
            ('It installs npm and its dependencies',
                (SELECT question_id FROM question WHERE question = 'What does the command "npm install" do?')),
            ('V8 JavaScript runtime',
                (SELECT question_id FROM question WHERE question = 'What technology is node built on?')),
            ('Chrome',
                (SELECT question_id FROM question WHERE question = 'What technology is node built on?')),
            ('Node express',
                (SELECT question_id FROM question WHERE question = 'What technology is node built on?')),
            ('V8',
                (SELECT question_id FROM question WHERE question = 'What technology is node built on?')),
            ('It is a file that contains all of a project''s dependencies',
                (SELECT question_id FROM question WHERE question = 'What is package.json?')),
            ('It stores all of the project build files',
                (SELECT question_id FROM question WHERE question = 'What is package.json?')),
            ('It stores the project source files',
                (SELECT question_id FROM question WHERE question = 'What is package.json?')),
            ('It stores the project object files',
                (SELECT question_id FROM question WHERE question = 'What is package.json?'));
-- NODE CORRECT ANSWER
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'An open-source, cross-platform, runtime environment for JavaScript' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is node?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Node')))
WHERE question = 'What is node?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'It allows JavaScript to be used outside of Web Browsers, for creating web and network applications' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What can we do with node?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Node')))
WHERE question = 'What can we do with node?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Node Package Manager' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What does NPM stand for?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Node')))
WHERE question = 'What does NPM stand for?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'It installs all modules that are listed in the package.json file and their dependencies' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What does the command "npm install" do?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Node')))
WHERE question = 'What does the command "npm install" do?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'V8 JavaScript runtime' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What technology is node built on?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Node')))
WHERE question = 'What technology is node built on?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'It is a file that contains all of a project''s dependencies' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is package.json?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Node')))
WHERE question = 'What is package.json?';

-- EXPRESS QUESTIONS
INSERT INTO question (question, category_id, status_id)
    VALUES  ('What is express?',
                (SELECT category_id FROM question_category WHERE category_name = 'Express'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is an express application comprised of?',
                (SELECT category_id FROM question_category WHERE category_name = 'Express'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is middleware?',
                (SELECT category_id FROM question_category WHERE category_name = 'Express'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What is next() used for?',
                (SELECT category_id FROM question_category WHERE category_name = 'Express'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('What types of middleware can an express application use?',
                (SELECT category_id FROM question_category WHERE category_name = 'Express'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
            ('How do you load router-level middleware?',
                (SELECT category_id FROM question_category WHERE category_name = 'Express'),
                (SELECT status_id FROM question_status WHERE status_name = 'Approved'));
-- EXPRESS ANSWERS
INSERT INTO answer (answer, question_id)
    VALUES  ('It is a routing and middleware web framework',
                (SELECT question_id FROM question WHERE question = 'What is express?')),
            ('It is a JavaScript server',
                (SELECT question_id FROM question WHERE question = 'What is express?')),
            ('It is a TypeScript server',
                (SELECT question_id FROM question WHERE question = 'What is express?')),
            ('It is a middleware compiler',
                (SELECT question_id FROM question WHERE question = 'What is express?')),
            ('A series of middleware function calls',
                (SELECT question_id FROM question WHERE question = 'What is an express application comprised of?')),
            ('JavaScript files',
                (SELECT question_id FROM question WHERE question = 'What is an express application comprised of?')),
            ('TypeScript files',
                (SELECT question_id FROM question WHERE question = 'What is an express application comprised of?')),
            ('Asynchronous function calls',
                (SELECT question_id FROM question WHERE question = 'What is an express application comprised of?')),
            ('A series of functions that have access to the request object (req), the response object (res), and the next middleware function in the application''s request-response cycle',
                (SELECT question_id FROM question WHERE question = 'What is middleware?')),
            ('A series of software components necessary for server creation',
                (SELECT question_id FROM question WHERE question = 'What is middleware?')),
            ('A single function that can communicate with the server',
                (SELECT question_id FROM question WHERE question = 'What is middleware?')),
            ('A series of components that connect JavaScript to a database',
                (SELECT question_id FROM question WHERE question = 'What is middleware?')),
            ('If the current middleware function does not end the request-response cycle, it must call next() to pass control to the next middleware function',
                (SELECT question_id FROM question WHERE question = 'What is next() used for?')),
            ('It creates the next connection to the database',
                (SELECT question_id FROM question WHERE question = 'What is next() used for?')),
            ('It creates the next connection to the server',
                (SELECT question_id FROM question WHERE question = 'What is next() used for?')),
            ('It creates the next session instance',
                (SELECT question_id FROM question WHERE question = 'What is next() used for?')),
            ('Application-level middleware, Router-level middleware, Error-handling middleware, Built-in middleware, Third-party middleware',
                (SELECT question_id FROM question WHERE question = 'What types of middleware can an express application use?')),
            ('Application-level middleware, Router-level middleware, Exception-handling middleware, JavaScript middleware, Third-party middleware',
                (SELECT question_id FROM question WHERE question = 'What types of middleware can an express application use?')),
            ('Only express middleware',
                (SELECT question_id FROM question WHERE question = 'What types of middleware can an express application use?')),
            ('Only node middleware',
                (SELECT question_id FROM question WHERE question = 'What types of middleware can an express application use?')),
            ('By using the router.use() and router.METHOD() functions',
                (SELECT question_id FROM question WHERE question = 'How do you load router-level middleware?')),
            ('By using the router.start() and router.load() functions',
                (SELECT question_id FROM question WHERE question = 'How do you load router-level middleware?')),
            ('By using the router.initalize() function',
                (SELECT question_id FROM question WHERE question = 'How do you load router-level middleware?')),
            ('By using the router.use() function',
                (SELECT question_id FROM question WHERE question = 'How do you load router-level middleware?'));
-- EXPRESS CORRECT ANSWER
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'It is a routing and middleware web framework' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is express?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Express')))
WHERE question = 'What is express?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'A series of middleware function calls' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is an express application comprised of?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Express')))
WHERE question = 'What is an express application comprised of?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'A series of functions that have access to the request object (req), the response object (res), and the next middleware function in the application''s request-response cycle' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is middleware?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Express')))
WHERE question = 'What is middleware?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'If the current middleware function does not end the request-response cycle, it must call next() to pass control to the next middleware function' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What is next() used for?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Express')))
WHERE question = 'What is next() used for?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'Application-level middleware, Router-level middleware, Error-handling middleware, Built-in middleware, Third-party middleware' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'What types of middleware can an express application use?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Express')))
WHERE question = 'What types of middleware can an express application use?';
UPDATE question
SET correct_answer = (SELECT answer_id FROM answer WHERE answer = 'By using the router.use() and router.METHOD() functions' AND question_id = 
    (SELECT question_id FROM question WHERE question = 'How do you load router-level middleware?' AND category_id = (SELECT category_id FROM question_category WHERE category_name = 'Express')))
WHERE question = 'How do you load router-level middleware?';

-- -- REACT QUESTIONS
-- INSERT INTO questions (question, category_id, status_id)
--     VALUES  ('What is React?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is a SPA?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is a pure function?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is JSX/TSX?  What is a JSX template?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is a component?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What are properties? ?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is state in react ?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is a lifecycle?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is the render method?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is React Router?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is the Controller-View pattern?',
--                 SELECT category_id FROM question_category WHERE category_name = 'React',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved'));

-- -- REACT ANSWERS
-- INSERT INTO answer (answer, question_id)
--     VALUES  

-- -- REDUX QUESTIONS    
-- INSERT INTO questions (question, category_id, status_id)
--     VALUES  ('What is a mock ?',
--                 SELECT category_id FROM question_category WHERE category_name = 'Redux',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is a stub ?',
--                 SELECT category_id FROM question_category WHERE category_name = 'Redux',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('In unit testing, what is a dependency?',
--                 SELECT category_id FROM question_category WHERE category_name = 'Redux',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('Is Jest only for client side testing ?',
--                 SELECT category_id FROM question_category WHERE category_name = 'Redux',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is the describe method used to do ?',
--                 SELECT category_id FROM question_category WHERE category_name = 'Redux',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is ‘expect’ used to do?',
--                 SELECT category_id FROM question_category WHERE category_name = 'Redux',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('What is Enzyme?',
--                 SELECT category_id FROM question_category WHERE category_name = 'Redux',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
--             ('Why do we need Enzyme ?',
--                 SELECT category_id FROM question_category WHERE category_name = 'Redux',
--                 (SELECT status_id FROM question_status WHERE status_name = 'Approved')),
-- -- REDUX ANSWERS
-- INSERT INTO answer (answer, question_id)
--     VALUES  