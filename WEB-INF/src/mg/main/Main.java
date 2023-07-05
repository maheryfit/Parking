package mg.main;

import java.sql.Connection;
import java.util.List;

import mg.connection.PostgresqlConnection;
import mg.model.EmployeeSalary;

public class Main {
   public static void main(String[] args) throws Exception {
      Connection connection = PostgresqlConnection.getConnection("parking", "postgres", "pgmhr2003");
      List<EmployeeSalary> list = new EmployeeSalary().getSalariesPerPerson(connection);
      for (EmployeeSalary employeeSalary : list) {
         System.out.println(
               employeeSalary.getActiveEmployee().getName() + " "
                     + employeeSalary.getSalary());
      }
   }
}
