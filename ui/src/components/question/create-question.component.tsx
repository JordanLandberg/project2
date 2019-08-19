import React, { Component } from 'react';
import { Button, Form, FormGroup, Label, Input, Container } from 'reactstrap';
// import { Link } from 'react-router-dom';

export default class CreateQuestionComponent extends Component{
    render() {
        return (
          <Container>
            <Form>
            <FormGroup>
          <Label for="category">Category Selection </Label>
          <Input type="text" name="category" id="category" placeholder="Please select a category." />
        </FormGroup>
        <li className="nav-item active dropdown">
              <div className="nav-link dropdown-toggle pointer" id="category-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Find By Status</div>
              <div className="dropdown-menu" aria-labelledby="examples-dropdown">
                <div className="dropdown-item"><Input type="text" className="unset-anchor nav-link active">Pending Reimbursements</Input></div>
                <div className="dropdown-item"><Input type="text" className="unset-anchor nav-link active">Resolved Reimbursements</Input></div>
                <div className="dropdown-item"><Input type="text" className="unset-anchor nav-link active">Denied Reimbursements</Input></div>
              </div>
            </li>
        <FormGroup>
          <Label for="question">Question</Label>
          <Input type="text" name="question" id="question" placeholder="Enter a question!" />
        </FormGroup>
        <FormGroup>
          <Label for="correctAnswer">Correct Answer</Label>
          <Input type="text" name="correctAnswer" id="correctAnswer" placeholder="Enter a correct answer" />
        </FormGroup>
        <FormGroup>
          <Label for="incorrectAnswer1">Incorrect Answer #1</Label>
          <Input type="text" name="incorrectAnswer1" id="incorrectAnswer1" placeholder="Enter an incorrect response." />
        </FormGroup>
        <FormGroup>
          <Label for="incorrectAnswer2">Incorrect Answer #2</Label>
          <Input type="text" name="incorrectAnswer2" id="incorrectAnswer2" placeholder="Enter an incorrect response." />
        </FormGroup>
        <FormGroup>
          <Label for="incorrectAnswer3">Incorrect Answer #3</Label>
          <Input type="text" name="incorrectAnswer3" id="incorrectAnswer3" placeholder="Enter an incorrect response." />
        </FormGroup>
        <Button color="primary">Submit Question</Button>
        </Form>
        </Container>
        )
    }
}
