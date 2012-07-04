namespace Server
{
	partial class PayloadControlForm
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
			System.Windows.Forms.Label connectionsCountLabel;
			this.connectionsCountNumericUpDown = new System.Windows.Forms.NumericUpDown();
			this.payloadControlFormPresenterBindingSource = new System.Windows.Forms.BindingSource(this.components);
			connectionsCountLabel = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.connectionsCountNumericUpDown)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.payloadControlFormPresenterBindingSource)).BeginInit();
			this.SuspendLayout();
			// 
			// connectionsCountLabel
			// 
			connectionsCountLabel.AutoSize = true;
			connectionsCountLabel.Location = new System.Drawing.Point(11, 15);
			connectionsCountLabel.Name = "connectionsCountLabel";
			connectionsCountLabel.Size = new System.Drawing.Size(100, 13);
			connectionsCountLabel.TabIndex = 1;
			connectionsCountLabel.Text = "Connections Count:";
			// 
			// connectionsCountNumericUpDown
			// 
			this.connectionsCountNumericUpDown.DataBindings.Add(new System.Windows.Forms.Binding("Value", this.payloadControlFormPresenterBindingSource, "ConnectionsCount", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
			this.connectionsCountNumericUpDown.Location = new System.Drawing.Point(117, 13);
			this.connectionsCountNumericUpDown.Maximum = new decimal(new int[] {
            10000,
            0,
            0,
            0});
			this.connectionsCountNumericUpDown.Name = "connectionsCountNumericUpDown";
			this.connectionsCountNumericUpDown.Size = new System.Drawing.Size(120, 20);
			this.connectionsCountNumericUpDown.TabIndex = 2;
			// 
			// payloadControlFormPresenterBindingSource
			// 
			this.payloadControlFormPresenterBindingSource.DataSource = typeof(Server.Presenters.IPayloadControlFormPresenter);
			// 
			// PayloadControlForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(256, 48);
			this.Controls.Add(this.connectionsCountNumericUpDown);
			this.Controls.Add(connectionsCountLabel);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
			this.Location = new System.Drawing.Point(380, 50);
			this.Name = "PayloadControlForm";
			this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
			this.Text = "Payload Control";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.PayloadControlForm_FormClosing);
			((System.ComponentModel.ISupportInitialize)(this.connectionsCountNumericUpDown)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.payloadControlFormPresenterBindingSource)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.BindingSource payloadControlFormPresenterBindingSource;
		private System.Windows.Forms.NumericUpDown connectionsCountNumericUpDown;
	}
}