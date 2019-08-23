import React, { Component } from 'react';
import { Card, CardTitle, Col, Container, Row } from 'reactstrap';
import { updateCategory } from '../../actions/quiz.actions';
import { IQuizState, IState } from '../../reducers';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';

export interface ICategoryProps {
    category: IQuizState,
    updateCategory: (category: string) => any
}

export class CategoriesComponent extends Component<ICategoryProps> {

    updateCategory = (event: React.MouseEvent<HTMLElement, MouseEvent>) => {
            this.props.updateCategory(event.currentTarget.innerText);
    }

    // this.props.history.push('/quiz/start')
    render() {
        return (
            <Container>
                <h1>Front-End</h1>
                <Row>
                    <Col>
                        <Card className="answer1 clickable"
                            onClick={this.updateCategory}
                            body inverse>
                            <Link to="/quiz/start">
                                <h1><CardTitle>CSS</CardTitle></h1>
                            </Link>
                        </Card>
                    </Col>
                    <Col>
                        <Card className="answer2 clickable"
                            onClick={this.updateCategory}
                            body inverse>
                            <Link to="/quiz/start">
                                <h1><CardTitle>HTML</CardTitle></h1>
                            </Link>
                            
                        </Card>
                    </Col>
                    <Col>
                        <Card className="answer3 clickable"
                            onClick={this.updateCategory}
                            body inverse>
                            <Link to="/quiz/start">
                                <h1><CardTitle>JavaScript</CardTitle></h1>
                            </Link>
                        </Card>
                    </Col>
                </Row>
                <h1>Back-End</h1>
                <Row>
                    <Col>
                        <Card className="answer4 clickable"
                            onClick={this.updateCategory}
                            body inverse>
                            <Link to="/quiz/start">
                                <h1><CardTitle>Node</CardTitle></h1>
                            </Link>
                        </Card>
                    </Col>
                    <Col>
                        <Card className="answer5 clickable"
                            onClick={this.updateCategory}
                            body inverse>
                            <Link to="/quiz/start">
                                <h1><CardTitle>Express</CardTitle></h1>
                            </Link>
                        </Card>
                    </Col>
                </Row>
                <h1>Data Structures / Algorithms</h1>
                <Row>
                    <Col>
                        <Card className="question clickable"
                            onClick={this.updateCategory}
                            body inverse>
                            <Link to="/quiz/start">
                                <h1><CardTitle>Algorithms</CardTitle></h1>
                            </Link>
                        </Card>
                    </Col>
                </Row>
            </Container>
        )
    }
}

const mapStateToProps = (state: IState) => {
    return {
        category: state.category
    }
}

const mapDispatchToProps = {
    updateCategory
}

export default connect(mapStateToProps, mapDispatchToProps)(CategoriesComponent);