package mg.model;

import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "Employee", database = "parking", user = "postgres", password = "pgmhr2003", driver = "postgres")
public class Employee extends JDBC {
   @ColumnField(columnName = "idEmployee", primaryKey = true)
   private String idEmployee;
   @ColumnField(columnName = "idJob")
   private String idJob;
   @ColumnField(columnName = "nameEmployee")
   private String name;
   @ColumnField(columnName = "surnameEmployee")
   private String surname;
   @ColumnField(columnName = "phoneNumber")
   private String phoneNumber;
   @ColumnField(columnName = "Email")
   private String email;
   @ColumnField(columnName = "birthday")
   private Date birthday;
   @ColumnField(columnName = "hiringDate", defaultValue = true)
   private Date hiringDate;

   public Employee() throws SQLException, ClassNotFoundException {
      super();
      // TODO Auto-generated constructor stub
   }

   public Employee(String name, String surname, String birthday, String phoneNumber, String email, String idJob)
         throws ClassNotFoundException, SQLException {
      super();
      setName(name);
      setSurname(surname);
      setBirthday(birthday);
      setPhoneNumber(phoneNumber);
      setEmail(email);
      setIdJob(idJob);
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
    * @return Job return the job
    * @throws Exception
    */
   public Job getJob() throws Exception {
      Job job = new Job();
      return job.selectById(idJob);
   }

   /**
    * @return String return the name
    */
   @Getter(columnName = "nameEmployee")
   public String getName() {
      return name;
   }

   /**
    * @param name the name to set
    */
   @Setter(columnName = "nameEmployee")
   public void setName(String name) {
      this.name = name;
   }

   /**
    * @return String return the surname
    */
   @Getter(columnName = "surnameEmployee")
   public String getSurname() {
      return surname;
   }

   /**
    * @param surname the surname to set
    */
   @Setter(columnName = "surnameEmployee")
   public void setSurname(String surname) {
      this.surname = surname;
   }

   /**
    * @return String return the phoneNumber
    */
   @Getter(columnName = "phoneNumber")
   public String getPhoneNumber() {
      return phoneNumber;
   }

   /**
    * @param phoneNumber the phoneNumber to set
    */
   @Setter(columnName = "phoneNumber")
   public void setPhoneNumber(String phoneNumber) {
      if (!phoneNumber.trim().matches("^[0-9+]+$")) {
         throw new IllegalArgumentException("Phone number is invalidate");
      }
      this.phoneNumber = phoneNumber;
   }

   /**
    * @return String return the email
    */
   @Getter(columnName = "email")
   public String getEmail() {
      return email;
   }

   /**
    * @param email the email to set
    */
   @Setter(columnName = "email")
   public void setEmail(String email) {
      if (!email.matches("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$")) {
         throw new IllegalArgumentException("Your adresse email is invalidate");
      }
      this.email = email;
   }

   /**
    * @return Date return the birthday
    */
   @Getter(columnName = "birthday")
   public Date getBirthday() {
      return birthday;
   }

   public void setBirthday(String birthday) {
      this.setBirthday(Date.valueOf(birthday.trim()));
   }

   /**
    * @param birthday the birthday to set
    */
   @Setter(columnName = "birthday")
   public void setBirthday(Date birthday) {
      if (LocalDate.now().getYear() - birthday.toLocalDate().getYear() < 18) {
         throw new IllegalArgumentException("The age must be superior than 18 years");
      }
      this.birthday = birthday;
   }

   /**
    * @return Date return the hiringDate
    */
   @Getter(columnName = "hiringDate")
   public Date getHiringDate() {
      return hiringDate;
   }

   /**
    * @param hiringDate the hiringDate to set
    */
   @Setter(columnName = "hiringDate")
   public void setHiringDate(Date hiringDate) {
      this.hiringDate = hiringDate;
   }
}
