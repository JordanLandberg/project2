import React, { Component } from 'react';
import { Button, Form, FormGroup, Label, Input, FormText, Container } from 'reactstrap';

export default class CreateQuestionComponent extends React.Component{
    render() {
        return (
          <Container>
            <Form>
        <FormGroup>
          <Label for="exampleEmail">Question</Label>
          <Input type="email" name="email" id="exampleEmail" placeholder="with a placeholder" />
        </FormGroup>
        <FormGroup>
          <Label for="examplePassword">Correct Answer</Label>
          <Input type="text" name="text" id="examplePassword" placeholder="password placeholder" />
        </FormGroup>
        <FormGroup>
          <Label for="examplePassword">Incorrect Answer #1</Label>
          <Input type="text" name="text" id="examplePassword" placeholder="password placeholder" />
        </FormGroup>
        <FormGroup>
          <Label for="examplePassword">Incorrect Answer #2</Label>
          <Input type="text" name="text" id="examplePassword" placeholder="password placeholder" />
        </FormGroup>
        <FormGroup>
          <Label for="examplePassword">Incorrect Answer #3</Label>
          <Input type="text" name="text" id="examplePassword" placeholder="password placeholder" />
        </FormGroup>
        <Button color="primary">Submit Question</Button>
        </Form>
        </Container>
        )
    }
}
