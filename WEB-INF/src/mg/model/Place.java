package mg.model;

import java.sql.SQLException;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "place", driver = "postgres", database = "parking", user = "postgres", password = "pgmhr2003")
public class Place extends JDBC {
    public Place() throws SQLException, ClassNotFoundException {
        super();
    }

    @ColumnField(columnName = "idPlace", defaultValue = false, primaryKey = true)
    private String idPlace;

    @ColumnField(columnName = "namePlace")
    private String namePlace;

    @Getter(columnName = "idPlace")
    public String getIdPlace() {
        return idPlace;
    }

    @Setter(columnName = "idPlace")
    public void setIdPlace(String idPlace) {
        this.idPlace = idPlace;
    }

    @Getter(columnName = "namePlace")
    public String getNamePlace() {
        return namePlace;
    }

    @Setter(columnName = "namePlace")
    public void setNamePlace(String namePlace) {
        this.namePlace = namePlace;
    }

    public Place(String nameplace)
            throws SQLException, ClassNotFoundException {
        super();
        this.setNamePlace(nameplace);
    }

}
