// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package sut.system.domain;

import java.util.Date;
import sut.system.domain.LogItem;
import sut.system.domain.LogUser;

privileged aspect LogItem_Roo_JavaBean {
    
    public String LogItem.getMessage() {
        return this.message;
    }
    
    public void LogItem.setMessage(String message) {
        this.message = message;
    }
    
    public Date LogItem.getCreateDate() {
        return this.createDate;
    }
    
    public void LogItem.setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
    
    public LogUser LogItem.getLogUser() {
        return this.logUser;
    }
    
    public void LogItem.setLogUser(LogUser logUser) {
        this.logUser = logUser;
    }
    
}
