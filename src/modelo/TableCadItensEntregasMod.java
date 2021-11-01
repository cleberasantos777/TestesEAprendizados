package modelo;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.ResolverStyle;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.swing.event.EventListenerList;
import javax.swing.table.AbstractTableModel;

public class TableCadItensEntregasMod extends AbstractTableModel {

	private final SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

	private DateFormat df = new SimpleDateFormat("dd/MM/yyyy");

	private DateTimeFormatter fmt = DateTimeFormatter.ofPattern("dd/MM/uuuu")
			.withResolverStyle(ResolverStyle.STRICT);

	private List<TesteDate> linhas = new ArrayList<>();
	private String[] colunas = {"Data"};

	public TableCadItensEntregasMod() {
		this.linhas = new ArrayList<>();
	}
	// ------------------------------------------------------------------------------

	@Override
	public int getColumnCount() {
		return this.colunas.length;
	} // Pega as colunas
		// --------------------------------------------------------------------------

	@Override
	public int getRowCount() {
		return this.linhas.size();
	} // Pega as linhas
		// ------------------------------------------------------------------------------

	@Override
	public String getColumnName(int nomeColunas) {
		return colunas[nomeColunas];
	} // Pega os nomes das colunas
		// ------------------------------------------------------------------------------

	// Pega os Valores
	@Override
	public Object getValueAt(int linha, int coluna) {
		switch (coluna) {
			case 0 :
				// return linhas.get(linha).getData();
				// return sdf.format(linhas.get(linha).getData());
				// return sdf.format(linhas.get(linha));
				//return linhas.get(linha).getData();
				return linhas.get(linha).getDataString();
		}
		return null;
	}
	// ------------------------------------------------------------------------------

	// Atualiza as linhas na view
	@Override
	public void setValueAt(Object valor, int linha, int coluna) {
		switch (coluna) {
			case 0 :
				Date dt = (Date) valor;
				Instant i = dt.toInstant();
				ZonedDateTime zdt = i.atZone(ZoneId.of("America/Sao_Paulo"));
				LocalDate ld = zdt.toLocalDate();
				//linhas.get(linha).setData(ld);
				linhas.get(linha).setDataString(ld);
				// linhas.get(linha).setData(sdf.parse(valor.toString()));
				// linhas.get(linha).setDataPrevDev(sdf.parse(valor.toString()));
				break;
		}
		this.fireTableRowsUpdated(linha, linha);
	}
	// ------------------------------------------------------------------------------

	@Override
	public boolean isCellEditable(int linha, int coluna) {
		switch (coluna) {
			case 0 :
		}
		return true;
	}

	// ------------------------------------------------------------------------------
	public void adicionarLinhaAutoNum(TesteDate cEMod) {
		this.linhas.add(cEMod);
		this.fireTableDataChanged();
	} // Adiciona as linhas na view
		// ------------------------------------------------------------------------------

	public void removerLinha(int linha) {
		this.linhas.remove(linha);
		this.fireTableDataChanged();
		// this.fireTableRowsDeleted(linha, linha);
	} // Remove as linhas na view
		// ------------------------------------------------------------------------------

	public void add(TesteDate cEMod) {
		this.linhas.add(cEMod);
		this.fireTableDataChanged();
	}
	// ------------------------------------------------------------------------------

	public void addAll(List<TesteDate> dados) {
		this.linhas.addAll(dados);
		fireTableDataChanged();
	}
	// ------------------------------------------------------------------------------

	private int indexOf(TesteDate c) {
		return this.linhas.indexOf(c);
	}
	// ------------------------------------------------------------------------------

	public List<TesteDate> getDados() {
		return linhas;
	}
	// ------------------------------------------------------------------------------

	public String[] getColunas() {
		return colunas;
	}
	// ------------------------------------------------------------------------------

	public void setColunas(String[] nomes) {
		colunas = nomes;
	}
	// ------------------------------------------------------------------------------

	public void removeRow(int row) {
		getLinhas().remove(row);
		fireTableRowsDeleted(row, row);
	}
	// ------------------------------------------------------------------------------

	public void removerLinhatst(int linha) {
		this.linhas.remove(linha);
		this.fireTableDataChanged();
	}
	// ------------------------------------------------------------------------------

	public void limpaTabela() {
		// int size = 0;
		this.linhas.clear();
		fireTableRowsDeleted(0, 0);
	}
	// ------------------------------------------------------------------------------

	public List<TesteDate> getLinhas() {
		return linhas;
	}

	public void setLinhas(List<TesteDate> linhas) {
		this.linhas = linhas;
	}

	public EventListenerList getListenerList() {
		return listenerList;
	}

	public void setListenerList(EventListenerList listenerList) {
		this.listenerList = listenerList;
	}

}
