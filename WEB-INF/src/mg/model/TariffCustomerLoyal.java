/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mg.model;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

/**
 *
 * @author WINDOWS 10
 */
@TableName(name = "tariffcustomerloyal", driver = "postgres", database = "parking", user = "postgres", password = "pgmhr2003")
public class TariffCustomerLoyal extends JDBC {

    public TariffCustomerLoyal() throws Exception {
    }

    @ColumnField(columnName = "idTariffCustomerLoyal", primaryKey = true)
    String idTariffCustomerLoyal;
    @ColumnField(columnName = "value")
    double value;

    @Getter(columnName = "idTariffCustomerLoyal")
    public String getIdTariifCustomerLoyal() {
        return idTariffCustomerLoyal;
    }

    @Setter(columnName = "idTariffCustomerLoyal")
    public void setIdTariifCustomerLoyal(String idTariffCustomerLoyal) {
        this.idTariffCustomerLoyal = idTariffCustomerLoyal;
    }

    @Getter(columnName = "value")
    public double getValue() {
        return value;
    }

    @Setter(columnName = "value")
    public void setValue(double value) {
        this.value = value;
    }

}
