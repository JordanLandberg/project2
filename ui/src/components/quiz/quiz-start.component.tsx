import React, { Component } from 'react';
import { Button, Card, CardText, CardTitle, Col, Container, Row } from 'reactstrap';

interface IState {
    quiz: any[],
    pageNumber: number,
    currentAnswers: any[],
    a1: boolean,
    a2: boolean,
    a3: boolean,
    a4: boolean
}


export default class QuizStartComponent extends Component<{}, IState>  {

    constructor(props: any) {
        super(props);
        this.state = {
            quiz: [],
            pageNumber: 1,
            currentAnswers: [],
            a1: false,
            a2: false,
            a3: false,
            a4: false
        }
    }

    async componentDidMount() {
        // const categoryName = 'HTML';
        //     const resp = await fetch(`http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/questions/category/${categoryName}`, {
        //         credentials: 'include'
        //     });
        //     const questionsFromServer = await resp.json();
        const questionsFromServer = // hardcoded values so we can make sure that this part above isnt causing any issues
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
        for (let i = 0; i < 3; i++) {
            const questionId = questionsFromServer[i].questionId;
            const answerResponse = await fetch(`http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/answers/question/${questionId}`, {
                credentials: 'include'
            });
            const answersFromServer = await answerResponse.json();
            const quizCard = {
                question: questionsFromServer[i],
                answersFromServer,
                selectedAnswer: 0
            }
            quiz.push(quizCard);
        }
        this.setState({
            quiz
        })
    }

    selectedAnswer = (answers: any, answerNumber: number, pageNumber: number) => {
        let quiz = this.state.quiz;
        quiz[pageNumber].selectedAnswer = answers[answerNumber].answerId;
        // console.log(quiz)
        this.setState({
            quiz
        })

        return undefined;
    }

    updateOne(page: number) {
        let checkQuiz = this.state.quiz[page];
        let selectedAnswer = checkQuiz && this.state.quiz[page].selectedAnswer
        let x = (checkQuiz && (checkQuiz.answersFromServer && checkQuiz.answersFromServer[0].answerId))
        console.log(selectedAnswer)
        if (selectedAnswer === x) {
            console.log('selectedone')
            return 'answer1 clickable selected'
        } else {
            return 'answer1 clickable';
        }
    }

    updateTwo(page: number) {
        let checkQuiz = this.state.quiz[page];
        let selectedAnswer = checkQuiz && this.state.quiz[page].selectedAnswer
        console.log(selectedAnswer)
        if (selectedAnswer === (checkQuiz && (checkQuiz.answersFromServer && checkQuiz.answersFromServer[1].answerId))) {
            console.log('selectedtwo')
            return 'answer2 clickable selected'
        } else {
            return 'answer2 clickable';
        }
    }

    updateThree(page: number) {
        let checkQuiz = this.state.quiz[page];
        let selectedAnswer = checkQuiz && this.state.quiz[page].selectedAnswer
        if (selectedAnswer === (checkQuiz && (checkQuiz.answersFromServer && checkQuiz.answersFromServer[2].answerId))) {
            console.log('selectedthree')
            return 'answer3 clickable selected'
        } else {
            return 'answer3 clickable';
        }
    }

    updateFour(page: number) {
        let checkQuiz = this.state.quiz[page];
        let selectedAnswer = checkQuiz && this.state.quiz[page].selectedAnswer
        if (selectedAnswer === (checkQuiz && (checkQuiz.answersFromServer && checkQuiz.answersFromServer[3].answerId))) {
            console.log('selectedfour')
            return 'answer4 clickable selected'
        } else {
            return 'answer4 clickable';
        }
    }

    nextQuestion = () => {
        this.setState({
            pageNumber: this.state.pageNumber + 1
        });
    }

    prevQuestion = () => {
        this.setState({
            pageNumber: this.state.pageNumber - 1
        });
    }

    updatePrevButton() {
        if (this.state.pageNumber > 1) {
            return 'd-inline';
        } else {
            return 'd-none';
        }
    }

    updateNextButton() {
        if (this.state.pageNumber === this.state.quiz.length) {
            return 'd-none';
        } else {
            return 'd-inline';
        }
    }

