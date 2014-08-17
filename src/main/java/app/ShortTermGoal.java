package app;

import java.util.Collections;
import java.util.List;

/**
 * @author imon
 * @since 8/17/14 9:41 PM
 */
public class ShortTermGoal {
    String goal;
    List<Intervention> interventionList = Collections.emptyList();

    public String getGoal() {
        return goal;
    }

    public void setGoal(String goal) {
        this.goal = goal;
    }

    public List<Intervention> getInterventionList() {
        return interventionList;
    }

    public void setInterventionList(List<Intervention> interventionList) {
        this.interventionList = interventionList;
    }

    @Override
    public String toString() {
        return "ShortTermGoal{" +
                "goal='" + goal + '\'' +
                ", interventionList=" + interventionList +
                '}';
    }
}
