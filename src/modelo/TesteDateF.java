package modelo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.toedter.calendar.JCalendar;
import com.toedter.calendar.JDateChooser;
import com.toedter.calendar.JDateChooserCellEditor;

public class TesteDateF extends javax.swing.JFrame {

	TableCadItensEntregasMod table = new TableCadItensEntregasMod();

	public TesteDateF() {
		initComponents();
		CalendarioTableItensEntreguesVis();
		alturaCelulaTable();
	}

	public void addLinhaTabItensEntregaVis() {
		TableCadItensEntregasMod tabTeste = (TableCadItensEntregasMod) jTableTeste
				.getModel();
		tabTeste.adicionarLinhaAutoNum(new TesteDate());
	}

	// MÈtodo que inclui o calend√°rio no JTable
    public void CalendarioTableItensEntreguesVis() {
        JDateChooser dc = new JDateChooser();
        dc.setDateFormatString("dd/MM/yyyy");
        JDateChooserCellEditor dcc = new JDateChooserCellEditor();
        jTableTeste.getColumnModel().getColumn(0).setCellEditor(new JDateChooserCellEditor());

        //jTableTeste.getColumnModel().getColumn(0).setCellRenderer();
        //jTableTeste.setDefaultEditor(java.util.Date.class, new JDateChooserCellEditor());
        //jTableTeste.getColumnModel().getColumn(0).setCellRenderer();
    }

	public void alturaCelulaTable() {
		// jTableTeste.getColumnModel().getColumn(0).setWidth(20);
		jTableTeste.setRowHeight(25);
	}

	public String converteData(Date vdata) throws ParseException {

		Date hoje = vdata;
		System.out.println("A data de hoje È: " + hoje);
		String formato = "dd/MM/yyyy";
		SimpleDateFormat formatter = new SimpleDateFormat(formato);
		System.out.println("A data formatada È: " + formatter.format(hoje));

		return formatter.format(hoje);
	}

	///////////////////////////////////////////////////////////////////

	@SuppressWarnings("unchecked")
	// <editor-fold defaultstate="collapsed" desc="Generated
	// Code">//GEN-BEGIN:initComponents
	private void initComponents() {

		jScrollPane1 = new javax.swing.JScrollPane();
		jTableTeste = new javax.swing.JTable();
		jButton1 = new javax.swing.JButton();
		jButton2 = new javax.swing.JButton();

		setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

		jScrollPane1.setViewportView(jTableTeste);

		jButton1.setText("jButton1");
		jButton1.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				jButton1ActionPerformed(evt);
			}
		});

		jButton2.setText("jButton2");
		jButton2.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				jButton2ActionPerformed(evt);
			}
		});

		javax.swing.GroupLayout layout = new javax.swing.GroupLayout(
				getContentPane());
		getContentPane().setLayout(layout);
		layout.setHorizontalGroup(layout
				.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
				.addGroup(layout.createSequentialGroup().addContainerGap()
						.addComponent(jScrollPane1,
								javax.swing.GroupLayout.PREFERRED_SIZE, 322,
								javax.swing.GroupLayout.PREFERRED_SIZE)
						.addGap(28, 28, 28).addComponent(jButton1)
						.addGap(14, 14, 14).addComponent(jButton2)
						.addContainerGap(60, Short.MAX_VALUE)));
		layout.setVerticalGroup(layout
				.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
				.addGroup(layout.createSequentialGroup().addContainerGap()
						.addGroup(layout.createParallelGroup(
								javax.swing.GroupLayout.Alignment.LEADING)
								.addComponent(jButton1).addComponent(jButton2)
								.addComponent(jScrollPane1,
										javax.swing.GroupLayout.PREFERRED_SIZE,
										194,
										javax.swing.GroupLayout.PREFERRED_SIZE))
						.addContainerGap(20, Short.MAX_VALUE)));

		pack();

		jTableTeste.setModel(table);

	}// </editor-fold>//GEN-END:initComponents

	private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_jButton1ActionPerformed
		addLinhaTabItensEntregaVis();
	}// GEN-LAST:event_jButton1ActionPerformed

	private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_jButton1ActionPerformed
		Date dat = new Date();

		try {
			converteData(dat);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// GEN-LAST:event_jButton1ActionPerformed

	public static void main(String args[]) {

		try {
			for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager
					.getInstalledLookAndFeels()) {
				if ("Nimbus".equals(info.getName())) {
					javax.swing.UIManager.setLookAndFeel(info.getClassName());
					break;
				}
			}
		} catch (ClassNotFoundException ex) {
			java.util.logging.Logger.getLogger(TesteDateF.class.getName())
					.log(java.util.logging.Level.SEVERE, null, ex);
		} catch (InstantiationException ex) {
			java.util.logging.Logger.getLogger(TesteDateF.class.getName())
					.log(java.util.logging.Level.SEVERE, null, ex);
		} catch (IllegalAccessException ex) {
			java.util.logging.Logger.getLogger(TesteDateF.class.getName())
					.log(java.util.logging.Level.SEVERE, null, ex);
		} catch (javax.swing.UnsupportedLookAndFeelException ex) {
			java.util.logging.Logger.getLogger(TesteDateF.class.getName())
					.log(java.util.logging.Level.SEVERE, null, ex);
		}

		java.awt.EventQueue.invokeLater(new Runnable() {
			public void run() {
				new TesteDateF().setVisible(true);
			}
		});
	}

	// Variables declaration - do not modify//GEN-BEGIN:variables
	private javax.swing.JButton jButton1;
	private javax.swing.JButton jButton2;
	private javax.swing.JScrollPane jScrollPane1;
	private javax.swing.JTable jTableTeste;
	// End of variables declaration//GEN-END:variables
}
