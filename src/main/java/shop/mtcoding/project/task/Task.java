package shop.mtcoding.project.task;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.mtcoding.project.jobpening.JobOpening;

@NoArgsConstructor
@Getter
@Setter
@Table(name = "task_tb")
@Entity

public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 60)
    private String taskContent;

    @CreationTimestamp
    private Timestamp createdAt;

    @ManyToOne(fetch = FetchType.LAZY)
    private JobOpening jobOpening;

    @Builder
    public Task(Integer id, String taskContent, Timestamp createdAt, JobOpening jobOpening) {
        this.id = id;
        this.taskContent = taskContent;
        this.createdAt = createdAt;
        this.jobOpening = jobOpening;
    }

}