    updateFinishButton() {
        if (this.state.pageNumber === this.state.quiz.length) {
            return 'd-inline';
        } else {
            return 'd-none';
        }
    }

    submitAnswer(event: React.MouseEvent<any, MouseEvent>) {
        event.preventDefault();
        let checkQuiz = this.state.quiz[this.state.pageNumber - 1];
        let selectedAnswer = checkQuiz && this.state.quiz[this.state.pageNumber - 1].selectedAnswer
        if (selectedAnswer === (checkQuiz && (checkQuiz.question && checkQuiz.question.correctAnswer.answerId))) {
            console.log('heyhey');
        } else {
            console.log('youyou');
        }
        return undefined;
    }

    render() {
        const quiz = this.state.quiz;
        const currentQuestion = quiz[this.state.pageNumber - 1];
        console.log(currentQuestion)
        return (
            <form className="form-quizquestion">
                <Container>
                    {
                        <div>
                            <div>
                                <Card className="question" body inverse>
                                    <h1><CardTitle>Question #{this.state.pageNumber}</CardTitle></h1>
                                    <h3><CardText>{currentQuestion && currentQuestion.question.question}</CardText></h3>
                                </Card>
                                <br></br>
                                <Row>
                                    <Col>
                                        <Card className={this.updateOne(this.state.pageNumber - 1)}
                                            body inverse
                                            onClick={(e) => this.selectedAnswer(currentQuestion && currentQuestion.answersFromServer, 0, this.state.pageNumber - 1)}>
                                            <CardText>{currentQuestion && currentQuestion.answersFromServer[0].answer}</CardText>
                                        </Card>
                                    </Col>
                                    <Col>
                                        <div>
                                            <Card className={this.updateTwo(this.state.pageNumber - 1)} body inverse
                                                onClick={(e) => this.selectedAnswer(currentQuestion && currentQuestion.answersFromServer, 1, this.state.pageNumber - 1)}>
                                                <CardText>{currentQuestion && currentQuestion.answersFromServer[1].answer}</CardText>
                                            </Card>
                                        </div>
                                    </Col>
                                </Row>
                                <br></br>
                                <Row>
                                    <Col>
                                        <div>
                                            <Card className={this.updateThree(this.state.pageNumber - 1)} body inverse
                                                onClick={(e) => this.selectedAnswer(currentQuestion && currentQuestion.answersFromServer, 2, this.state.pageNumber - 1)}>
                                                <CardText>{currentQuestion && currentQuestion.answersFromServer[2].answer}</CardText>
                                            </Card>
                                        </div>
                                    </Col>
                                    <Col>
                                        <div>
                                            <Card className={this.updateFour(this.state.pageNumber - 1)} body inverse
                                                onClick={(e) => this.selectedAnswer(currentQuestion && currentQuestion.answersFromServer, 3, this.state.pageNumber - 1)}>
                                                <CardText>{currentQuestion && currentQuestion.answersFromServer[3].answer}</CardText>
                                            </Card>
                                        </div>
                                    </Col>
                                </Row>
                            </div>
                            <Row>
                                <Col xs="6" sm="4"></Col>
                                <Col xs="6" sm="4">
                                    <p></p>
                                </Col>
                                <Col xs="6" sm="4"></Col>
                            </Row>
                            <br></br>
                            <Row>
                                <Col xs="6" sm="4" >
                                    <Button className={this.updatePrevButton()} color="info" onClick={() => this.prevQuestion()}>Prev</Button>
                                </Col>
                                <Col xs="6" sm="4">
                                    <Button color="info" onClick={(e) => this.submitAnswer(e)}>Submit Answer</Button>
                                </Col>
                                <Col xs="6" sm="4">
                                    <Button className={this.updateNextButton()} color="info" onClick={() => this.nextQuestion()}>Next</Button>
                                    <Button className={this.updateFinishButton()} color="info" onClick={() => this.nextQuestion()}>Finish</Button>
                                </Col>
                            </Row>
                        </div>
                    }
                </Container>
            </form >
        );
    };
}
