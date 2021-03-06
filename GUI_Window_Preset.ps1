#*******************************
#Author: Jonathan Parrilla
#Created: M/D/Y
#Last Updated: M/D/Y
#*******************************

#Import the function(s) that are needed.


#Clear the console screen
Clear-Host

#Called in order to draw the GUI frame.
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 


#****DEFINES THE GUI FRAME****#

#Creates a new form/frame
$GuiWindow = New-Object System.Windows.Forms.Form 

#Title text for the frame
$GuiWindow.Text = "GUI TITLE TEXT"

#Size of the frame
#$iisResetGuiWindow.Size = New-Object System.Drawing.Size(350,310)
$GuiWindow.Size = New-Object System.Drawing.Size(800,600)

#Form/frame's start position. 
$GuiWindow.StartPosition = "CenterScreen"

#****DEFINES A BUTTON****#

#Create button. Define location, size, text and its 'on-click' response.
$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(160,540)
$Button.Size = New-Object System.Drawing.Size(75,23)
$Button.Text = "BUTTON"
$Button.Add_Click({})

#Add the button the GUI
$GuiWindow.Controls.Add($Button)


#****DEFINES A LABEL ****#

#Create the label. Define location, size, and text.
$Label = New-Object System.Windows.Forms.Label
$Label.Location = New-Object System.Drawing.Size(300,20) 
$Label.Size = New-Object System.Drawing.Size(280,400) 
$Label.Text = "LABEL TEXT"


#Add the lable to the GUI
$GuiWindow.Controls.Add($Label)



#****DEFINES A TEXT BOX TO INPUT SERVERS****#

#Create the box. Define its location and size.
$boxForServers = New-Object System.Windows.Forms.TextBox 
$boxForServers.Location = New-Object System.Drawing.Size(10,40) 
$boxForServers.Size = New-Object System.Drawing.Size(260,475)

#Set it to multiline, have it accept return key strokes, and scroll bars.
$boxForServers.multiline = $true
$boxForServers.AcceptsReturn = $true
$boxForServers.ScrollBars = 'Both'

#Add box to the GUI
$GuiWindow.Controls.Add($boxForServers) 



#************* CREATING THE GUI *********************
#Make the GUI Window the Top most form.
$GuiWindow.Topmost = $True

#Activate the GUI window
$GuiWindow.Add_Shown({$GuiWindow.Activate()})

#Display the GUI Window
[void] $GuiWindow.ShowDialog()
