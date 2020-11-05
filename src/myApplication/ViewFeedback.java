/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package myApplication;

import businessLayer.BLFeedback;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import objectFactory.Feedback;


/**
 *
 * @author Kriss
 */
public class ViewFeedback extends javax.swing.JInternalFrame {

    /**
     * Creates new form ViewFeedback
     */
    public ViewFeedback() {
        super("View Feedback");
        initComponents();
        blfeedback = new BLFeedback();
        feedback = new Feedback();
        
    }

    public void setFeedback(Feedback fdk){
        this.feedback = fdk;
    }
    
    public void viewFeedback() {
        DefaultTableModel dtm = new DefaultTableModel();
        
        try{
            dtm.addColumn("Feedback Date");
            dtm.addColumn("Given By");
            dtm.addColumn("Feedback ID");
            dtm.addColumn("Feedback Remarks");
            
            blfeedback.setFeedback(this.feedback);
            ResultSet rs = blfeedback.selectFeedback();
            while(rs.next()) {
                Object objData[] = new Object[4];
                objData[0] = rs.getString("currentDate");
                objData[1] = rs.getInt("clientId");
                objData[2] = rs.getInt("feedbackId");
                objData[3] = rs.getString("feedbackRemarks");
                
                dtm.addRow(objData);
            }
            this.jTable1.setModel(dtm);
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Exception", JOptionPane.INFORMATION_MESSAGE);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane2 = new javax.swing.JScrollPane();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();

        setBackground(new java.awt.Color(153, 204, 255));
        setClosable(true);
        setMaximizable(true);
        setPreferredSize(new java.awt.Dimension(1265, 643));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        jScrollPane2.setViewportView(jScrollPane1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 405, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 308, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
    private businessLayer.BLFeedback blfeedback;
    private objectFactory.Feedback feedback;
}
