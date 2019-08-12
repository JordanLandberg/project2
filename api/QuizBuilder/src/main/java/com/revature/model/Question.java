package com.revature.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "question_id")
    private int questionId;

    @Column(name = "question")
    private String question;

    @OneToMany
    @Column(name = "correct_answer")
    private int correctAnswer;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;

    @ManyToOne
    @JoinColumn(name = "status_id")
    private Status statusId;
}
