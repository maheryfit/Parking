package mg.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class EmployeeSalary {
   private String idEmployee;
   private Employee activeEmployee;
   private double salary;
   private Job job;
   private String idJob;

   public EmployeeSalary() {
   };

   /**
    * @return String return the idEmployee
    */
   public String getIdEmployee() {
      return idEmployee;
   }

   /**
    * @param idEmployee the idEmployee to set
    */
   public void setIdEmployee(String idEmployee) {
      this.idEmployee = idEmployee;
   }

   /**
    * @return ActiveEmployee return the activeEmployee
    */
   public Employee getActiveEmployee() {
      return activeEmployee;
   }

   /**
    * @param activeEmployee the activeEmployee to set
    */
   public void setActiveEmployee(Employee activeEmployee) {
      this.activeEmployee = activeEmployee;
   }

   /**
    * @return double return the salary
    */
   public double getSalary() {
      return salary;
   }

   /**
    * @param salary the salary to set
    */
   public void setSalary(double salary) {
      this.salary = salary;
   }

   public EmployeeSalary(String idEmployee, double montant) throws ClassNotFoundException, SQLException, Exception {
      setIdEmployee(idEmployee);
      setSalary(montant);
      setActiveEmployee(new Employee().selectById(idEmployee));
   }

   public EmployeeSalary(String idJob, float montant) throws ClassNotFoundException, SQLException, Exception {
      setIdJob(idJob);
      setSalary(montant);
      setJob(new Job().selectById(idJob));
   }

   public List<EmployeeSalary> getSalariesPerPerson(Connection connection) throws ClassNotFoundException, Exception {
      List<EmployeeSalary> employeeSalaries = new ArrayList<>();
      try (Statement statement = connection.createStatement()) {
         try (ResultSet resultSet = statement.executeQuery(
               "SELECT idEmployee, SUM(salary) AS total_salary FROM workHour WHERE idEmployee IN (SELECT idEmployee FROM ActiveEmployee) GROUP BY idEmployee")) {
            while (resultSet.next()) {
               employeeSalaries
                     .add(new EmployeeSalary(resultSet.getString("idEmployee"), resultSet.getDouble("total_salary")));
            }
         }
      }
      return employeeSalaries;
   }

   public List<EmployeeSalary> getSalariesPerPersonPerMonth(Connection connection, int month)
         throws ClassNotFoundException, Exception {
      List<EmployeeSalary> employeeSalaries = new ArrayList<>();
      try (Statement statement = connection.createStatement()) {
         try (ResultSet resultSet = statement.executeQuery(
               "SELECT idEmployee, SUM(salary) AS total_salary FROM workHour WHERE EXTRACT(MONTH FROM dateHourWorkBegin) = "
                     + month + " AND idEmployee IN (SELECT idEmployee FROM ActiveEmployee) GROUP BY idEmployee")) {
            while (resultSet.next()) {
               employeeSalaries
                     .add(new EmployeeSalary(resultSet.getString("idEmployee"), resultSet.getDouble("total_salary")));
            }
         }
      }
      return employeeSalaries;
   }

   public List<EmployeeSalary> getSalariesPerPersonPerYear(Connection connection, int year)
         throws ClassNotFoundException, Exception {
      List<EmployeeSalary> employeeSalaries = new ArrayList<>();
      try (Statement statement = connection.createStatement()) {
         try (ResultSet resultSet = statement.executeQuery(
               "SELECT idEmployee, SUM(salary) AS total_salary FROM workHour WHERE EXTRACT(YEAR FROM dateHourWorkBegin) = "
                     + year + " AND idEmployee IN (SELECT idEmployee FROM ActiveEmployee) GROUP BY idEmployee")) {
            while (resultSet.next()) {
               employeeSalaries
                     .add(new EmployeeSalary(resultSet.getString("idEmployee"), resultSet.getDouble("total_salary")));
            }
         }
      }
      return employeeSalaries;
   }

   public List<Double> getSalaryPerYear(Connection connection, int year) throws SQLException {
      List<Double> getDoubles = new ArrayList<>();
      try (Statement statement = connection.createStatement()) {
         try (ResultSet resultSet = statement.executeQuery(
               "SELECT SUM(salary) as total_salary FROM workhour WHERE EXTRACT(YEAR FROM dateHourWorkBegin) = "
                     + year)) {
            while (resultSet.next()) {
               getDoubles
                     .add(resultSet.getDouble("total_salary"));
            }
         }
      }
      return getDoubles;
   }

   private List<EmployeeSalary> getSalaryPerJob(Connection connection, String idJob)
         throws ClassNotFoundException, SQLException, Exception {
      List<EmployeeSalary> employeeSalaries = new ArrayList<>();
      try (Statement statement = connection.createStatement()) {
         try (ResultSet resultSet = statement.executeQuery(
               "SELECT SUM(salary) as total_salary FROM workHour WHERE idEmployee IN(SELECT idEmployee FROM ActiveEmployee WHERE idJob = '"
                     + idJob + "')")) {
            String stringSalary;
            while (resultSet.next()) {
               stringSalary = "" + resultSet.getDouble("total_salary") + "";
               employeeSalaries
                     .add(new EmployeeSalary(idJob, Float.parseFloat(stringSalary)));
            }
         }
      }
      return employeeSalaries;
   }

   public List<EmployeeSalary> getSalaryPerJob(Connection connection)
         throws ClassNotFoundException, SQLException, Exception {
      List<EmployeeSalary> employeeSalaries = new ArrayList<>();
      LinkedList<Job> jobs = new Job().select();
      for (Job job : jobs) {
         employeeSalaries.addAll(getSalaryPerJob(connection, job.getIdJob()));
      }
      return employeeSalaries;
   }

   /**
    * @return Job return the job
    */
   public Job getJob() {
      return job;
   }

   /**
    * @param job the job to set
    */
   public void setJob(Job job) {
      this.job = job;
   }

   /**
    * @param idJob the idJob to set
    */
   public void setIdJob(String idJob) {
      this.idJob = idJob;
   }

   /**
    * @return String return the job
    */
   public String getIdJob() {
      return idJob;
   }
}
