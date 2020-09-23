VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   1815
      Left            =   480
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   120
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   975
      Left            =   1440
      TabIndex        =   0
      Top             =   2040
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For i = 0 To 31
Text1.Text = Text1.Text & "Brick(" & i & ").top = " & frmMain.Brick(i).Top & vbCrLf
Text1.Text = Text1.Text & "Brick(" & i & ").left = " & frmMain.Brick(i).Left & vbCrLf
Next i
End Sub
