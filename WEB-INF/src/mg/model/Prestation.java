package mg.model;

import java.util.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.LinkedList;

import mg.annotation.ColumnField;
import mg.annotation.Getter;
import mg.annotation.Setter;
import mg.annotation.TableName;
import mg.table.JDBC;

@TableName(name = "prestation", driver = "postgres", database = "parking", user = "postgres", password = "pgmhr2003")
public class Prestation extends JDBC {

    public Prestation(String idCustomer, String idService, String dateStart,
            double duration, String idPlace, String matricule, String idTypeVehicle)
            throws SQLException, ClassNotFoundException, Exception {
        super();
        setIdCustomer(idCustomer);
        setIdService(idService);
        setDateStart(dateStart);
        setDuration(duration);
        setDateEnd();
        setIdPlace(idPlace);
        setMatricule(matricule);
        setIdTypeVehicle(idTypeVehicle);
        setAmount();

    }

    public Prestation() throws SQLException, ClassNotFoundException {
        super();
        // TODO Auto-generated constructor stub
    }

    @ColumnField(columnName = "idPrestation", primaryKey = true)
    String idPrestation;
    @ColumnField(columnName = "idCustomer")
    String idCustomer;
    @ColumnField(columnName = "idService")
    String idService;
    @ColumnField(columnName = "dateStart")
    Date dateStart;
    @ColumnField(columnName = "dateEnd")
    Date dateEnd;
    @ColumnField(columnName = "duration")
    double duration;
    @ColumnField(columnName = "idPlace")
    String idPlace;
    @ColumnField(columnName = "matricule")
    String matricule;
    @ColumnField(columnName = "idTypeVehicle")
    String idTypeVehicle;
    @ColumnField(columnName = "amount")
    double amount;

    public String formatTime(Date date) {
        SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
        return timeFormat.format(date);
    }

    public String formatDate(Date date) {
        SimpleDateFormat timeFormat = new SimpleDateFormat("dd/MM/yyyy");
        return timeFormat.format(date);
    }

    @Getter(columnName = "idPrestation")
    public String getIdPrestation() {
        return idPrestation;
    }

    @Setter(columnName = "idPrestation")
    public void setIdPrestation(String idPrestation) {
        this.idPrestation = idPrestation;
    }

    @Getter(columnName = "idCustomer")
    public String getIdCustomer() {
        return idCustomer;
    }

    @Setter(columnName = "idCustomer")
    public void setIdCustomer(String idCustomer) {
        this.idCustomer = idCustomer;
    }

    @Getter(columnName = "idService")
    public String getIdService() {
        return idService;
    }

    @Setter(columnName = "idService")
    public void setIdService(String idService) {
        this.idService = idService;
    }

    @Getter(columnName = "dateStart")
    public Date getDateStart() {
        return dateStart;
    }

    @Setter(columnName = "dateStart")
    public void setDateStart(Date dateStart) {
        Date today = new Date(System.currentTimeMillis());
        if (today.compareTo(dateStart) > 0) {
            throw new IllegalArgumentException("The start date must be superior than the date of today");
        }
        this.dateStart = dateStart;
    }

    public void setDateStart(String dateStart) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        LocalDateTime localDateTime = LocalDateTime.parse(dateStart, formatter);
        Timestamp timestamp = Timestamp.valueOf(localDateTime);
        this.setDateStart(new Date(timestamp.getTime()));
    }

    @Getter(columnName = "dateEnd")
    public Date getDateEnd() {
        return dateEnd;
    }

    @Setter(columnName = "dateEnd")
    public void setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }

    public void setDateEnd() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(this.dateStart);
        calendar.add(Calendar.HOUR_OF_DAY, (int) this.duration);

        Date end = calendar.getTime();

        this.setDateEnd(end);
    }

    @Getter(columnName = "duration")
    public double getDuration() {
        return duration;
    }

    @Setter(columnName = "duration")
    public void setDuration(double duration) {
        this.duration = Math.ceil(duration);
    }

    @Getter(columnName = "idPlace")
    public String getIdPlace() {
        return idPlace;
    }

    @Setter(columnName = "idPlace")
    public void setIdPlace(String idPlace) {
        this.idPlace = idPlace;
    }

    @Getter(columnName = "matricule")
    public String getMatricule() {
        return matricule;
    }

    @Setter(columnName = "matricule")
    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    @Getter(columnName = "idTypeVehicle")
    public String getIdTypeVehicle() {
        return idTypeVehicle;
    }

    @Setter(columnName = "idTypeVehicle")
    public void setIdTypeVehicle(String idTypeVehicle) {
        this.idTypeVehicle = idTypeVehicle;
    }

    @Getter(columnName = "amount")
    public double getAmount() {
        return amount;
    }

    @Setter(columnName = "amount")
    public void setAmount(double amount) {
        this.amount = amount;
    }

    public void setAmount() throws Exception {
        ServiceTariff tarif = new ServiceTariff();
        LinkedList<ServiceTariff> tarifs = tarif.select(
                "WHERE idService ='" + this.idService + "' AND idVehicleType='" + this.idTypeVehicle + "'");
        tarif = (ServiceTariff) tarifs.get(0);
        double value = tarif.getAmount() * this.duration;
        setAmount(value);
    }

}
