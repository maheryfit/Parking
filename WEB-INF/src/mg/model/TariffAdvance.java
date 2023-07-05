package mg.model;

import java.sql.SQLException;
import java.sql.Time;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "tariffadvance", driver = "postgres", database = "parking", user = "postgres", password = "pgmhr2003")
public class TariffAdvance extends JDBC {
    public TariffAdvance() throws SQLException, ClassNotFoundException {
        super();
    }

    @ColumnField(columnName = "idService")
    private String idService;

    @ColumnField(columnName = "timestart")
    private Time timestart;

    @ColumnField(columnName = "timeend")
    private Time timeend;

    @ColumnField(columnName = "advancement_rate")
    private double advancement_rate;

    @Getter(columnName = "idService")
    public String getIdService() {
        return idService;
    }

    @Setter(columnName = "idService")
    public void setIdService(String id) {
        this.idService = id;
    }

    @Getter(columnName = "timestart")
    public Time getTimestart() {
        return timestart;
    }

    @Setter(columnName = "timestart")
    public void setTimestart(Time time) {
        this.timestart = time;
    }

    @Getter(columnName = "timeend")
    public Time getTimeend() {
        return timeend;
    }

    @Setter(columnName = "timeennd")
    public void setTimeend(Time time) {
        this.timeend = time;
    }

    @Getter(columnName = "advancement_rate")
    public double getAdvancementRate() {
        return advancement_rate;
    }

    @Setter(columnName = "advancement_rate")
    public void setAdvancementRate(double rate) {
        this.advancement_rate = rate;
    }

    public TariffAdvance(String idservice, Time timestart, Time timeend, double rate)
            throws SQLException, ClassNotFoundException {
        super();
        this.setIdService(idservice);
        this.setTimestart(timestart);
        this.setTimeend(timeend);
        this.setAdvancementRate(rate);
    }

}
