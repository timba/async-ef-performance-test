namespace Server
{
	partial class MainForm
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
			this.syncRadioButton = new System.Windows.Forms.RadioButton();
			this.serverTypeGroupBox = new System.Windows.Forms.GroupBox();
			this.asyncRadioButton = new System.Windows.Forms.RadioButton();
			this.startButton = new System.Windows.Forms.Button();
			this.showMonitorButton = new System.Windows.Forms.Button();
			this.showPayloadControlButton = new System.Windows.Forms.Button();
			this.saveCheckBox = new System.Windows.Forms.CheckBox();
			this.presenterBindingSource = new System.Windows.Forms.BindingSource(this.components);
			this.serverTypeGroupBox.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.presenterBindingSource)).BeginInit();
			this.SuspendLayout();
			// 
			// syncRadioButton
			// 
			this.syncRadioButton.AutoSize = true;
			this.syncRadioButton.Checked = true;
			this.syncRadioButton.DataBindings.Add(new System.Windows.Forms.Binding("Checked", this.presenterBindingSource, "IsSync", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
			this.syncRadioButton.Location = new System.Drawing.Point(6, 19);
			this.syncRadioButton.Name = "syncRadioButton";
			this.syncRadioButton.Size = new System.Drawing.Size(87, 17);
			this.syncRadioButton.TabIndex = 0;
			this.syncRadioButton.TabStop = true;
			this.syncRadioButton.Text = "Synchronous";
			this.syncRadioButton.UseVisualStyleBackColor = true;
			// 
			// serverTypeGroupBox
			// 
			this.serverTypeGroupBox.Controls.Add(this.asyncRadioButton);
			this.serverTypeGroupBox.Controls.Add(this.syncRadioButton);
			this.serverTypeGroupBox.Location = new System.Drawing.Point(12, 12);
			this.serverTypeGroupBox.Name = "serverTypeGroupBox";
			this.serverTypeGroupBox.Size = new System.Drawing.Size(144, 76);
			this.serverTypeGroupBox.TabIndex = 1;
			this.serverTypeGroupBox.TabStop = false;
			this.serverTypeGroupBox.Text = "Server Type";
			// 
			// asyncRadioButton
			// 
			this.asyncRadioButton.AutoSize = true;
			this.asyncRadioButton.DataBindings.Add(new System.Windows.Forms.Binding("Checked", this.presenterBindingSource, "IsAsync", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
			this.asyncRadioButton.Location = new System.Drawing.Point(6, 42);
			this.asyncRadioButton.Name = "asyncRadioButton";
			this.asyncRadioButton.Size = new System.Drawing.Size(92, 17);
			this.asyncRadioButton.TabIndex = 1;
			this.asyncRadioButton.Text = "Asynchronous";
			this.asyncRadioButton.UseVisualStyleBackColor = true;
			// 
			// startButton
			// 
			this.startButton.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.presenterBindingSource, "StartButtonText", true));
			this.startButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
			this.startButton.Location = new System.Drawing.Point(12, 96);
			this.startButton.Name = "startButton";
			this.startButton.Size = new System.Drawing.Size(144, 23);
			this.startButton.TabIndex = 2;
			this.startButton.Text = "Start";
			this.startButton.UseVisualStyleBackColor = true;
			this.startButton.Click += new System.EventHandler(this.startButton_Click);
			// 
			// showMonitorButton
			// 
			this.showMonitorButton.Location = new System.Drawing.Point(12, 126);
			this.showMonitorButton.Name = "showMonitorButton";
			this.showMonitorButton.Size = new System.Drawing.Size(144, 23);
			this.showMonitorButton.TabIndex = 3;
			this.showMonitorButton.Text = "Show Monitor";
			this.showMonitorButton.UseVisualStyleBackColor = true;
			this.showMonitorButton.Click += new System.EventHandler(this.showMonitorButton_Click);
			// 
			// showPayloadControlButton
			// 
			this.showPayloadControlButton.Location = new System.Drawing.Point(12, 155);
			this.showPayloadControlButton.Name = "showPayloadControlButton";
			this.showPayloadControlButton.Size = new System.Drawing.Size(144, 23);
			this.showPayloadControlButton.TabIndex = 4;
			this.showPayloadControlButton.Text = "Show Payload Control";
			this.showPayloadControlButton.UseVisualStyleBackColor = true;
			this.showPayloadControlButton.Click += new System.EventHandler(this.showPayloadControlButton_Click);
			// 
			// saveCheckBox
			// 
			this.saveCheckBox.AutoSize = true;
			this.saveCheckBox.DataBindings.Add(new System.Windows.Forms.Binding("Checked", this.presenterBindingSource, "AgentSavesComputer", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
			this.saveCheckBox.Location = new System.Drawing.Point(162, 32);
			this.saveCheckBox.Name = "saveCheckBox";
			this.saveCheckBox.Size = new System.Drawing.Size(132, 17);
			this.saveCheckBox.TabIndex = 5;
			this.saveCheckBox.Text = "Agent saves computer";
			this.saveCheckBox.UseVisualStyleBackColor = true;
			// 
			// presenterBindingSource
			// 
			this.presenterBindingSource.DataSource = typeof(Server.IMainFormPresenter);
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(301, 196);
			this.Controls.Add(this.saveCheckBox);
			this.Controls.Add(this.showPayloadControlButton);
			this.Controls.Add(this.showMonitorButton);
			this.Controls.Add(this.startButton);
			this.Controls.Add(this.serverTypeGroupBox);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
			this.Location = new System.Drawing.Point(50, 50);
			this.MaximizeBox = false;
			this.Name = "MainForm";
			this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
			this.Text = "EF Async Test";
			this.Load += new System.EventHandler(this.MainForm_Load);
			this.serverTypeGroupBox.ResumeLayout(false);
			this.serverTypeGroupBox.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.presenterBindingSource)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.RadioButton syncRadioButton;
		private System.Windows.Forms.GroupBox serverTypeGroupBox;
		private System.Windows.Forms.RadioButton asyncRadioButton;
		private System.Windows.Forms.Button startButton;
		private System.Windows.Forms.BindingSource presenterBindingSource;
		private System.Windows.Forms.Button showMonitorButton;
		private System.Windows.Forms.Button showPayloadControlButton;
		private System.Windows.Forms.CheckBox saveCheckBox;
	}
}

