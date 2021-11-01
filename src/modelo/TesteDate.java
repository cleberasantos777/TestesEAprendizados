package modelo;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class TesteDate {
	
	private DateTimeFormatter fmt = DateTimeFormatter.ofPattern("dd/MM/uuuu");

	private LocalDate data;
	private String dtString;

	public TesteDate() {
	}

	public LocalDate getData() {
		return data;
	}
	
	public void setData(LocalDate data) {
		this.data = data;
	}
	
	public String getDataString() {
		return dtString;
	}

	public void setDataString(LocalDate ld) {
		this.dtString = ld.format(fmt);
	}
}
