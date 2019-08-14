import Question from "./question";

export default class Answer {
    constructor(
        public answerId = 0,
        public answer = '',
        public questionId = new Question()
    ) {}
}