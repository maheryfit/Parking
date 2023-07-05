package mg.model;

import java.sql.SQLException;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "Job", database = "parking", driver = "postgres", password = "pgmhr2003", user = "postgres")
public class Job extends JDBC {
   @ColumnField(columnName = "idJob", primaryKey = true)
   private String idJob;
   @ColumnField(columnName = "nameJob")
   private String nameJob;
   @ColumnField(columnName = "salary")
   private double salary;

   public Job() throws SQLException, ClassNotFoundException {
      super();
   }

   public Job(String nameJob, String salary) throws ClassNotFoundException, SQLException {
      super();
      setNameJob(nameJob);
      setSalary(salary);
   }

   /**
    * @return String return the idJob
    */
   @Getter(columnName = "idJob")
   public String getIdJob() {
      return idJob;
   }

   /**
    * @param idJob the idJob to set
    */
   @Setter(columnName = "idJob")
   public void setIdJob(String idJob) {
      this.idJob = idJob;
   }

   /**
    * @return String return the nameJob
    */
   @Getter(columnName = "nameJob")
   public String getNameJob() {
      return nameJob;
   }

   /**
    * @param nameJob the nameJob to set
    */
   @Setter(columnName = "nameJob")
   public void setNameJob(String nameJob) {
      if (nameJob == null || nameJob == "") {
         throw new IllegalArgumentException("Name job is invalidate");
      }
      this.nameJob = nameJob;
   }

   /**
    * @return double return the salary
    */
   @Getter(columnName = "salary")
   public double getSalary() {
      return salary;
   }

   /**
    * @param salary the salary to set
    */
   @Setter(columnName = "salary")
   public void setSalary(double salary) {
      if (salary < 500) {
         throw new IllegalArgumentException("Salary must be superior of 500 ariary");
      }
      this.salary = salary;
   }

   /**
    * @param salary the salary to set
    */
   public void setSalary(String salary) {
      setSalary(Double.parseDouble(salary.trim()));
   }

}
