import React from 'react';
import { Button, Form, FormGroup, Label, Input, Container } from 'reactstrap';


interface IState {
  dropdownOpen: boolean
  newQuestion: {
    question: string
    category_id: number
    status_id: number

  }
  q: string,
  c?: string,
  i1?: string,
  i2?: string,
  i3?: string
}
export default class CreateQuestionComponent extends React.Component<{}, IState> {
  constructor(props: any) {
    super(props);
    this.state = {
      dropdownOpen: false,
      newQuestion: {
        question: '',
        category_id: 1,
        status_id: 1,
      },
      q: ''
    }
  }


  setCategory = (event: React.ChangeEvent<HTMLInputElement>) => {
    const value = +event.target.value;
    this.setState({
      ...this.state,
      newQuestion: {
        ...this.state.newQuestion,
        category_id: value
      }
    });
  }


  submit = async (event: React.FormEvent<HTMLFormElement>) => {

    event.preventDefault();

    try {
      const newQ = this.state.newQuestion;
      newQ.question = this.state.q;
      const newnewQ = {
        question: newQ.question,
        categoryId: {
          categoryId: newQ.category_id
        },
        statusId: {
          statusId: newQ.status_id
        }
      }
      //Submitting a question (WORKS IN POSTMANS AND UI!!!)
      console.log('BEFORE posting a question');
      // const responseQuestion = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/questions', {
      const responseQuestion = await fetch('http://localhost:8012/questions', {
        credentials: 'include',
        method: 'POST',
        headers: {
          'content-type': 'application/json'
        },
        body: JSON.stringify(newnewQ)
      });
      console.log('After posting a question');

      const newQuestion = await responseQuestion.json();
      const newQuestionId = newQuestion.questionId;

      //Submitting an incorrect answer (WORKS IN POSTSMANS BUT NOT IN UI...)
      console.log('BEFORE posting an incorrect response.');
      const newIAnswer1 = {
        answer: this.state.i1,
        questionId: {
          questionId: newQuestionId
        }
      }
      // const responseIA1 = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/answers', {
      await fetch('http://localhost:8012/answers', {
        credentials: 'include',
        method: 'POST',
        headers: {
          'content-type': 'application/json'
        },
        body: JSON.stringify(newIAnswer1)
      });
      console.log('Inbetween posting wrong answer 1 and 2');

      // const newBadResponse1 = await responseIA1.json();
      // const newQuestionId = newQuestion.questionId;

      //Submitting the second incorrect answer (The submit answer's working in postman, but returns errors in the UI devtools)
      const newIAnswer2 = {
        answer: this.state.i2,
        questionId: {
          questionId: newQuestionId
        }
      }
      // const responseIA2 = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/answers', {
      await fetch('http://localhost:8012/answers', {
        credentials: 'include',
        method: 'POST',
        headers: {
          'content-type': 'application/json'
        },
        body: JSON.stringify(newIAnswer2)
      });
      console.log('Inbetween posting wrong answer 2 and 3');

      const newIAnswer3 = {
        answer: this.state.i3,
        questionId: {
          questionId: newQuestionId
        }
      }
      // const responseIA3 = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/answers', {
      await fetch('http://localhost:8012/answers', {
        credentials: 'include',
        method: 'POST',
        headers: {
          'content-type': 'application/json'
        },
        body: JSON.stringify(newIAnswer3)
      });
      console.log('Inbetween posting wrong answer 3 and correct response');

      const newCAnswer = {
        answer: this.state.c,
        questionId: {
          questionId: newQuestionId
        }
      }
      // const responseCA = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/answers', {
      const responseCA = await fetch('http://localhost:8012/answers', {
        credentials: 'include',
        method: 'POST',
        headers: {
          'content-type': 'application/json'
        },
        body: JSON.stringify(newCAnswer)
      });
      console.log('Inbetween posting right answer and PUT question');

      const newCA = await responseCA.json();
      const newCAId = newCA.answerId;

      const updateQuestion = {
        ...newQuestion,
        questionId: newQuestionId,
        correctAnswer: {
          answerId: newCAId
        }
      }

      // const responseUQ = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/questions', {
      const responseUQ = await fetch('http://localhost:8012/questions', {
        credentials: 'include',
        method: 'PUT',
        headers: {
          'content-type': 'application/json'
        },
        body: JSON.stringify(updateQuestion)
      });
      console.log('After PUT question');

      const response = await responseUQ.json();
      console.log(response);
    } catch (err) {
      console.log(err)

    }
  }
  updateQ = (event: React.ChangeEvent<HTMLInputElement>) => {
    this.setState({
      q: event.target.value
    })
  }
  updateC = (event: React.ChangeEvent<HTMLInputElement>) => {
    this.setState({
      c: event.target.value
    })
  }
  updateI1 = (event: React.ChangeEvent<HTMLInputElement>) => {
    this.setState({
      i1: event.target.value
    })
  }
  updateI2 = (event: React.ChangeEvent<HTMLInputElement>) => {
    this.setState({
      i2: event.target.value
    })
  }
  updateI3 = (event: React.ChangeEvent<HTMLInputElement>) => {
    this.setState({
      i3: event.target.value
    })
  }
  render() {
    return (
      <Container>
        <Form>
          <p> Quiz category
              <Input type="select" onChange={this.setCategory}>
              <option value='1'>
                HTML
                  </option>
              <option value='2'>
                CSS
                  </option>
              <option value='3'>
                JavaScript
                  </option>
              <option value='4'>
                React
                  </option>
              <option value='5'>
                Redux
                  </option>
              <option value='6'>
                SQL
                  </option>
              <option value='7'>
                pgAdmin
                  </option>
              <option value='8'>
                Java
                  </option>

            </Input>
          </p>
          <FormGroup>
            <Label for="question">Question</Label>
            <Input type="text" name="question" id="question" placeholder="Enter a question!"
              onChange={(e) => this.updateQ(e)} />
          </FormGroup>
          <FormGroup>
            <Label for="correctAnswer">Correct Answer</Label>
            <Input type="text" name="correctAnswer" id="correctAnswer" placeholder="Enter a correct answer"
              onChange={(e) => this.updateC(e)} />
          </FormGroup>
          <FormGroup>
            <Label for="incorrectAnswer1">Incorrect Answer #1</Label>
            <Input type="text" name="incorrectAnswer1" id="incorrectAnswer1" placeholder="Enter an incorrect response."
              onChange={(e) => this.updateI1(e)} />
          </FormGroup>
          <FormGroup>
            <Label for="incorrectAnswer2">Incorrect Answer #2</Label>
            <Input type="text" name="incorrectAnswer2" id="incorrectAnswer2" placeholder="Enter an incorrect response."
              onChange={(e) => this.updateI2(e)} />
          </FormGroup>
          <FormGroup>
            <Label for="incorrectAnswer3">Incorrect Answer #3</Label>
            <Input type="text" name="incorrectAnswer3" id="incorrectAnswer3" placeholder="Enter an incorrect response."
              onChange={(e) => this.updateI3(e)} />
          </FormGroup>
          <Button color="primary" onClick={(e) => this.submit(e)}>Submit Question</Button>
        </Form>
      </Container>
    )
  }
}
