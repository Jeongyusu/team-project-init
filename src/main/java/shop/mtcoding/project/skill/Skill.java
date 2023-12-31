package shop.mtcoding.project.skill;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
@Table(name = "skill_tb")
@Entity
public class Skill {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 20)
    private String skill;

    @OneToMany(mappedBy = "skill", fetch = FetchType.LAZY)
    private List<RequiredSkill> requiredSkillList;

    @OneToMany(mappedBy = "skill", fetch = FetchType.LAZY)
    private List<HasSkill> hasSkillList;

    @Builder
    public Skill(Integer id, List<RequiredSkill> requiredSkillList, List<HasSkill> hasSkillList) {
        this.id = id;
        this.requiredSkillList = requiredSkillList;
        this.hasSkillList = hasSkillList;
    }

}
