/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlythuvien;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import sun.applet.Main;

public class CountDate {
    public CountDate() {
    }
    public int soNgay(String startDate, String endDate) {
        if (endDate == null || endDate.equals("0000-00-00")|| endDate.equals("")) {
            return 0;
        }
        
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        simpleDateFormat.setLenient(false);
        Date currentDate = new Date();
        Date date1 = null;
        Date date2 = null;
        
        long getDiff = 0;
        long getDaysDiff = 0;
        try {
            date1 = simpleDateFormat.parse(startDate);
            date2 = simpleDateFormat.parse(endDate);
            getDiff = (date2.getTime() - date1.getTime());
            getDaysDiff = (getDiff / (24 * 60 * 60 * 1000));
        } catch (Exception e) {
            e.printStackTrace();
        }
        int day = (int) getDaysDiff;
        if (day >= 0) {
            return day;
        } else {
            return 0;
        }
    }
}
