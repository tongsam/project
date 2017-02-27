package sut.system.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class LogUser {

    /**
     */
    private String username;

    /**
     */
    private String password;

    /**
     */
    private Boolean enable;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<LogUserRole> roles = new HashSet<LogUserRole>();
}
