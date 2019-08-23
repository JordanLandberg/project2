import React, { Component } from 'react';
import { Button } from 'reactstrap';

interface IState {
    quiz: any[],
    pendingQuestions: any[]
}

export default class ReviewQuestionComponent extends Component<{}, IState> {

    constructor(props: any) {
        super(props);
        this.state = {
            quiz: [],
            pendingQuestions: []
        };
    }

    async componentWillMount() {
        this.getQuestions();
    }

    getQuestions = async () => {

    
        const resp = await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/questions/status/Pending', {
        // const resp = await fetch('http://localhost:8012/questions/status/Pending', {
            credentials: 'include'
        });
        const pendingQuestions = await resp.json();
    console.log(pendingQuestions);
        let quiz: any[] = [];
        for (let i = 0; i < pendingQuestions.length; i++) { 
            const questionId = pendingQuestions[i].questionId;
            const answerResponse = await fetch(`http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/answers/question/${questionId}`, {
                credentials: 'include'
            });

            const answersFromServer = await answerResponse.json();
            const quizCard = {
                question: pendingQuestions[i],
                answersFromServer,
            }
            quiz.push(quizCard);
        }

        this.setState({
            quiz
        });
    }

approveQ = async (selectedQuestion: any) => {
        const body = {
            ...selectedQuestion,
            statusId: {
                statusId: 2
            }

        }
        await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/questions', { 
            method: 'PUT',
            credentials: 'include',
            body: JSON.stringify(body),
            headers: {
                'content-type': 'application/json'
            }
        });
        this.getQuestions(); 
    }

denyQ = async (selectedQuestion: any) => {
    console.log(selectedQuestion)
        const body = {
            
            ...selectedQuestion,
            statusId: {
                statusId: 3
            }

        }
        
        await fetch('http://quiz-api.2tfhzbz93a.us-east-2.elasticbeanstalk.com/questions', { 
            method: 'PUT',
            credentials: 'include',
            body: JSON.stringify(body),
            headers: {
                'content-type': 'application/json'
            }
        });
        this.getQuestions();
    }

    render() {
        const quiz = this.state.quiz;
        console.log(quiz[0])
        return (
            <div className="user-table container">
                <br/>
                <h1>Review Questions</h1>
                <br />
                <br />
                <br />
                <div className="row">
                    <div className="col-span-3"></div>
                    <table className="col-span-6">
                        <thead>
                            <tr>
                                <th>Category</th>
                                <th>Question</th>
                                <th>Correct Answer</th>
                                <th>Incorrect Answer 1</th>
                                <th>Incorrect Answer 2</th>
                                <th>Incorrect Answer 3</th>
                                <th>Approve/Deny</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                            quiz.map(q =>
                                <tr key={'questionId-'+q.question.questionId}>
                                    <td>{q.question.categoryId.categoryName}</td>
                                    <td>{q.question.question}</td>
                                    <td>{q.question.correctAnswer && q.question.correctAnswer.answer}</td>
                                    <td>{q.answersFromServer[1].answer}</td> 
                                    <td>{q.answersFromServer[2].answer}</td>
                                    <td>{q.answersFromServer[3].answer}</td>
                                    <td>
                                        <Button color='success' onClick={() => this.approveQ(q.question)}>Approve</Button>
                                        <Button color='warning' onClick={() => this.denyQ(q.question)}>Deny</Button>
                                    </td>
                                </tr>)
                            }
                        </tbody>
                    </table>
                    <div className="col-span-3"></div>
                </div>
            </div>
        )
    }
}
