import React, { Component } from 'react';
import { Button, Card, CardText, CardTitle, Col, Container, Row } from 'reactstrap';

interface IState {
    quiz: any[],
    pageNumber: number
}


export default class QuizStartComponent extends Component<{}, IState>  {

    constructor(props: any) {
        super(props);
        this.state = {
            quiz: [],
            pageNumber: 1
        }
    }

    async componentDidMount() {
        // const categoryName = 'HTML';
        //     const resp = await fetch(`http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/questions/category/${categoryName}`, {
        //         credentials: 'include'
        //     });
        //     const questionsFromServer = await resp.json();
        const questionsFromServer =
            [
                {
                    "questionId": 6,
                    "question": "How many elements can you add the class of \"custom-class\"?",
                    "correctAnswer": {
                        "answerId": 21,
                        "answer": "As many as you want",
                        "questionId": {}
                    },
                    "categoryId": {
                        "categoryId": 1,
                        "categoryName": "HTML"
                    },
                    "statusId": {
                        "statusId": 2,
                        "statusName": "Approved"
                    }
                },
                {
                    "questionId": 7,
                    "question": "What is the format for creating a div element in JavaScript?",
                    "correctAnswer": {
                        "answerId": 25,
                        "answer": "document.createElement('div')",
                        "questionId": {}
                    },
                    "categoryId": {
                        "categoryId": 1,
                        "categoryName": "HTML"
                    },
                    "statusId": {
                        "statusId": 2,
                        "statusName": "Approved"
                    }
                },
                {
                    "questionId": 8,
                    "question": "What does DOM stand for?",
                    "correctAnswer": {
                        "answerId": 29,
                        "answer": "Document Object Model",
                        "questionId": {}
                    },
                    "categoryId": {
                        "categoryId": 1,
                        "categoryName": "HTML"
                    },
                    "statusId": {
                        "statusId": 2,
                        "statusName": "Approved"
                    }
                },
                {
                    "questionId": 9,
                    "question": "What is a meta tag used for?",
                    "correctAnswer": {
                        "answerId": 33,
                        "answer": "Specify information about the page such as author or keywords",
                        "questionId": {}
                    },
                    "categoryId": {
                        "categoryId": 1,
                        "categoryName": "HTML"
                    },
                    "statusId": {
                        "statusId": 2,
                        "statusName": "Approved"
                    }
                },
                {
                    "questionId": 10,
                    "question": "Which of these is valid list syntax for creating an ordered list?",
                    "correctAnswer": {
                        "answerId": 37,
                        "answer": "<ol> <li>Item 1</li> <li>Item 2</li> <li>Item 3</li> </ol>",
                        "questionId": {}
                    },
                    "categoryId": {
                        "categoryId": 1,
                        "categoryName": "HTML"
                    },
                    "statusId": {
                        "statusId": 2,
                        "statusName": "Approved"
                    }
                }
            ]
        let quiz: any[] = [];
        console.log(questionsFromServer);
        for (let i = 0; i < questionsFromServer.length; i++) {
            const questionId = questionsFromServer[i].questionId;
            const answerResponse = await fetch(`http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/answers/question/${questionId}`, {
                credentials: 'include'
            });
            const answersFromServer = await answerResponse.json();
            const quizCard = {
                question: questionsFromServer[i],
                answersFromServer
            }
            quiz.push(quizCard);
            this.setState({
                quiz
            })
        }
    }

    render() {
        const quiz = this.state.quiz;
        const currentQuestion = quiz[this.state.pageNumber - 1];
        console.log(currentQuestion);
        // console.log(currentQuestion.question.question);
        return (
            <form className="form-quizquestion">
                <Container>
                    <div>
                        {
                            <Card className="question" body inverse>
                                <h1><CardTitle>Question #{this.state.pageNumber}</CardTitle></h1>
                                {/* <h3><CardText>{currentQuestion.question && currentQuestion.question.question}</CardText></h3> */}
                            </Card>
                        }

                        <br></br>
                        <Row>
                            <Col>
                                <Card className="answer1 clickable"
                                    // onClick={(this.answerSelection)} 
                                    body inverse >
                                    <CardText>A composite key</CardText>
                                </Card>
                            </Col>
                            <Col>
                                <div>
                                    <Card className="answer2 clickable" body inverse>
                                        <CardText>A primary key</CardText>
                                    </Card>
                                </div>
                            </Col>
                        </Row>
                        <br></br>
                        <Row>
                            <Col>
                                <div>
                                    <Card className="answer3 clickable" body inverse>
                                        <CardText>A foreign key</CardText>
                                    </Card>
                                </div>
                            </Col>
                            <Col>
                                <div>
                                    <Card className="answer4 clickable" body inverse>
                                        <CardText>A friendly key</CardText>
                                    </Card>
                                </div>
                            </Col>
                        </Row>

                    </div>
                    <br></br>
                    <Row>
                        <Col xs="6" sm="4"></Col>
                        <Col xs="6" sm="4">
                            <Button color="info">Submit Answer</Button>
                        </Col>
                        <Col xs="6" sm="4">
                            <Button color="info">Next</Button>
                        </Col>
                    </Row>

                </Container>
            </form >
        );
    };
}
