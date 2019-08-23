import React, { Component } from 'react';
import { Button, Card, CardText, Row, Col, Container } from 'reactstrap';
import { Link } from 'react-router-dom';

interface IQuizResultProps {
    correctAnswers: number,
    totalQuestion: number,
    category: string
}

export default class QuizResultComponent extends Component<IQuizResultProps>{

    category() {
        if ((this.props.category === 'HTML') || (this.props.category === 'CSS') || (this.props.category === 'JavaScript')) {
            return 'Front-End'
        } else if ((this.props.category === 'Node') || (this.props.category === 'Express')) {
            return 'Back-End'
        } else {
            return 'Data Structures / Algorithms'
        }
    }

    render() {
        return (
            <div className="reviewPage">
                <Card className='reviewCard'>
                    <Card>
                        <br />
                        <CardText><h1>QuizResult</h1></CardText>
                        <br />
                    </Card>
                    <Card>
                        <CardText><h3>Questions Correct / Total Questions</h3></CardText>
                        <CardText><h4> {this.props.correctAnswers}/{this.props.totalQuestion}</h4></CardText>
                    </Card>
                    <Card>
                        <br />
                        <Link to="/question/create" className="linkProperties">
                            <p>Create question for {this.props.category}</p>
                        </Link>
                    </Card>
                    <Card>
                        <br />
                        <CardText className="reviewTrySection">Do you want to try another quiz from {this.category()}</CardText>
                        <Container>
                            <Row>
                                <Col xs="1"></Col>
                                <Col xs="6">
                                    <Button color="success" className="reviewSelectionYes">Yes</Button>
                                </Col>
                                <Col xs="1">
                                    <Link to='/categories'>
                                        <Button color="danger" className="reviewSelectionNo">No</Button>
                                    </Link>
                                </Col>
                            </Row>
                        </Container>
                        <br />
                    </Card>
                </Card>

            </div>
        )
    }
}
