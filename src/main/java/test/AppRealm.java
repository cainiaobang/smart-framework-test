package test;

import org.smart4j.framework.helper.DataBaseHelper;
import org.smart4j.plugin.security.SmartSecurity;

import java.util.Set;

public class AppRealm implements SmartSecurity{
    @Override
    public String getPassword(String s) {
       String sql="select password from user where name = ?";
       String result=DataBaseHelper.query(sql,s);
       return result;
    }

    @Override
    public Set<String> getRoleNameSet(String s) {
        return null;
    }

    @Override
    public Set<String> getPermissionNameSet(String s) {
        return null;
    }
}
