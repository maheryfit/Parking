package mg.model;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import java.sql.SQLException;
import java.sql.Time;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "WorkHour", database = "parking", driver = "postgres", password = "pgmhr2003", user = "postgres")
public class WorkHour extends JDBC {
   @ColumnField(columnName = "idEmployee")
   private String idEmployee;
   private Employee employee;
   @ColumnField(columnName = "dateHourWorkBegin")
   private Timestamp dateHourWorkBegin;
   @ColumnField(columnName = "dateHourWorkFinish")
   private Timestamp dateHourWorkFinish;
   @ColumnField(columnName = "duration")
   private Time duration;
   @ColumnField(columnName = "salary")
   private double salary;

   public WorkHour() throws SQLException, ClassNotFoundException {
      super();
      // TODO Auto-generated constructor stub
   }

   public WorkHour(String idEmployee, String dateHourWorkBegin, String duration)
         throws Exception {
      super();
      setIdEmployee(idEmployee);
      setDateHourWorkBegin(dateHourWorkBegin);
      setDuration(duration);
      setDateHourWorkFinish(dateHourWorkBegin, duration);
      this.employee = new Employee();
      this.employee = this.employee.selectById(idEmployee);
      setSalary(this.employee.getJob().getSalary() * this.duration.toLocalTime().getHour());
   }

   /**
    * @return String return the idEmployee
    */
   @Getter(columnName = "idEmployee")
   public String getIdEmployee() {
      return idEmployee;
   }

   /**
    * @param idEmployee the idEmployee to set
    */
   @Setter(columnName = "idEmployee")
   public void setIdEmployee(String idEmployee) {
      this.idEmployee = idEmployee;
   }

   /**
    * @return Timestamp return the dateHourWorkBegin
    */
   @Getter(columnName = "dateHourWorkBegin")
   public Timestamp getDateHourWorkBegin() {
      return dateHourWorkBegin;
   }

   /**
    * @param dateHourWorkBegin the dateHourWorkBegin to set
    */
   @Setter(columnName = "dateHourWorkBegin")
   public void setDateHourWorkBegin(Timestamp dateHourWorkBegin) {
      Timestamp dateNow = Timestamp.valueOf(LocalDateTime.now());
      if (dateNow.after(dateHourWorkBegin)) {
         throw new IllegalArgumentException("Reverify your date hour work begin");
      }
      this.dateHourWorkBegin = dateHourWorkBegin;
   }

   /**
    * @param dateHourWorkBegin the dateHourWorkBegin to set
    */
   public void setDateHourWorkBegin(String dateHourWorkBegin) {
      setDateHourWorkBegin(Timestamp.valueOf(dateHourWorkBegin.trim()));
   }

   /**
    * @return Timestamp return the dateHourWorkFinish
    */
   @Getter(columnName = "dateHourWorkFinish")
   public Timestamp getDateHourWorkFinish() {
      return dateHourWorkFinish;
   }

   /**
    * @param dateHourWorkFinish the dateHourWorkFinish to set
    */
   @Setter(columnName = "dateHourWorkFinish")
   public void setDateHourWorkFinish(Timestamp dateHourWorkFinish) {
      this.dateHourWorkFinish = dateHourWorkFinish;
   }

   /**
    * 
    * @param dateHourWorkBegin
    * @param duration
    */
   public void setDateHourWorkFinish(Timestamp dateHourWorkBegin, Time duration) {
      // Convertir le timestamp en LocalDateTime
      LocalDateTime localDateTime = dateHourWorkBegin.toLocalDateTime();

      // Ajouter la durée (time) à LocalDateTime
      LocalDateTime resultat = localDateTime.plusHours(duration.toLocalTime().getHour());

      // Convertir le résultat en Timestamp
      setDateHourWorkFinish(Timestamp.valueOf(resultat));
   }

   /**
    * 
    * @param dateHourWorkBegin
    * @param duration
    */
   public void setDateHourWorkFinish(String dateHourWorkBegin, String duration) {
      setDateHourWorkFinish(Timestamp.valueOf(dateHourWorkBegin.trim()), Time.valueOf(duration.trim()));
   }

   /**
    * @return Time return the duration
    */
   @Getter(columnName = "duration")
   public Time getDuration() {
      return duration;
   }

   /**
    * @param duration the duration to set
    */
   @Setter(columnName = "duration")
   public void setDuration(Time duration) {
      this.duration = duration;
   }

   /**
    * @param duration the duration to set
    */
   @Setter(columnName = "duration")
   public void setDuration(String duration) {
      setDuration(Time.valueOf(duration));
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
      this.salary = salary;
   }

   /**
    * @param salary the salary to set
    */
   public void setSalary(String salary) {
      setSalary(Double.parseDouble(salary));
   }

   /**
    * @return Employee return the employee
    */
   public Employee getEmployee() {
      return employee;
   }

   /**
    * @param employee the employee to set
    */
   public void setEmployee(Employee employee) {
      this.employee = employee;
   }

}
