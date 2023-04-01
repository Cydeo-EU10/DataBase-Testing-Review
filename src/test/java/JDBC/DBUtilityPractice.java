package JDBC;

import org.junit.jupiter.api.*;
import utilities.*;

import java.util.*;

public class DBUtilityPractice {

    String query = "Select * from Employees";

    @Test
    public void test1(){
        DBUtils.createConnection();
        List<List<Object>> result = DBUtils.getQueryResultList(query);
        for (int i = 0; i < 10; i++) {
            System.out.println(result.get(i));
        }
    }

    @Test
    public void test2(){
        DBUtils.createConnection();
        List<Map<String,Object>> result = DBUtils.getQueryResultMap(query);
        for (int i = 0; i < 10; i++) {
            System.out.println(result.get(i));
        }
    }

    @Test
    public void test3(){
        DBUtils.createConnection();
        List<Object> result = DBUtils.getColumnData(query,"PHONE_NUMBER");
        for (int i = 0; i < 10; i++) {
            System.out.println(result.get(i));
        }
    }

    @Test
    public void test4(){
        DBUtils.createConnection();
        List<String> result = DBUtils.getColumnNames(query);
        for (int i = 0; i < 10; i++) {
            System.out.println(result.get(i));
        }
    }
}
