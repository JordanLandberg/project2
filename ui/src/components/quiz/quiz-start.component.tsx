import React, { Component } from 'react';
import {
    Card, Button, CardTitle, CardText,
    Container, Row, Col
  } from 'reactstrap';

export default class QuizStartComponent extends Component{
    render() {
        return (
            <Container>
                <h6>Quiz Start Component</h6>
                <div>
                   <Card body inverse color="primary">
                    <h1><CardTitle>Question</CardTitle></h1>
                    <h3><CardText>What do we call a primary key that consists of multiple columns in a table?</CardText></h3>
                  </Card> 
                  <br></br>
                <Row>
                    <Col>
                  <Card body inverse style={{ backgroundColor: '#BD9FD6', borderColor: '#333' }}>
                    <CardText>A composite key</CardText>
                    <Button>Button</Button>
                  </Card>
                  </Col>
                  <Col>
                  <Card body inverse color="success">
                    <CardText>A primary key</CardText>
                    <Button color="secondary">Button</Button>
                  </Card>
                  </Col>
                  </Row>
                      <br></br>
                  <Row>
                      
                    <Col>
                  <Card body inverse color="info">
                    <CardText>A foreign key</CardText>
                    <Button color="secondary">Button</Button>
                  </Card>
                  </Col>
                  <Col>
                  <Card body inverse color="warning">
                    <CardText>A friendly key</CardText>
                    <Button color="secondary">Button</Button>
                  </Card>
                  </Col>
                  </Row>
                </div>
                </Container>
              );
            };
        }
