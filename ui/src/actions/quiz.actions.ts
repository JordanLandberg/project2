
export const quizTypes = {
    UPDATE_CATEGORY: '[QUIZ] UPDATE CATEGORY'
}

export const updateCategory = (category: string) => async (dispatch: any) => {

        dispatch({
            type: quizTypes.UPDATE_CATEGORY,
            payload: category
        })
}