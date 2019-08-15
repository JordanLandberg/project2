import React, { Component } from 'react';
import {
    Card, Button, CardTitle, CardText,
    Container, Row, Col
  } from 'reactstrap';

export default class QuizEndComponent extends Component{
    render() {
        return (
            <Container>
                <div>
                    <Card body inverse color="primary">
                        <h1><CardTitle>Question #1</CardTitle></h1>
                        <h3><CardText>What do we call a primary key that consists of multiple columns in a table?</CardText></h3>
                    </Card>
                    <br></br>
                    <Row>
                        <Col>
                            <Card body inverse style={{ backgroundColor: '#BD9FD6'}}>
                                <Button><CardText>A composite key</CardText></Button>
                            </Card>
                        </Col>
                        <Col>
                            <Card body inverse color="success">
                                <Button><CardText>A primary key</CardText></Button>
                            </Card>
                        </Col>
                    </Row>
                    <br></br>
                    <Row>
                        <Col>
                            <Card body inverse color="info">
                                <Button><CardText>A foreign key</CardText></Button>
                            </Card>
                        </Col>
                        <Col>
                            <Card body inverse color="warning">
                                <Button><CardText>A friendly key</CardText></Button>
                            </Card>
                        </Col>
                    </Row>
                </div>
                <br></br>
                <Row>
                    <Col>
                        <Button color="info">Submit Answer</Button>
                    </Col>
                    <Button color="info">Finished</Button>
                </Row>

            </Container>
        );
    };
}
