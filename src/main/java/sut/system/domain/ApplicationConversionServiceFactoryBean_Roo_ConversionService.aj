// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package sut.system.domain;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import sut.system.domain.ApplicationConversionServiceFactoryBean;
import sut.system.domain.Electricity;
import sut.system.domain.LogItem;
import sut.system.domain.LogUser;
import sut.system.domain.LogUserRole;
import sut.system.domain.Payment;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Electricity, String> ApplicationConversionServiceFactoryBean.getElectricityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<sut.system.domain.Electricity, java.lang.String>() {
            public String convert(Electricity electricity) {
                return new StringBuilder().append(electricity.getMonths()).append(' ').append(electricity.getYears()).append(' ').append(electricity.getPrice()).toString();
            }
        };
    }
    
    public Converter<Long, Electricity> ApplicationConversionServiceFactoryBean.getIdToElectricityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, sut.system.domain.Electricity>() {
            public sut.system.domain.Electricity convert(java.lang.Long id) {
                return Electricity.findElectricity(id);
            }
        };
    }
    
    public Converter<String, Electricity> ApplicationConversionServiceFactoryBean.getStringToElectricityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, sut.system.domain.Electricity>() {
            public sut.system.domain.Electricity convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Electricity.class);
            }
        };
    }
    
    public Converter<LogItem, String> ApplicationConversionServiceFactoryBean.getLogItemToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<sut.system.domain.LogItem, java.lang.String>() {
            public String convert(LogItem logItem) {
                return new StringBuilder().append(logItem.getMessage()).append(' ').append(logItem.getCreateDate()).toString();
            }
        };
    }
    
    public Converter<Long, LogItem> ApplicationConversionServiceFactoryBean.getIdToLogItemConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, sut.system.domain.LogItem>() {
            public sut.system.domain.LogItem convert(java.lang.Long id) {
                return LogItem.findLogItem(id);
            }
        };
    }
    
    public Converter<String, LogItem> ApplicationConversionServiceFactoryBean.getStringToLogItemConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, sut.system.domain.LogItem>() {
            public sut.system.domain.LogItem convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogItem.class);
            }
        };
    }
    
    public Converter<LogUser, String> ApplicationConversionServiceFactoryBean.getLogUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<sut.system.domain.LogUser, java.lang.String>() {
            public String convert(LogUser logUser) {
                return new StringBuilder().append(logUser.getUsername()).append(' ').append(logUser.getPassword()).toString();
            }
        };
    }
    
    public Converter<Long, LogUser> ApplicationConversionServiceFactoryBean.getIdToLogUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, sut.system.domain.LogUser>() {
            public sut.system.domain.LogUser convert(java.lang.Long id) {
                return LogUser.findLogUser(id);
            }
        };
    }
    
    public Converter<String, LogUser> ApplicationConversionServiceFactoryBean.getStringToLogUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, sut.system.domain.LogUser>() {
            public sut.system.domain.LogUser convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogUser.class);
            }
        };
    }
    
    public Converter<LogUserRole, String> ApplicationConversionServiceFactoryBean.getLogUserRoleToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<sut.system.domain.LogUserRole, java.lang.String>() {
            public String convert(LogUserRole logUserRole) {
                return new StringBuilder().append(logUserRole.getRoleName()).toString();
            }
        };
    }
    
    public Converter<Long, LogUserRole> ApplicationConversionServiceFactoryBean.getIdToLogUserRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, sut.system.domain.LogUserRole>() {
            public sut.system.domain.LogUserRole convert(java.lang.Long id) {
                return LogUserRole.findLogUserRole(id);
            }
        };
    }
    
    public Converter<String, LogUserRole> ApplicationConversionServiceFactoryBean.getStringToLogUserRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, sut.system.domain.LogUserRole>() {
            public sut.system.domain.LogUserRole convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogUserRole.class);
            }
        };
    }
    
    public Converter<Payment, String> ApplicationConversionServiceFactoryBean.getPaymentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<sut.system.domain.Payment, java.lang.String>() {
            public String convert(Payment payment) {
                return new StringBuilder().append(payment.getPrice()).toString();
            }
        };
    }
    
    public Converter<Long, Payment> ApplicationConversionServiceFactoryBean.getIdToPaymentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, sut.system.domain.Payment>() {
            public sut.system.domain.Payment convert(java.lang.Long id) {
                return Payment.findPayment(id);
            }
        };
    }
    
    public Converter<String, Payment> ApplicationConversionServiceFactoryBean.getStringToPaymentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, sut.system.domain.Payment>() {
            public sut.system.domain.Payment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Payment.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getElectricityToStringConverter());
        registry.addConverter(getIdToElectricityConverter());
        registry.addConverter(getStringToElectricityConverter());
        registry.addConverter(getLogItemToStringConverter());
        registry.addConverter(getIdToLogItemConverter());
        registry.addConverter(getStringToLogItemConverter());
        registry.addConverter(getLogUserToStringConverter());
        registry.addConverter(getIdToLogUserConverter());
        registry.addConverter(getStringToLogUserConverter());
        registry.addConverter(getLogUserRoleToStringConverter());
        registry.addConverter(getIdToLogUserRoleConverter());
        registry.addConverter(getStringToLogUserRoleConverter());
        registry.addConverter(getPaymentToStringConverter());
        registry.addConverter(getIdToPaymentConverter());
        registry.addConverter(getStringToPaymentConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
