import React, { Component } from 'react';
import {
    Card, Button, CardTitle, CardText,
    Container, Row, Col
} from 'reactstrap';

export default class QuizMiddleComponent extends Component {
    render() {
        return (
            <Container>
                <div>
                    <Card className="question" body inverse>
                        <h1><CardTitle>Question #1</CardTitle></h1>
                        <h3><CardText>What do we call a primary key that consists of multiple columns in a table?</CardText></h3>
                    </Card>
                    <br></br>
                    <Row>
                        <Col>
                            <div>
                                <Card className="answer1" body inverse >
                                    <CardText>A composite key</CardText>
                                </Card>
                            </div>
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
                    <Col xs="6" sm="4">
                        <Button color="info">Previous</Button>
                    </Col>
                    <Col xs="6" sm="4">
                        <Button color="info">Submit Answer</Button>
                    </Col>
                    <Col xs="6" sm="4">
                        <Button color="info">Next</Button>
                    </Col>
                </Row>
            </Container>
        );
    };
}
