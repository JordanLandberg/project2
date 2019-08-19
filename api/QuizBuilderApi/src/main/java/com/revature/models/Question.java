package com.revature.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Question {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "question_id")
	private int questionId;

	private String question;

	@OneToOne
	@JoinColumn(name = "correct_answer")
	private Answer correctAnswer;

	@ManyToOne
	@JoinColumn(name = "category_id")
	private Category categoryId;

	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status statusId;

	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Question(int questionId, String question, Answer correctAnswer, Category categoryId, Status statusId) {
		super();
		this.questionId = questionId;
		this.question = question;
		this.correctAnswer = correctAnswer;
		this.categoryId = categoryId;
		this.statusId = statusId;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public Answer getCorrectAnswer() {
		return correctAnswer;
	}

	public void setCorrectAnswer(Answer correctAnswer) {
		this.correctAnswer = correctAnswer;
	}

	public Category getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Category categoryId) {
		this.categoryId = categoryId;
	}

	public Status getStatusId() {
		return statusId;
	}

	public void setStatusId(Status statusId) {
		this.statusId = statusId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((categoryId == null) ? 0 : categoryId.hashCode());
		result = prime * result + ((correctAnswer == null) ? 0 : correctAnswer.hashCode());
		result = prime * result + ((question == null) ? 0 : question.hashCode());
		result = prime * result + questionId;
		result = prime * result + ((statusId == null) ? 0 : statusId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Question other = (Question) obj;
		if (categoryId == null) {
			if (other.categoryId != null)
				return false;
		} else if (!categoryId.equals(other.categoryId))
			return false;
		if (correctAnswer == null) {
			if (other.correctAnswer != null)
				return false;
		} else if (!correctAnswer.equals(other.correctAnswer))
			return false;
		if (question == null) {
			if (other.question != null)
				return false;
		} else if (!question.equals(other.question))
			return false;
		if (questionId != other.questionId)
			return false;
		if (statusId == null) {
			if (other.statusId != null)
				return false;
		} else if (!statusId.equals(other.statusId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Question [questionId=" + questionId + ", question=" + question + ", correctAnswer=" + correctAnswer
				+ ", categoryId=" + categoryId + ", statusId=" + statusId + "]";
	}
}
