namespace Server
{
	partial class PerfMonitorForm
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose( bool disposing )
		{
			if( disposing && ( components != null ) )
			{
				components.Dispose();
			}
			base.Dispose( disposing );
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.components = new System.ComponentModel.Container();
			System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
			System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
			System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea3 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
			System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
			System.Windows.Forms.DataVisualization.Charting.Legend legend2 = new System.Windows.Forms.DataVisualization.Charting.Legend();
			System.Windows.Forms.DataVisualization.Charting.Legend legend3 = new System.Windows.Forms.DataVisualization.Charting.Legend();
			System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
			System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
			System.Windows.Forms.DataVisualization.Charting.Series series3 = new System.Windows.Forms.DataVisualization.Charting.Series();
			System.Windows.Forms.DataVisualization.Charting.Series series4 = new System.Windows.Forms.DataVisualization.Charting.Series();
			System.Windows.Forms.DataVisualization.Charting.Series series5 = new System.Windows.Forms.DataVisualization.Charting.Series();
			this.chart = new System.Windows.Forms.DataVisualization.Charting.Chart();
			this.toggleMonitorSuspendedButton = new System.Windows.Forms.Button();
			this.perfMonitorFormPresenterBindingSource = new System.Windows.Forms.BindingSource(this.components);
			((System.ComponentModel.ISupportInitialize)(this.chart)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.perfMonitorFormPresenterBindingSource)).BeginInit();
			this.SuspendLayout();
			// 
			// chart
			// 
			this.chart.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			chartArea1.AxisX.Interval = 5D;
			chartArea1.InnerPlotPosition.Auto = false;
			chartArea1.InnerPlotPosition.Height = 76.16758F;
			chartArea1.InnerPlotPosition.Width = 91.20932F;
			chartArea1.InnerPlotPosition.X = 8.79068F;
			chartArea1.InnerPlotPosition.Y = 5.76923F;
			chartArea1.Name = "ConnectionsArea";
			chartArea1.Position.Auto = false;
			chartArea1.Position.Height = 29.33333F;
			chartArea1.Position.Width = 72.04617F;
			chartArea1.Position.X = 3F;
			chartArea1.Position.Y = 3F;
			chartArea2.AxisX.Interval = 5D;
			chartArea2.AxisY2.MajorGrid.Enabled = false;
			chartArea2.InnerPlotPosition.Auto = false;
			chartArea2.InnerPlotPosition.Height = 76.16758F;
			chartArea2.InnerPlotPosition.Width = 91.20932F;
			chartArea2.InnerPlotPosition.X = 8.79068F;
			chartArea2.InnerPlotPosition.Y = 5.76923F;
			chartArea2.Name = "PerformanceChartArea";
			chartArea2.Position.Auto = false;
			chartArea2.Position.Height = 29.33333F;
			chartArea2.Position.Width = 72.04617F;
			chartArea2.Position.X = 3F;
			chartArea2.Position.Y = 35.33333F;
			chartArea3.AxisX.Interval = 5D;
			chartArea3.InnerPlotPosition.Auto = false;
			chartArea3.InnerPlotPosition.Height = 76.16758F;
			chartArea3.InnerPlotPosition.Width = 91.20932F;
			chartArea3.InnerPlotPosition.X = 8.79068F;
			chartArea3.InnerPlotPosition.Y = 5.76923F;
			chartArea3.Name = "LoadChartArea";
			chartArea3.Position.Auto = false;
			chartArea3.Position.Height = 29.33333F;
			chartArea3.Position.Width = 72.04617F;
			chartArea3.Position.X = 3F;
			chartArea3.Position.Y = 67.66666F;
			this.chart.ChartAreas.Add(chartArea1);
			this.chart.ChartAreas.Add(chartArea2);
			this.chart.ChartAreas.Add(chartArea3);
			legend1.DockedToChartArea = "ConnectionsArea";
			legend1.IsDockedInsideChartArea = false;
			legend1.Name = "ConnectionsLegend";
			legend2.DockedToChartArea = "PerformanceChartArea";
			legend2.IsDockedInsideChartArea = false;
			legend2.Name = "PerformanceLegend";
			legend3.DockedToChartArea = "LoadChartArea";
			legend3.IsDockedInsideChartArea = false;
			legend3.Name = "LoadLegend";
			this.chart.Legends.Add(legend1);
			this.chart.Legends.Add(legend2);
			this.chart.Legends.Add(legend3);
			this.chart.Location = new System.Drawing.Point(12, 12);
			this.chart.Name = "chart";
			this.chart.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Pastel;
			series1.BorderWidth = 3;
			series1.ChartArea = "ConnectionsArea";
			series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
			series1.Legend = "ConnectionsLegend";
			series1.LegendText = "Actual connections";
			series1.Name = "connActualConnectionsSeries";
			series1.XValueMember = "ThreadsCountStat";
			series1.YValueMembers = "ThreadsCountStat";
			series2.BorderWidth = 3;
			series2.ChartArea = "ConnectionsArea";
			series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
			series2.Legend = "ConnectionsLegend";
			series2.LegendText = "Expected connections";
			series2.Name = "connExpectedConnectionsSeries";
			series3.BorderWidth = 3;
			series3.ChartArea = "PerformanceChartArea";
			series3.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
			series3.Legend = "PerformanceLegend";
			series3.LegendText = "Threads count";
			series3.Name = "perfThreadsSeries";
			series4.BorderWidth = 3;
			series4.ChartArea = "PerformanceChartArea";
			series4.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
			series4.Legend = "PerformanceLegend";
			series4.LegendText = "Memory size";
			series4.Name = "perfMemorySeries";
			series4.YAxisType = System.Windows.Forms.DataVisualization.Charting.AxisType.Secondary;
			series5.BorderWidth = 3;
			series5.ChartArea = "LoadChartArea";
			series5.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
			series5.Legend = "LoadLegend";
			series5.LegendText = "Calls count, per sec";
			series5.Name = "loadCountSeries";
			this.chart.Series.Add(series1);
			this.chart.Series.Add(series2);
			this.chart.Series.Add(series3);
			this.chart.Series.Add(series4);
			this.chart.Series.Add(series5);
			this.chart.Size = new System.Drawing.Size(705, 597);
			this.chart.TabIndex = 0;
			this.chart.Text = "chart";
			// 
			// toggleMonitorSuspendedButton
			// 
			this.toggleMonitorSuspendedButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.toggleMonitorSuspendedButton.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.perfMonitorFormPresenterBindingSource, "ToggleMonitorSuspendedButtonText", true));
			this.toggleMonitorSuspendedButton.Location = new System.Drawing.Point(642, 615);
			this.toggleMonitorSuspendedButton.Name = "toggleMonitorSuspendedButton";
			this.toggleMonitorSuspendedButton.Size = new System.Drawing.Size(75, 23);
			this.toggleMonitorSuspendedButton.TabIndex = 1;
			this.toggleMonitorSuspendedButton.Text = "Suspend";
			this.toggleMonitorSuspendedButton.UseVisualStyleBackColor = true;
			this.toggleMonitorSuspendedButton.Click += new System.EventHandler(this.toggleMonitorSuspendedButton_Click);
			// 
			// perfMonitorFormPresenterBindingSource
			// 
			this.perfMonitorFormPresenterBindingSource.DataSource = typeof(Server.Presenters.IPerfMonitorFormPresenter);
			// 
			// PerfMonitorForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(729, 650);
			this.Controls.Add(this.toggleMonitorSuspendedButton);
			this.Controls.Add(this.chart);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
			this.Location = new System.Drawing.Point(50, 295);
			this.MinimumSize = new System.Drawing.Size(250, 170);
			this.Name = "PerfMonitorForm";
			this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
			this.Text = "Monitor";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.PerfMonitorForm_FormClosing);
			((System.ComponentModel.ISupportInitialize)(this.chart)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.perfMonitorFormPresenterBindingSource)).EndInit();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.DataVisualization.Charting.Chart chart;
		private System.Windows.Forms.Button toggleMonitorSuspendedButton;
		private System.Windows.Forms.BindingSource perfMonitorFormPresenterBindingSource;
	}
}