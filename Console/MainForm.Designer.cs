namespace Console
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
			this.getComputersButton = new System.Windows.Forms.Button();
			this.computersDataGridView = new System.Windows.Forms.DataGridView();
			this.idDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.dnsNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.uidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.agentPackageNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.avBasesUpdateTimeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.avBasesVersionDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.beingUninstalledDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
			this.computerGroupDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.computerGroupIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.computerGroupReferenceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.createdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.forceRemoteModeDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
			this.internetPolicyIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.isLicensedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
			this.localPolicyIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.modifiedDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.policyDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.policy1DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.policy1ReferenceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.policyLastPollDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.policyNonComplianceDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.policyReferenceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.policyStatusDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.rejectedConnectionDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.remoteModeDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
			this.sidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.visibleDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
			this.warrantyStatusDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.entityKeyDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.computerBindingSource = new System.Windows.Forms.BindingSource(this.components);
			this.elapsedLabel = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.computersDataGridView)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.computerBindingSource)).BeginInit();
			this.SuspendLayout();
			// 
			// getComputersButton
			// 
			this.getComputersButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.getComputersButton.Location = new System.Drawing.Point(852, 684);
			this.getComputersButton.Name = "getComputersButton";
			this.getComputersButton.Size = new System.Drawing.Size(120, 23);
			this.getComputersButton.TabIndex = 0;
			this.getComputersButton.Text = "Get Computers";
			this.getComputersButton.UseVisualStyleBackColor = true;
			this.getComputersButton.Click += new System.EventHandler(this.getComputersButton_Click);
			// 
			// computersDataGridView
			// 
			this.computersDataGridView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.computersDataGridView.AutoGenerateColumns = false;
			this.computersDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.computersDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn,
            this.dnsNameDataGridViewTextBoxColumn,
            this.uidDataGridViewTextBoxColumn,
            this.agentPackageNameDataGridViewTextBoxColumn,
            this.avBasesUpdateTimeDataGridViewTextBoxColumn,
            this.avBasesVersionDataGridViewTextBoxColumn,
            this.beingUninstalledDataGridViewCheckBoxColumn,
            this.computerGroupDataGridViewTextBoxColumn,
            this.computerGroupIdDataGridViewTextBoxColumn,
            this.computerGroupReferenceDataGridViewTextBoxColumn,
            this.createdDataGridViewTextBoxColumn,
            this.forceRemoteModeDataGridViewCheckBoxColumn,
            this.internetPolicyIdDataGridViewTextBoxColumn,
            this.isLicensedDataGridViewCheckBoxColumn,
            this.localPolicyIdDataGridViewTextBoxColumn,
            this.modifiedDataGridViewTextBoxColumn,
            this.policyDataGridViewTextBoxColumn,
            this.policy1DataGridViewTextBoxColumn,
            this.policy1ReferenceDataGridViewTextBoxColumn,
            this.policyLastPollDateDataGridViewTextBoxColumn,
            this.policyNonComplianceDateDataGridViewTextBoxColumn,
            this.policyReferenceDataGridViewTextBoxColumn,
            this.policyStatusDataGridViewTextBoxColumn,
            this.rejectedConnectionDateDataGridViewTextBoxColumn,
            this.remoteModeDataGridViewCheckBoxColumn,
            this.sidDataGridViewTextBoxColumn,
            this.visibleDataGridViewCheckBoxColumn,
            this.warrantyStatusDataGridViewTextBoxColumn,
            this.entityKeyDataGridViewTextBoxColumn});
			this.computersDataGridView.DataSource = this.computerBindingSource;
			this.computersDataGridView.Location = new System.Drawing.Point(12, 12);
			this.computersDataGridView.Name = "computersDataGridView";
			this.computersDataGridView.Size = new System.Drawing.Size(960, 666);
			this.computersDataGridView.TabIndex = 1;
			// 
			// idDataGridViewTextBoxColumn
			// 
			this.idDataGridViewTextBoxColumn.DataPropertyName = "Id";
			this.idDataGridViewTextBoxColumn.HeaderText = "Id";
			this.idDataGridViewTextBoxColumn.Name = "idDataGridViewTextBoxColumn";
			// 
			// nameDataGridViewTextBoxColumn
			// 
			this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
			this.nameDataGridViewTextBoxColumn.HeaderText = "Name";
			this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
			// 
			// dnsNameDataGridViewTextBoxColumn
			// 
			this.dnsNameDataGridViewTextBoxColumn.DataPropertyName = "DnsName";
			this.dnsNameDataGridViewTextBoxColumn.HeaderText = "DnsName";
			this.dnsNameDataGridViewTextBoxColumn.Name = "dnsNameDataGridViewTextBoxColumn";
			// 
			// uidDataGridViewTextBoxColumn
			// 
			this.uidDataGridViewTextBoxColumn.DataPropertyName = "Uid";
			this.uidDataGridViewTextBoxColumn.HeaderText = "Uid";
			this.uidDataGridViewTextBoxColumn.Name = "uidDataGridViewTextBoxColumn";
			// 
			// agentPackageNameDataGridViewTextBoxColumn
			// 
			this.agentPackageNameDataGridViewTextBoxColumn.DataPropertyName = "AgentPackageName";
			this.agentPackageNameDataGridViewTextBoxColumn.HeaderText = "AgentPackageName";
			this.agentPackageNameDataGridViewTextBoxColumn.Name = "agentPackageNameDataGridViewTextBoxColumn";
			// 
			// avBasesUpdateTimeDataGridViewTextBoxColumn
			// 
			this.avBasesUpdateTimeDataGridViewTextBoxColumn.DataPropertyName = "AvBasesUpdateTime";
			this.avBasesUpdateTimeDataGridViewTextBoxColumn.HeaderText = "AvBasesUpdateTime";
			this.avBasesUpdateTimeDataGridViewTextBoxColumn.Name = "avBasesUpdateTimeDataGridViewTextBoxColumn";
			// 
			// avBasesVersionDataGridViewTextBoxColumn
			// 
			this.avBasesVersionDataGridViewTextBoxColumn.DataPropertyName = "AvBasesVersion";
			this.avBasesVersionDataGridViewTextBoxColumn.HeaderText = "AvBasesVersion";
			this.avBasesVersionDataGridViewTextBoxColumn.Name = "avBasesVersionDataGridViewTextBoxColumn";
			// 
			// beingUninstalledDataGridViewCheckBoxColumn
			// 
			this.beingUninstalledDataGridViewCheckBoxColumn.DataPropertyName = "BeingUninstalled";
			this.beingUninstalledDataGridViewCheckBoxColumn.HeaderText = "BeingUninstalled";
			this.beingUninstalledDataGridViewCheckBoxColumn.Name = "beingUninstalledDataGridViewCheckBoxColumn";
			// 
			// computerGroupDataGridViewTextBoxColumn
			// 
			this.computerGroupDataGridViewTextBoxColumn.DataPropertyName = "ComputerGroup";
			this.computerGroupDataGridViewTextBoxColumn.HeaderText = "ComputerGroup";
			this.computerGroupDataGridViewTextBoxColumn.Name = "computerGroupDataGridViewTextBoxColumn";
			// 
			// computerGroupIdDataGridViewTextBoxColumn
			// 
			this.computerGroupIdDataGridViewTextBoxColumn.DataPropertyName = "ComputerGroupId";
			this.computerGroupIdDataGridViewTextBoxColumn.HeaderText = "ComputerGroupId";
			this.computerGroupIdDataGridViewTextBoxColumn.Name = "computerGroupIdDataGridViewTextBoxColumn";
			// 
			// computerGroupReferenceDataGridViewTextBoxColumn
			// 
			this.computerGroupReferenceDataGridViewTextBoxColumn.DataPropertyName = "ComputerGroupReference";
			this.computerGroupReferenceDataGridViewTextBoxColumn.HeaderText = "ComputerGroupReference";
			this.computerGroupReferenceDataGridViewTextBoxColumn.Name = "computerGroupReferenceDataGridViewTextBoxColumn";
			// 
			// createdDataGridViewTextBoxColumn
			// 
			this.createdDataGridViewTextBoxColumn.DataPropertyName = "Created";
			this.createdDataGridViewTextBoxColumn.HeaderText = "Created";
			this.createdDataGridViewTextBoxColumn.Name = "createdDataGridViewTextBoxColumn";
			// 
			// forceRemoteModeDataGridViewCheckBoxColumn
			// 
			this.forceRemoteModeDataGridViewCheckBoxColumn.DataPropertyName = "ForceRemoteMode";
			this.forceRemoteModeDataGridViewCheckBoxColumn.HeaderText = "ForceRemoteMode";
			this.forceRemoteModeDataGridViewCheckBoxColumn.Name = "forceRemoteModeDataGridViewCheckBoxColumn";
			// 
			// internetPolicyIdDataGridViewTextBoxColumn
			// 
			this.internetPolicyIdDataGridViewTextBoxColumn.DataPropertyName = "InternetPolicyId";
			this.internetPolicyIdDataGridViewTextBoxColumn.HeaderText = "InternetPolicyId";
			this.internetPolicyIdDataGridViewTextBoxColumn.Name = "internetPolicyIdDataGridViewTextBoxColumn";
			// 
			// isLicensedDataGridViewCheckBoxColumn
			// 
			this.isLicensedDataGridViewCheckBoxColumn.DataPropertyName = "IsLicensed";
			this.isLicensedDataGridViewCheckBoxColumn.HeaderText = "IsLicensed";
			this.isLicensedDataGridViewCheckBoxColumn.Name = "isLicensedDataGridViewCheckBoxColumn";
			// 
			// localPolicyIdDataGridViewTextBoxColumn
			// 
			this.localPolicyIdDataGridViewTextBoxColumn.DataPropertyName = "LocalPolicyId";
			this.localPolicyIdDataGridViewTextBoxColumn.HeaderText = "LocalPolicyId";
			this.localPolicyIdDataGridViewTextBoxColumn.Name = "localPolicyIdDataGridViewTextBoxColumn";
			// 
			// modifiedDataGridViewTextBoxColumn
			// 
			this.modifiedDataGridViewTextBoxColumn.DataPropertyName = "Modified";
			this.modifiedDataGridViewTextBoxColumn.HeaderText = "Modified";
			this.modifiedDataGridViewTextBoxColumn.Name = "modifiedDataGridViewTextBoxColumn";
			// 
			// policyDataGridViewTextBoxColumn
			// 
			this.policyDataGridViewTextBoxColumn.DataPropertyName = "Policy";
			this.policyDataGridViewTextBoxColumn.HeaderText = "Policy";
			this.policyDataGridViewTextBoxColumn.Name = "policyDataGridViewTextBoxColumn";
			// 
			// policy1DataGridViewTextBoxColumn
			// 
			this.policy1DataGridViewTextBoxColumn.DataPropertyName = "Policy1";
			this.policy1DataGridViewTextBoxColumn.HeaderText = "Policy1";
			this.policy1DataGridViewTextBoxColumn.Name = "policy1DataGridViewTextBoxColumn";
			// 
			// policy1ReferenceDataGridViewTextBoxColumn
			// 
			this.policy1ReferenceDataGridViewTextBoxColumn.DataPropertyName = "Policy1Reference";
			this.policy1ReferenceDataGridViewTextBoxColumn.HeaderText = "Policy1Reference";
			this.policy1ReferenceDataGridViewTextBoxColumn.Name = "policy1ReferenceDataGridViewTextBoxColumn";
			// 
			// policyLastPollDateDataGridViewTextBoxColumn
			// 
			this.policyLastPollDateDataGridViewTextBoxColumn.DataPropertyName = "PolicyLastPollDate";
			this.policyLastPollDateDataGridViewTextBoxColumn.HeaderText = "PolicyLastPollDate";
			this.policyLastPollDateDataGridViewTextBoxColumn.Name = "policyLastPollDateDataGridViewTextBoxColumn";
			// 
			// policyNonComplianceDateDataGridViewTextBoxColumn
			// 
			this.policyNonComplianceDateDataGridViewTextBoxColumn.DataPropertyName = "PolicyNonComplianceDate";
			this.policyNonComplianceDateDataGridViewTextBoxColumn.HeaderText = "PolicyNonComplianceDate";
			this.policyNonComplianceDateDataGridViewTextBoxColumn.Name = "policyNonComplianceDateDataGridViewTextBoxColumn";
			// 
			// policyReferenceDataGridViewTextBoxColumn
			// 
			this.policyReferenceDataGridViewTextBoxColumn.DataPropertyName = "PolicyReference";
			this.policyReferenceDataGridViewTextBoxColumn.HeaderText = "PolicyReference";
			this.policyReferenceDataGridViewTextBoxColumn.Name = "policyReferenceDataGridViewTextBoxColumn";
			// 
			// policyStatusDataGridViewTextBoxColumn
			// 
			this.policyStatusDataGridViewTextBoxColumn.DataPropertyName = "PolicyStatus";
			this.policyStatusDataGridViewTextBoxColumn.HeaderText = "PolicyStatus";
			this.policyStatusDataGridViewTextBoxColumn.Name = "policyStatusDataGridViewTextBoxColumn";
			// 
			// rejectedConnectionDateDataGridViewTextBoxColumn
			// 
			this.rejectedConnectionDateDataGridViewTextBoxColumn.DataPropertyName = "RejectedConnectionDate";
			this.rejectedConnectionDateDataGridViewTextBoxColumn.HeaderText = "RejectedConnectionDate";
			this.rejectedConnectionDateDataGridViewTextBoxColumn.Name = "rejectedConnectionDateDataGridViewTextBoxColumn";
			// 
			// remoteModeDataGridViewCheckBoxColumn
			// 
			this.remoteModeDataGridViewCheckBoxColumn.DataPropertyName = "RemoteMode";
			this.remoteModeDataGridViewCheckBoxColumn.HeaderText = "RemoteMode";
			this.remoteModeDataGridViewCheckBoxColumn.Name = "remoteModeDataGridViewCheckBoxColumn";
			// 
			// sidDataGridViewTextBoxColumn
			// 
			this.sidDataGridViewTextBoxColumn.DataPropertyName = "Sid";
			this.sidDataGridViewTextBoxColumn.HeaderText = "Sid";
			this.sidDataGridViewTextBoxColumn.Name = "sidDataGridViewTextBoxColumn";
			// 
			// visibleDataGridViewCheckBoxColumn
			// 
			this.visibleDataGridViewCheckBoxColumn.DataPropertyName = "Visible";
			this.visibleDataGridViewCheckBoxColumn.HeaderText = "Visible";
			this.visibleDataGridViewCheckBoxColumn.Name = "visibleDataGridViewCheckBoxColumn";
			// 
			// warrantyStatusDataGridViewTextBoxColumn
			// 
			this.warrantyStatusDataGridViewTextBoxColumn.DataPropertyName = "WarrantyStatus";
			this.warrantyStatusDataGridViewTextBoxColumn.HeaderText = "WarrantyStatus";
			this.warrantyStatusDataGridViewTextBoxColumn.Name = "warrantyStatusDataGridViewTextBoxColumn";
			// 
			// entityKeyDataGridViewTextBoxColumn
			// 
			this.entityKeyDataGridViewTextBoxColumn.DataPropertyName = "EntityKey";
			this.entityKeyDataGridViewTextBoxColumn.HeaderText = "EntityKey";
			this.entityKeyDataGridViewTextBoxColumn.Name = "entityKeyDataGridViewTextBoxColumn";
			// 
			// computerBindingSource
			// 
			this.computerBindingSource.DataSource = typeof(AppConsole.ConsoleServiceReference.Computer);
			// 
			// elapsedLabel
			// 
			this.elapsedLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.elapsedLabel.AutoSize = true;
			this.elapsedLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
			this.elapsedLabel.ForeColor = System.Drawing.Color.DarkGreen;
			this.elapsedLabel.Location = new System.Drawing.Point(630, 689);
			this.elapsedLabel.Name = "elapsedLabel";
			this.elapsedLabel.Size = new System.Drawing.Size(0, 13);
			this.elapsedLabel.TabIndex = 2;
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(984, 719);
			this.Controls.Add(this.elapsedLabel);
			this.Controls.Add(this.computersDataGridView);
			this.Controls.Add(this.getComputersButton);
			this.Location = new System.Drawing.Point(850, 50);
			this.MinimumSize = new System.Drawing.Size(230, 170);
			this.Name = "MainForm";
			this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
			this.Text = "Console";
			((System.ComponentModel.ISupportInitialize)(this.computersDataGridView)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.computerBindingSource)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.Button getComputersButton;
		private System.Windows.Forms.DataGridView computersDataGridView;
		private System.Windows.Forms.BindingSource computerBindingSource;
		private System.Windows.Forms.DataGridViewTextBoxColumn idDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn dnsNameDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn uidDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn agentPackageNameDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn avBasesUpdateTimeDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn avBasesVersionDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewCheckBoxColumn beingUninstalledDataGridViewCheckBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn computerGroupDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn computerGroupIdDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn computerGroupReferenceDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn createdDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewCheckBoxColumn forceRemoteModeDataGridViewCheckBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn internetPolicyIdDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewCheckBoxColumn isLicensedDataGridViewCheckBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn localPolicyIdDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn modifiedDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn policyDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn policy1DataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn policy1ReferenceDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn policyLastPollDateDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn policyNonComplianceDateDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn policyReferenceDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn policyStatusDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn rejectedConnectionDateDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewCheckBoxColumn remoteModeDataGridViewCheckBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn sidDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewCheckBoxColumn visibleDataGridViewCheckBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn warrantyStatusDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn entityKeyDataGridViewTextBoxColumn;
		private System.Windows.Forms.Label elapsedLabel;
	}
}

