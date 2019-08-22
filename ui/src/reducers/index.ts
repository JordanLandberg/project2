import { combineReducers } from "redux";
import quizReducer from "./quiz.reducer";

export interface IQuizState {
    category: string
}

// compose IState of all the other pieces of the state store
export interface IState {
    category: IQuizState
}

export const state = combineReducers<IState>({
    category: quizReducer
})