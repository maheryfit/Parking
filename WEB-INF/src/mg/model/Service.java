package mg.model;

import java.sql.SQLException;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "service", driver = "postgres", database = "parking", user = "postgres", password = "pgmhr2003")
public class Service extends JDBC {
    public Service() throws SQLException, ClassNotFoundException {
        super();
    }

    @ColumnField(columnName = "idService", defaultValue = true, primaryKey = true)
    private String idService;

    @ColumnField(columnName = "nameService")
    private String nameService;

    @Getter(columnName = "idService")
    public String getIdService() {
        return idService;
    }

    @Setter(columnName = "idService")
    public void setIdService(String idService) {
        this.idService = idService;
    }

    @Getter(columnName = "nameService")
    public String getNameService() {
        return nameService;
    }

    @Setter(columnName = "nameService")
    public void setNameService(String nameService) {
        this.nameService = nameService;
    }

    public Service(String nameservice)
            throws SQLException, ClassNotFoundException {
        super();
        this.setNameService(nameservice);
    }

}
