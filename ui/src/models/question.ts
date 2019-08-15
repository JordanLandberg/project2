import Answer from "./answer";
import Category from "./category";
import Status from "./status";

export default class Question {
    constructor(
        public questionId = 0,
        public question = '',
        public correctAnswer = new Answer(),
        public category = new Category(),
        public status = new Status()
    ) {}
}