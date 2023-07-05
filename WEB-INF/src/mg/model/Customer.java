package mg.model;

import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.LinkedList;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "Customer", database = "parking", driver = "postgres", password = "pgmhr2003", user = "postgres")
public class Customer extends JDBC {

   @ColumnField(columnName = "idCustomer", primaryKey = true)
   private String idCustomer;

   @ColumnField(columnName = "name")
   private String name;

   @ColumnField(columnName = "surname")
   private String surname;

   @ColumnField(columnName = "phoneNumber")
   private String phoneNumber;

   @ColumnField(columnName = "email")
   private String email;

   @ColumnField(columnName = "birthday")
   private Date birthday;

   @ColumnField(columnName = "registrationDate")
   private Date registrationDate;

   @ColumnField(columnName = "loyalty")
   private int loyalty;

   @ColumnField(columnName = "isAdmin")
   private int isAdmin;

   @ColumnField(columnName = "password")
   private String password;

   public Customer() throws ClassNotFoundException, SQLException {
      super();
   }

   public Customer(String name, String surname, String phoneNumber, String email, String birthday,
         String registrationDate, String password) throws ClassNotFoundException, SQLException {
      super();
      setName(name);
      setSurname(surname);
      setBirthday(birthday);
      setEmail(email);
      setPassword(password);
      setPhoneNumber(phoneNumber);
      setRegistrationDate(registrationDate);
      setIsAdmin(0);
      setLoyalty(0);
   }

   /**
    * @return String return the idCustomer
    */
   @Getter(columnName = "idCustomer")
   public String getIdCustomer() {
      return idCustomer;
   }

   /**
    * @param name the idCustomer to set
    */
   @Setter(columnName = "idCustomer")
   public void setIdCustomer(String idCustomer) {
      this.idCustomer = idCustomer.trim();
   }

   /**
    * @return String return the name
    */
   @Getter(columnName = "name")
   public String getName() {
      return name;
   }

   /**
    * @param name the name to set
    */
   @Setter(columnName = "name")
   public void setName(String name) {
      this.name = name.trim();
   }

   /**
    * @return String return the surname
    */
   @Getter(columnName = "surname")
   public String getSurname() {
      return surname;
   }

   /**
    * @param surname the surname to set
    */
   @Setter(columnName = "surname")
   public void setSurname(String surname) {
      this.surname = surname.trim();
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
      this.phoneNumber = phoneNumber.trim();
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
      this.email = email.trim();
   }

   /**
    * @return Date return the registrationDate
    */
   @Getter(columnName = "registrationDate")
   public Date getRegistrationDate() {
      return registrationDate;
   }

   /**
    * @param registrationDate the registrationDate to set
    */
   public void setRegistrationDate(String registrationDate) {
      this.setRegistrationDate(Date.valueOf(registrationDate.trim()));
   }

   /**
    * @param birthday the registrationDate to set
    */
   @Setter(columnName = "registrationDate")
   public void setRegistrationDate(Date registrationDate) {
      this.registrationDate = registrationDate;
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
    * @return int return the loyalty
    */
   @Getter(columnName = "loyalty")
   public int getLoyalty() {
      return loyalty;
   }

   /**
    * @param loyalty the loyalty to set
    */
   @Setter(columnName = "loyalty")
   public void setLoyalty(int loyalty) {
      this.loyalty = loyalty;
   }

   /**
    * @return int return the isAdmin
    */
   @Getter(columnName = "isAdmin")
   public int getIsAdmin() {
      return isAdmin;
   }

   /**
    * @param isAdmin the isAdmin to set
    */
   @Setter(columnName = "isAdmin")
   public void setIsAdmin(int isAdmin) {
      this.isAdmin = isAdmin;
   }

   /**
    * @return String return the password
    */
   @Getter(columnName = "password")
   public String getPassword() {
      return password;
   }

   /**
    * @param password the password to set
    */
   @Setter(columnName = "password")
   public void setPassword(String password) {
      if (password.trim().length() < 5) {
         throw new IllegalArgumentException("Password length must have 5 or more size");
      }
      this.password = password.trim();
   }

   public boolean signUp() throws Exception {
      try {
         return this.insert();
      } catch (Exception e) {
         throw new Exception("Insert failed", new Throwable(e.getMessage(), e.getCause()));
      }
   }

   public String signIn(String email, String phoneNumber, String password) throws Exception {
      Customer customer = new Customer();
      LinkedList<Object> customerLinkedList = customer.select(
            "WHERE (email = '" + email + "' OR phoneNumber = '" + phoneNumber + "')" + " AND password = '" + password
                  + "'");
      if (customerLinkedList.isEmpty()) {
         throw new Exception("Email or phone number or password is incorrect");
      }
      customer = (Customer) customerLinkedList.get(0);
      return customer.idCustomer;
   }

   public String signIn(String email, String password) throws Exception {
      return signIn(email, email, password);
   }

   public void changeLoyalty(String loyalty) throws Exception {
      try {
         boolean response = this.update("loyalty", loyalty);
         if (!response) {
            throw new Exception("Loyalty unchanged");
         }
      } catch (Exception e) {
         throw new Exception("Loyalty unchanged", new Throwable(e.getMessage(), e.getCause()));
      }
   }

   public LinkedList<Customer> getCustomerLoyal() throws Exception {
      LinkedList<Customer> customerLoyal = new LinkedList<Customer>();
      LinkedList<Object> customerLinkedList = this.select("WHERE loyalty > 0");
      for (Object object : customerLinkedList) {
         customerLoyal.add((Customer) object);
      }
      return customerLoyal;
   }
}
