package mg.model;

import java.sql.SQLException;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "servicetariff", driver = "postgres", database = "parking", user = "postgres", password = "pgmhr2003")
public class ServiceTariff extends JDBC {
    public ServiceTariff() throws SQLException, ClassNotFoundException {
        super();
    }

    @ColumnField(columnName = "idService")
    private String idService;

    @ColumnField(columnName = "idvehicletype")
    private String idvehicletype;

    @ColumnField(columnName = "amount")
    private double amount;

    @Getter(columnName = "idService")
    public String getIdService() {
        return idService;
    }

    @Setter(columnName = "idService")
    public void setIdService(String id) {
        this.idService = id;
    }

    @Getter(columnName = "idvehicletype")
    public String getIdvehicletype() {
        return idvehicletype;
    }

    @Setter(columnName = "idvehicletype")
    public void setIdvehicletype(String id) {
        this.idvehicletype = id;
    }

    @Getter(columnName = "amount")
    public double getAmount() {
        return amount;
    }

    @Setter(columnName = "amount")
    public void setAmount(double amount) {
        this.amount = amount;
    }

    public ServiceTariff(String idservice, String idvehicletype, double amount)
            throws SQLException, ClassNotFoundException {
        super();
        this.setIdService(idservice);
        this.setIdvehicletype(idvehicletype);
        this.setAmount(amount);
    }

}
