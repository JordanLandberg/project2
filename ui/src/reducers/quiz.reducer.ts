import { IQuizState } from ".";
import { quizTypes } from "../actions/quiz.actions";

const initialState: IQuizState = {
    category: ''
}

export default (state = initialState, action: any): IQuizState => {
    switch (action.type) {
        case quizTypes.UPDATE_CATEGORY:
            return {
                ...state,
                category: action.payload
            }
        default:
            return state
    }
}
