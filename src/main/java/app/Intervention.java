package app;

/**
 * @author imon
 * @since 8/17/14 9:41 PM
 */
public class Intervention {
    String title;
    String personResponsible;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPersonResponsible() {
        return personResponsible;
    }

    public void setPersonResponsible(String personResponsible) {
        this.personResponsible = personResponsible;
    }

    @Override
    public String toString() {
        return "Intervention{" +
                "title='" + title + '\'' +
                ", personResponsible='" + personResponsible + '\'' +
                '}';
    }
}
