import React, { Component } from 'react';
import {
    Card, Button, CardTitle, CardText,
    Container, Row, Col
} from 'reactstrap';

interface IState {
    selectedAnswer: {
        answer: string,
        questionId: number
    }

    successMessage?: string
}


export default class QuizStartComponent extends Component<{}, IState>  {

    constructor(props: any) {
        super(props);
        this.state = {
            selectedAnswer: {
                answer: '',
                questionId: 1
            }
        }
    }

    answerSelection = (event: React.ChangeEvent<HTMLInputElement>) => {
        this.setState({
            ...this.state,
            selectedAnswer: {
                ...this.state.selectedAnswer,
                answer: event.target.title
            },
            successMessage: `You're right!`
        })
    }

    submit = async (event: React.FormEvent<HTMLFormElement>) => {
        event.preventDefault();

    }

    render() {
        return (
            <form className="form-quizquestion" onSubmit={this.submit}>
                <Container>
                    <div>
                        <Card className="question" body inverse>
                            <h1><CardTitle>Question #1</CardTitle></h1>
                            <h3><CardText>What do we call a primary key that consists of multiple columns in a table?</CardText></h3>
                        </Card>
                        <br></br>
                        <p className="success-message">{this.state.successMessage}</p>
                        <Row>
                            <Col>
                                    <Card className="answer1" body inverse >
                                <button className="answer1" onClick={() => this.answerSelection} value="A composite key">
                                        <CardText>A composite key</CardText>
                                </button>
                                    </Card>
                            </Col>
                            <Col>
                                <div>
                                    <Card className="answer2" body inverse>
                                        <CardText>A primary key</CardText>
                                    </Card>
                                </div>
                            </Col>
                        </Row>
                        <br></br>
                        <Row>
                            <Col>
                                <div>
                                    <Card className="answer3" body inverse>
                                        <CardText>A foreign key</CardText>
                                    </Card>
                                </div>
                            </Col>
                            <Col>
                                <div>
                                    <Card className="answer4" body inverse>
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
