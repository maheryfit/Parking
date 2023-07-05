package mg.model;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "EmployeeResigns", database = "parking", driver = "postgres", password = "pgmhr2003", user = "postgres")
public class EmployeeResigns extends JDBC {

   @ColumnField(columnName = "idEmployee")
   private String idEmployee;
   private Employee employee;
   @ColumnField(columnName = "resignDate", defaultValue = true)
   private Date resignDate;

   public EmployeeResigns() throws SQLException, ClassNotFoundException {
      super();
      // TODO Auto-generated constructor stub
   }

   public EmployeeResigns(String idEmployee) throws SQLException, ClassNotFoundException {
      super();
      setIdEmployee(idEmployee);
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
    * @return Date return the resignDate
    */
   @Getter(columnName = "resignDate")
   public Date getResignDate() {
      return resignDate;
   }

   /**
    * @param resignDate the resignDate to set
    */
   @Setter(columnName = "resignDate")
   public void setResignDate(Date resignDate) {
      this.resignDate = resignDate;
   }

   /**
    * @param resignDate the resignDate to set
    */
   public void setResignDate(String resignDate) {
      this.setResignDate(Date.valueOf(resignDate.trim()));
   }

   public List<EmployeeResigns> getEmployeeResigns() throws Exception {
      List<EmployeeResigns> list = this.select();
      for (int i = 0; i < list.size(); i++) {
         Employee employee = new Employee().selectById(list.get(i).idEmployee);
         list.get(i).employee = employee;
      }
      return list;
   }

   /**
    * @param employee the employee to set
    */
   public void setEmployee(Employee employee) {
      this.employee = employee;
   }

   /**
    * @param employee the employee to get
    */
   public Employee getEmployee() {
      return employee;
   }

}
