package app;

import java.util.Collections;
import java.util.List;

/**
 * @author imon
 * @since 8/17/14 9:41 PM
 */
public class Treatment {
    String problemName;
    String longTermGoal;
    List<ShortTermGoal> shortTermGoalList = Collections.emptyList();

    public String getProblemName() {
        return problemName;
    }

    public void setProblemName(String problemName) {
        this.problemName = problemName;
    }

    public String getLongTermGoal() {
        return longTermGoal;
    }

    public void setLongTermGoal(String longTermGoal) {
        this.longTermGoal = longTermGoal;
    }

    public List<ShortTermGoal> getShortTermGoalList() {
        return shortTermGoalList;
    }

    public void setShortTermGoalList(List<ShortTermGoal> shortTermGoalList) {
        this.shortTermGoalList = shortTermGoalList;
    }

    @Override
    public String toString() {
        return "Treatment{" +
                "problemName='" + problemName + '\'' +
                ", longTermGoal='" + longTermGoal + '\'' +
                ", shortTermGoalList=" + shortTermGoalList +
                '}';
    }
}
