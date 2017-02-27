package sut.system.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Electricity {

    /**
     */
    private String months;

    /**
     */
    private String years;

    /**
     */
    private String price;
}
