package mg.model;

import java.sql.SQLException;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "vehicletype", driver = "postgres", database = "parking", user = "postgres", password = "pgmhr2003")
public class VehicleType extends JDBC {
    public VehicleType() throws SQLException, ClassNotFoundException {
        super();
    }

    @ColumnField(columnName = "idvehicletype", defaultValue = false, primaryKey = true)
    private String idvehicletype;

    @ColumnField(columnName = "namevehicletype")
    private String namevehicletype;

    @Getter(columnName = "idvehicletype")
    public String getIdvehicletype() {
        return idvehicletype;
    }

    @Setter(columnName = "idvehicletype")
    public void setIdvehicletype(String id) {
        this.idvehicletype = id;
    }

    @Getter(columnName = "namevehicletype")
    public String getNameVehicleType() {
        return namevehicletype;
    }

    @Setter(columnName = "namevehicletype")
    public void setNameVehicleType(String name) {
        this.namevehicletype = name;
    }

    public VehicleType(String namevehicletype)
            throws SQLException, ClassNotFoundException {
        super();
        this.setNameVehicleType(namevehicletype);
    }

}
