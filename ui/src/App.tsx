import React from 'react';
import './App.scss';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import { Provider } from 'react-redux';
import { store } from './store';
import CategoriesComponent from './components/categories/categories.component';
import HomeLoginComponent from './components/home/home-login.component';
import HomeSignupComponent from './components/home/home-signup.component';
import NavbarComponent from './components/navbar/navbar.component';
import CreateQuestionComponent from './components/question/create-question.component';
import ReviewQuestionComponent from './components/question/review.question.component';
import QuizEndComponent from './components/quiz/quiz-end.component';
import QuizMiddleComponent from './components/quiz/quiz-middle.component';
import QuizResultComponent from './components/quiz/quiz-result.component';
import QuizSectionComponent from './components/quiz/quiz-section.component';
import QuizStartComponent from './components/quiz/quiz-start.component';
import ViewUsersComponent from './components/user/view-users.component';


const App: React.FC = () => {
    return (
        // the redux store needs to wrap all of the rest of our components
        <Provider store={store}>
            <BrowserRouter>
                <div className="App">
                    <NavbarComponent />
                    {/* The switch will only render the first route to match */}
                    <Switch>
                        <Route path="/categories" component={CategoriesComponent} />
                        <Route path="/home/login" component={HomeLoginComponent} />
                        <Route path="/home/signup" component={HomeSignupComponent} />
                        <Route path="/question/create" component={CreateQuestionComponent} />
                        <Route path="/quiz/end" component={QuizEndComponent} />
                        <Route path="/quiz/middle" component={QuizMiddleComponent} />
                        <Route path="/quiz/result" component={QuizResultComponent} />
                        <Route path="/quiz/section" component={QuizSectionComponent} />
                        <Route path="/quiz/start" component={QuizStartComponent} />
                        <Route path="/admin/review" component={ReviewQuestionComponent} />
                        <Route path="/admin/users" component={ViewUsersComponent} />
                    </Switch>
                </div>
            </BrowserRouter>
        </Provider>
    );
}

export default App;
