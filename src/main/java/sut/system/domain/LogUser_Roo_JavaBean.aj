// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package sut.system.domain;

import java.util.Set;
import sut.system.domain.LogUser;
import sut.system.domain.LogUserRole;

privileged aspect LogUser_Roo_JavaBean {
    
    public String LogUser.getUsername() {
        return this.username;
    }
    
    public void LogUser.setUsername(String username) {
        this.username = username;
    }
    
    public String LogUser.getPassword() {
        return this.password;
    }
    
    public void LogUser.setPassword(String password) {
        this.password = password;
    }
    
    public Boolean LogUser.getEnable() {
        return this.enable;
    }
    
    public void LogUser.setEnable(Boolean enable) {
        this.enable = enable;
    }
    
    public Set<LogUserRole> LogUser.getRoles() {
        return this.roles;
    }
    
    public void LogUser.setRoles(Set<LogUserRole> roles) {
        this.roles = roles;
    }
    
}
