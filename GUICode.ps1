## GUI code
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 

[array]$ServicesAffected = "stuff","Corn"

#### FORM CREATION
$objForm = New-Object System.Windows.Forms.Form 
$objForm.Text = "Data Entry Form"
$objForm.Size = New-Object System.Drawing.Size(500,500) 
$objForm.StartPosition = "CenterScreen"

$objForm.KeyPreview = $True
$objForm.Add_KeyDown({if ($_.KeyCode -eq "Enter") 
    {$x=$SubjectField.Text;$objForm.Close()}})
$objForm.Add_KeyDown({if ($_.KeyCode -eq "Escape") 
    {$objForm.Close()}})


#### OK BUTTON	
$OKButton = New-Object System.Windows.Forms.Button
#$OKButton.Location = New-Object System.Drawing.Size(75,120)
$OKButton.Location = New-Object System.Drawing.Size(75,120)
$OKButton.Size = New-Object System.Drawing.Size(75,23)
$OKButton.Text = "OK"
$OKButton.Add_Click({$x=$SubjectField.Text;$objForm.Close()}) # should print email, ask if ok mayb, and send it; then close the form
$objForm.Controls.Add($OKButton)


#### CANCEL BUTTON	
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Size(150,120)
$CancelButton.Size = New-Object System.Drawing.Size(75,23)
$CancelButton.Text = "Cancel"
$CancelButton.Add_Click({$objForm.Close()})
$objForm.Controls.Add($CancelButton)


#### SERVICES AFFECTED DROPDOWN	
$ServicesAffectedDropDown = new-object System.Windows.Forms.ComboBox
$ServicesAffectedDropDown.Location = new-object System.Drawing.Size(100,10)
$ServicesAffectedDropDown.Size = new-object System.Drawing.Size(130,30)
ForEach ($Item in $ServicesAffected) {
	$ServicesAffectedDropDown.Items.Add($Item)
}
$objForm.Controls.Add($ServicesAffectedDropDown)


### SUBJECT FIELD
$SubjectFieldLabel = New-Object System.Windows.Forms.Label
$SubjectFieldLabel.Location = New-Object System.Drawing.Size(10,20) 
$SubjectFieldLabel.Size = New-Object System.Drawing.Size(280,20) 
$SubjectFieldLabel.Text = "Enter the subject in the field:"
$objForm.Controls.Add($SubjectFieldLabel) 

$SubjectField = New-Object System.Windows.Forms.TextBox 
$SubjectField.Location = New-Object System.Drawing.Size(10,40) 
$SubjectField.Size = New-Object System.Drawing.Size(260,20) 
$objForm.Controls.Add($SubjectField) 

#### ETA DROPDO
$ServicesAffectedDropDown = new-object System.Windows.Forms.ComboBox
$ServicesAffectedDropDown.Location = new-object System.Drawing.Size(100,10)
$ServicesAffectedDropDown.Size = new-object System.Drawing.Size(130,30)
ForEach ($Item in $ServicesAffected) {
	$ServicesAffectedDropDown.Items.Add($Item)
}
$objForm.Controls.Add($ServicesAffectedDropDown)

$objForm.Topmost = $True

$objForm.Add_Shown({$objForm.Activate()})
[void] $objForm.ShowDialog()

write-host($x)
write-host($ServicesAffectedDropDown.SelectedItem.ToString())

<#
===================
Subject: ISSUE - START - YYYY/MM/DD HH:MM
Services Affected: ____
Severity: High
Issue Start Time: 2014/10/10 22:00
ETA: Resolved within 10 minutes
Call No: (US/CH/ISR dial-in) + phone
JIRA Ticket: SU-
===================
#>
