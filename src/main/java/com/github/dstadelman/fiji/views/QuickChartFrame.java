package com.github.dstadelman.fiji.views;


import java.util.Arrays;
import java.util.List;

import javax.swing.JFrame;

import org.jfree.chart.ChartColor;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.XYPlot;
import org.jfree.data.time.TimeSeries;
import org.jfree.data.time.TimeSeriesCollection;
import org.jfree.data.xy.XYDataset;

public class QuickChartFrame extends JFrame {
    
    public QuickChartFrame(String title, TimeSeries ... series) {
        this(title, Arrays.asList(series));
    }

    public QuickChartFrame(String title, List<TimeSeries> series) {
        super(title);
        
        TimeSeriesCollection dataset = new TimeSeriesCollection();

        for (int i = 0; i < series.size(); i++) {
            dataset.addSeries(series.get(i));
        }

        JFreeChart chart = ChartFactory.createTimeSeriesChart(title, "Date", "Net. Liq.", dataset);
    
        //Changes background color
        XYPlot plot = (XYPlot)chart.getPlot();
        plot.setBackgroundPaint(new ChartColor(255,228,196));
        
        ChartPanel panel = new ChartPanel(chart);
        setContentPane(panel);        
    }
    
}
