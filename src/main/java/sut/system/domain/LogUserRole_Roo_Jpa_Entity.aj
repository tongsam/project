// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package sut.system.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import sut.system.domain.LogUserRole;

privileged aspect LogUserRole_Roo_Jpa_Entity {
    
    declare @type: LogUserRole: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long LogUserRole.id;
    
    @Version
    @Column(name = "version")
    private Integer LogUserRole.version;
    
    public Long LogUserRole.getId() {
        return this.id;
    }
    
    public void LogUserRole.setId(Long id) {
        this.id = id;
    }
    
    public Integer LogUserRole.getVersion() {
        return this.version;
    }
    
    public void LogUserRole.setVersion(Integer version) {
        this.version = version;
    }
    
}
