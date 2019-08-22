import React, { Component } from 'react';
import { Button, Card, CardText, CardTitle, Col, Container, Row } from 'reactstrap';
import { Link } from 'react-router-dom';
import { IQuizState, IState } from '../../reducers';
import { connect } from 'react-redux';

interface IQuizStartState {
    quiz: any[],
    pageNumber: number,
    currentAnswers: any[]
}

export interface ICategoryProps {
    category: IQuizState
}


export class QuizStartComponent extends Component<ICategoryProps, IQuizStartState>  {

    constructor(props: any) {
        super(props);
        this.state = {
            quiz: [],
            pageNumber: 1,
            currentAnswers: []
        }
    }

    async componentDidMount() {
        const categoryName = 'CSS';
        console.log(categoryName)
        const resp = await fetch(`http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/questions/category/${categoryName}/amount/5`, {
            credentials: 'include'
        });
        const questions = await resp.json();
        const questionsFromServer = questions.content
        console.log(questionsFromServer)

        let quiz: any[] = [];
        for (let i = 0; i < questionsFromServer.length; i++) {
            const questionId = questionsFromServer[i].questionId;
            const answerResponse = await fetch(`http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/answers/question/${questionId}`, {
                credentials: 'include'
            });
            const answersFromServer = await answerResponse.json();
            const quizCard = {
                question: questionsFromServer[i],
                answersFromServer,
                selectedAnswer: 0,
                message: ''
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

    async submitAnswer(event: React.MouseEvent<any, MouseEvent>) {
        event.preventDefault();
        let checkQuiz = this.state.quiz[this.state.pageNumber - 1];
        let quiz = this.state.quiz
        let selectedAnswer = checkQuiz && this.state.quiz[this.state.pageNumber - 1].selectedAnswer
        if (selectedAnswer === (checkQuiz && (checkQuiz.question && checkQuiz.question.correctAnswer.answerId))) {
            quiz[this.state.pageNumber - 1].message = 'Correct Answer!'
            console.log(quiz);
            this.setState({
                quiz
            })
            console.log(this.state.quiz[0].message)
        } else {
            console.log(this.state.quiz[0].message)
            quiz[this.state.pageNumber - 1].message = 'Incorrect Answer!'
            this.setState({
                quiz
            })
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
                            <br />
                            <Row>
                                <Col xs="6" sm="4"></Col>
                                <Col xs="6" sm="4">
                                    <h3>{this.state.quiz && (this.state.quiz[this.state.pageNumber] && this.state.quiz[this.state.pageNumber - 1].message)}</h3>
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
                                    <Link to="/quiz/result">
                                        <Button className={this.updateFinishButton()} color="info">Finish</Button>
                                    </Link>
                                </Col>
                            </Row>
                        </div>
                    }
                </Container>
            </form >
        );
    };
}

const mapStateToProps = (state: IState) => {
    return {
        category: state.category
    }
}


export default connect(mapStateToProps)(QuizStartComponent);