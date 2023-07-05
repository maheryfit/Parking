package mg.model;

import java.sql.Date;
import java.sql.SQLException;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "discount", driver = "postgres", database = "parking", user = "postgres", password = "pgmhr2003")
public class Discount extends JDBC {
    public Discount() throws SQLException, ClassNotFoundException {
        super();
    }

    @ColumnField(columnName = "idService")
    private String idService;

    @ColumnField(columnName = "dateHeureDebut")
    private Date dateHeureDebut;

    @ColumnField(columnName = "dateHeureFin")
    private Date dateHeureFin;

    @ColumnField(columnName = "discount_rate")
    private double discount_rate;

    @Getter(columnName = "idService")
    public String getIdService() {
        return idService;
    }

    @Setter(columnName = "idService")
    public void setIdService(String id) {
        this.idService = id;
    }

    @Getter(columnName = "dateHeureDebut")
    public Date getDateHeureDebut() {
        return dateHeureDebut;
    }

    @Setter(columnName = "dateHeureDebut")
    public void setDateHeureDebut(Date date) {
        this.dateHeureDebut = date;
    }

    @Getter(columnName = "dateHeureFin")
    public Date getDateHeureFin() {
        return dateHeureFin;
    }

    @Setter(columnName = "dateHeureFin")
    public void setDateHeureFin(Date date) {
        this.dateHeureFin = date;
    }

    @Getter(columnName = "discount_rate")
    public double getDiscountRate() {
        return discount_rate;
    }

    @Setter(columnName = "discount_rate")
    public void setDiscountRate(double discount) {
        this.discount_rate = discount;
    }

    public Discount(String idservice, Date dateheuredebut, Date dateheurefin, double discount_rate)
            throws SQLException, ClassNotFoundException {
        super();
        this.setIdService(idservice);
        this.setDateHeureDebut(dateheuredebut);
        this.setDateHeureFin(dateheurefin);
        this.setDiscountRate(discount_rate);
    }

}
