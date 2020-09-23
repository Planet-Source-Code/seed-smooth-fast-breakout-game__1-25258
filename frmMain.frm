VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Breakout Clone v1.0 by Alex Donavon"
   ClientHeight    =   4965
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8610
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4965
   ScaleWidth      =   8610
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer bonus 
      Interval        =   125
      Left            =   7680
      Top             =   4560
   End
   Begin VB.Timer PadMove 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   8160
      Top             =   4560
   End
   Begin VB.Label Label5 
      Caption         =   "Label5"
      Height          =   255
      Left            =   7320
      TabIndex        =   8
      Top             =   4200
      Width           =   1095
   End
   Begin VB.Label lblLevel 
      Alignment       =   2  'Center
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   7
      Top             =   3600
      Width           =   1335
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Level:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   6
      Top             =   3240
      Width           =   1335
   End
   Begin VB.Label lblLives 
      Alignment       =   2  'Center
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   5
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Lives:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   4
      Top             =   2280
      Width           =   1335
   End
   Begin VB.Label lblBonus 
      Alignment       =   2  'Center
      Caption         =   "1000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   3
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Bonus:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   2
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Score:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   1
      Top             =   240
      Width           =   1335
   End
   Begin VB.Label lblScore 
      Alignment       =   2  'Center
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   0
      Top             =   600
      Width           =   1335
   End
   Begin VB.Line Line1 
      X1              =   6840
      X2              =   6840
      Y1              =   0
      Y2              =   5040
   End
   Begin VB.Shape Brick 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   31
      Left            =   1680
      Top             =   1800
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00000080&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   30
      Left            =   2520
      Top             =   600
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00C00000&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   29
      Left            =   5880
      Top             =   1080
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00FF80FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   28
      Left            =   5880
      Top             =   1560
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00FFC0FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   27
      Left            =   2520
      Top             =   120
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00E0E0E0&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   26
      Left            =   0
      Top             =   1800
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00404040&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   25
      Left            =   0
      Top             =   2280
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   24
      Left            =   3360
      Top             =   2280
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H0080C0FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   23
      Left            =   3360
      Top             =   2760
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H0080FFFF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   22
      Left            =   4200
      Top             =   1080
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   21
      Left            =   4200
      Top             =   120
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00FFFF00&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   20
      Left            =   4200
      Top             =   1560
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00C000C0&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   19
      Left            =   4200
      Top             =   600
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00400040&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   18
      Left            =   5040
      Top             =   2760
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00008080&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   17
      Left            =   2520
      Top             =   1080
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   16
      Left            =   1680
      Top             =   2760
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00404080&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   15
      Left            =   5040
      Top             =   1800
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00E0E0E0&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   14
      Left            =   5880
      Top             =   600
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   13
      Left            =   5040
      Top             =   2280
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   12
      Left            =   840
      Top             =   600
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00808000&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   11
      Left            =   2520
      Top             =   3000
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00FF00FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   10
      Left            =   3360
      Top             =   1800
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00C0E0FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   9
      Left            =   840
      Top             =   1080
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00004080&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   8
      Left            =   840
      Top             =   120
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00008000&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   7
      Left            =   840
      Top             =   1560
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00808000&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   6
      Left            =   1680
      Top             =   2280
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   5
      Left            =   4200
      Top             =   3000
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   4
      Left            =   2520
      Top             =   1560
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H0000C000&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   3
      Left            =   5880
      Top             =   120
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00404080&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   2
      Left            =   0
      Top             =   2760
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H00FFFFC0&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   1
      Left            =   840
      Top             =   3000
      Width           =   855
   End
   Begin VB.Shape Brick 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   0
      Left            =   5880
      Top             =   3000
      Width           =   855
   End
   Begin VB.Shape Ball 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      Height          =   135
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   4560
      Width           =   135
   End
   Begin VB.Shape Paddle 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      Height          =   255
      Left            =   2760
      Shape           =   4  'Rounded Rectangle
      Top             =   4680
      Width           =   1095
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Release As Boolean
Dim Holding As Boolean
Dim HitBrick As Boolean
Dim HitPaddle As Boolean
Dim Stopped As Boolean

Dim BrickSide As String
Dim Direction As String
Dim PadDirec As String

Dim Score As Integer
Dim LvLbonus As Integer
Dim Lives As Integer
Dim Level As Integer
Dim XCount As Integer

Function load1()
Brick(0).Top = 960
Brick(0).Left = 5880
Brick(1).Top = 720
Brick(1).Left = 0
Brick(2).Top = 480
Brick(2).Left = 4560
Brick(3).Top = 480
Brick(3).Left = 1440
Brick(4).Top = 720
Brick(4).Left = 5880
Brick(5).Top = 1440
Brick(5).Left = 5880
Brick(6).Top = 1440
Brick(6).Left = 1440
Brick(7).Top = 1440
Brick(7).Left = 3000
Brick(8).Top = 240
Brick(8).Left = 4560
Brick(9).Top = 1440
Brick(9).Left = 4560
Brick(10).Top = 1200
Brick(10).Left = 1440
Brick(11).Top = 480
Brick(11).Left = 5880
Brick(12).Top = 1200
Brick(12).Left = 0
Brick(13).Top = 480
Brick(13).Left = 3000
Brick(14).Top = 720
Brick(14).Left = 4560
Brick(15).Top = 240
Brick(15).Left = 3000
Brick(16).Top = 480
Brick(16).Left = 0
Brick(17).Top = 240
Brick(17).Left = 0
Brick(18).Top = 1680
Brick(18).Left = 0
Brick(19).Top = 720
Brick(19).Left = 3000
Brick(20).Top = 960
Brick(20).Left = 4560
Brick(21).Top = 720
Brick(21).Left = 1440
Brick(22).Top = 240
Brick(22).Left = 5880
Brick(23).Top = 1200
Brick(23).Left = 4560
Brick(24).Top = 960
Brick(24).Left = 3000
Brick(25).Top = 1200
Brick(25).Left = 3000
Brick(26).Top = 240
Brick(26).Left = 1440
Brick(27).Top = 960
Brick(27).Left = 1440
Brick(28).Top = 1200
Brick(28).Left = 5880
Brick(29).Top = 960
Brick(29).Left = 0
Brick(30).Top = 1440
Brick(30).Left = 0
Brick(31).Top = 1680
Brick(31).Left = 5880

End Function
Function load2()
Brick(0).Top = 960
Brick(0).Left = 5880
Brick(1).Top = 720
Brick(1).Left = 0
Brick(2).Top = 1920
Brick(2).Left = 4560
Brick(3).Top = 1920
Brick(3).Left = 3000
Brick(4).Top = 720
Brick(4).Left = 5880
Brick(5).Top = 1440
Brick(5).Left = 5880
Brick(6).Top = 1440
Brick(6).Left = 1440
Brick(7).Top = 1440
Brick(7).Left = 3000
Brick(8).Top = 2160
Brick(8).Left = 4560
Brick(9).Top = 1440
Brick(9).Left = 4560
Brick(10).Top = 1200
Brick(10).Left = 1440
Brick(11).Top = 1920
Brick(11).Left = 5880
Brick(12).Top = 1200
Brick(12).Left = 0
Brick(13).Top = 480
Brick(13).Left = 3000
Brick(14).Top = 720
Brick(14).Left = 4560
Brick(15).Top = 2160
Brick(15).Left = 3000
Brick(16).Top = 1920
Brick(16).Left = 1440
Brick(17).Top = 2160
Brick(17).Left = 0
Brick(18).Top = 1920
Brick(18).Left = 0
Brick(19).Top = 720
Brick(19).Left = 3000
Brick(20).Top = 960
Brick(20).Left = 4560
Brick(21).Top = 720
Brick(21).Left = 1440
Brick(22).Top = 2160
Brick(22).Left = 5880
Brick(23).Top = 1200
Brick(23).Left = 4560
Brick(24).Top = 960
Brick(24).Left = 3000
Brick(25).Top = 1200
Brick(25).Left = 3000
Brick(26).Top = 240
Brick(26).Left = 3000
Brick(27).Top = 960
Brick(27).Left = 1440
Brick(28).Top = 1200
Brick(28).Left = 5880
Brick(29).Top = 960
Brick(29).Left = 0
Brick(30).Top = 1440
Brick(30).Left = 0
Brick(31).Top = 2160
Brick(31).Left = 1440

End Function
Function load3()
Brick(0).Top = 960
Brick(0).Left = 5880
Brick(1).Top = 2400
Brick(1).Left = 0
Brick(2).Top = 1920
Brick(2).Left = 4560
Brick(3).Top = 1920
Brick(3).Left = 3000
Brick(4).Top = 720
Brick(4).Left = 5880
Brick(5).Top = 1440
Brick(5).Left = 5880
Brick(6).Top = 1440
Brick(6).Left = 1440
Brick(7).Top = 1440
Brick(7).Left = 3000
Brick(8).Top = 2640
Brick(8).Left = 3000
Brick(9).Top = 1440
Brick(9).Left = 4560
Brick(10).Top = 1200
Brick(10).Left = 1440
Brick(11).Top = 480
Brick(11).Left = 1440
Brick(12).Top = 1200
Brick(12).Left = 0
Brick(13).Top = 480
Brick(13).Left = 3000
Brick(14).Top = 720
Brick(14).Left = 4560
Brick(15).Top = 2160
Brick(15).Left = 3000
Brick(16).Top = 1920
Brick(16).Left = 1440
Brick(17).Top = 2160
Brick(17).Left = 0
Brick(18).Top = 2400
Brick(18).Left = 5880
Brick(19).Top = 720
Brick(19).Left = 3000
Brick(20).Top = 960
Brick(20).Left = 4560
Brick(21).Top = 720
Brick(21).Left = 1440
Brick(22).Top = 2160
Brick(22).Left = 5880
Brick(23).Top = 1200
Brick(23).Left = 4560
Brick(24).Top = 960
Brick(24).Left = 3000
Brick(25).Top = 1200
Brick(25).Left = 3000
Brick(26).Top = 240
Brick(26).Left = 3000
Brick(27).Top = 960
Brick(27).Left = 1440
Brick(28).Top = 1200
Brick(28).Left = 5880
Brick(29).Top = 960
Brick(29).Left = 0
Brick(30).Top = 1440
Brick(30).Left = 0
Brick(31).Top = 2400
Brick(31).Left = 3000

End Function
Function load4()
Brick(0).Top = 480
Brick(0).Left = 5880
Brick(1).Top = 0
Brick(1).Left = 5880
Brick(2).Top = 2640
Brick(2).Left = 5880
Brick(3).Top = 0
Brick(3).Left = 0
Brick(4).Top = 240
Brick(4).Left = 5880
Brick(5).Top = 960
Brick(5).Left = 5880
Brick(6).Top = 3120
Brick(6).Left = 0
Brick(7).Top = 2880
Brick(7).Left = 5880
Brick(8).Top = 720
Brick(8).Left = 0
Brick(9).Top = 2400
Brick(9).Left = 5880
Brick(10).Top = 2880
Brick(10).Left = 0
Brick(11).Top = 2160
Brick(11).Left = 0
Brick(12).Top = 1200
Brick(12).Left = 0
Brick(13).Top = 240
Brick(13).Left = 3000
Brick(14).Top = 1680
Brick(14).Left = 5880
Brick(15).Top = 240
Brick(15).Left = 0
Brick(16).Top = 1920
Brick(16).Left = 0
Brick(17).Top = 1680
Brick(17).Left = 0
Brick(18).Top = 1200
Brick(18).Left = 5880
Brick(19).Top = 480
Brick(19).Left = 3000
Brick(20).Top = 1920
Brick(20).Left = 5880
Brick(21).Top = 2400
Brick(21).Left = 0
Brick(22).Top = 1440
Brick(22).Left = 5880
Brick(23).Top = 2160
Brick(23).Left = 5880
Brick(24).Top = 720
Brick(24).Left = 3000
Brick(25).Top = 3120
Brick(25).Left = 5880
Brick(26).Top = 0
Brick(26).Left = 3000
Brick(27).Top = 2640
Brick(27).Left = 0
Brick(28).Top = 720
Brick(28).Left = 5880
Brick(29).Top = 960
Brick(29).Left = 0
Brick(30).Top = 1440
Brick(30).Left = 0
Brick(31).Top = 480
Brick(31).Left = 0
End Function
Function load5()
Brick(0).Top = 480
Brick(0).Left = 5880
Brick(1).Top = 0
Brick(1).Left = 5880
Brick(2).Top = 1440
Brick(2).Left = 2880
Brick(3).Top = 0
Brick(3).Left = 0
Brick(4).Top = 240
Brick(4).Left = 5880
Brick(5).Top = 960
Brick(5).Left = 5880
Brick(6).Top = 720
Brick(6).Left = 2040
Brick(7).Top = 1680
Brick(7).Left = 2880
Brick(8).Top = 720
Brick(8).Left = 0
Brick(9).Top = 1200
Brick(9).Left = 2880
Brick(10).Top = 480
Brick(10).Left = 2040
Brick(11).Top = 2160
Brick(11).Left = 0
Brick(12).Top = 1200
Brick(12).Left = 0
Brick(13).Top = 240
Brick(13).Left = 3720
Brick(14).Top = 1680
Brick(14).Left = 5880
Brick(15).Top = 240
Brick(15).Left = 0
Brick(16).Top = 1920
Brick(16).Left = 0
Brick(17).Top = 1680
Brick(17).Left = 0
Brick(18).Top = 1200
Brick(18).Left = 5880
Brick(19).Top = 480
Brick(19).Left = 3720
Brick(20).Top = 1920
Brick(20).Left = 5880
Brick(21).Top = 0
Brick(21).Left = 2040
Brick(22).Top = 1440
Brick(22).Left = 5880
Brick(23).Top = 960
Brick(23).Left = 2880
Brick(24).Top = 720
Brick(24).Left = 3720
Brick(25).Top = 2160
Brick(25).Left = 5880
Brick(26).Top = 0
Brick(26).Left = 3720
Brick(27).Top = 240
Brick(27).Left = 2040
Brick(28).Top = 720
Brick(28).Left = 5880
Brick(29).Top = 960
Brick(29).Left = 0
Brick(30).Top = 1440
Brick(30).Left = 0
Brick(31).Top = 480
Brick(31).Left = 0

End Function
Function load6()
Brick(0).Top = 2640
Brick(0).Left = 2040
Brick(1).Top = 2160
Brick(1).Left = 2040
Brick(2).Top = 1440
Brick(2).Left = 2880
Brick(3).Top = 0
Brick(3).Left = 360
Brick(4).Top = 2400
Brick(4).Left = 2040
Brick(5).Top = 1920
Brick(5).Left = 2880
Brick(6).Top = 720
Brick(6).Left = 2040
Brick(7).Top = 1680
Brick(7).Left = 2880
Brick(8).Top = 720
Brick(8).Left = 360
Brick(9).Top = 1200
Brick(9).Left = 2880
Brick(10).Top = 480
Brick(10).Left = 2040
Brick(11).Top = 1920
Brick(11).Left = 1200
Brick(12).Top = 960
Brick(12).Left = 1200
Brick(13).Top = 240
Brick(13).Left = 3720
Brick(14).Top = 2640
Brick(14).Left = 3720
Brick(15).Top = 240
Brick(15).Left = 360
Brick(16).Top = 1680
Brick(16).Left = 1200
Brick(17).Top = 1440
Brick(17).Left = 1200
Brick(18).Top = 2160
Brick(18).Left = 3720
Brick(19).Top = 480
Brick(19).Left = 3720
Brick(20).Top = 2880
Brick(20).Left = 3720
Brick(21).Top = 0
Brick(21).Left = 2040
Brick(22).Top = 2400
Brick(22).Left = 3720
Brick(23).Top = 960
Brick(23).Left = 2880
Brick(24).Top = 720
Brick(24).Left = 3720
Brick(25).Top = 960
Brick(25).Left = 4560
Brick(26).Top = 0
Brick(26).Left = 3720
Brick(27).Top = 240
Brick(27).Left = 2040
Brick(28).Top = 2880
Brick(28).Left = 2040
Brick(29).Top = 1200
Brick(29).Left = 4560
Brick(30).Top = 1200
Brick(30).Left = 1200
Brick(31).Top = 480
Brick(31).Left = 360

End Function
Function load7()
Brick(0).Top = 2160
Brick(0).Left = 5040
Brick(1).Top = 2160
Brick(1).Left = 0
Brick(2).Top = 1800
Brick(2).Left = 2520
Brick(3).Top = 120
Brick(3).Left = 0
Brick(4).Top = 2160
Brick(4).Left = 2520
Brick(5).Top = 2160
Brick(5).Left = 3360
Brick(6).Top = 840
Brick(6).Left = 1680
Brick(7).Top = 2160
Brick(7).Left = 840
Brick(8).Top = 840
Brick(8).Left = 0
Brick(9).Top = 1560
Brick(9).Left = 2520
Brick(10).Top = 600
Brick(10).Left = 1680
Brick(11).Top = 2160
Brick(11).Left = 1680
Brick(12).Top = 1080
Brick(12).Left = 0
Brick(13).Top = 360
Brick(13).Left = 3360
Brick(14).Top = 120
Brick(14).Left = 5880
Brick(15).Top = 360
Brick(15).Left = 0
Brick(16).Top = 1560
Brick(16).Left = 840
Brick(17).Top = 1320
Brick(17).Left = 840
Brick(18).Top = 1560
Brick(18).Left = 4200
Brick(19).Top = 600
Brick(19).Left = 3360
Brick(20).Top = 2160
Brick(20).Left = 4200
Brick(21).Top = 120
Brick(21).Left = 1680
Brick(22).Top = 1800
Brick(22).Left = 4200
Brick(23).Top = 1320
Brick(23).Left = 2520
Brick(24).Top = 840
Brick(24).Left = 3360
Brick(25).Top = 1080
Brick(25).Left = 3360
Brick(26).Top = 120
Brick(26).Left = 3360
Brick(27).Top = 360
Brick(27).Left = 1680
Brick(28).Top = 2160
Brick(28).Left = 5880
Brick(29).Top = 1320
Brick(29).Left = 4200
Brick(30).Top = 1080
Brick(30).Left = 1680
Brick(31).Top = 600
Brick(31).Left = 0

End Function
Function load8()
Brick(0).Top = 3000
Brick(0).Left = 5040
Brick(1).Top = 3000
Brick(1).Left = 0
Brick(2).Top = 2400
Brick(2).Left = 0
Brick(3).Top = 1200
Brick(3).Left = 5880
Brick(4).Top = 3000
Brick(4).Left = 2520
Brick(5).Top = 3000
Brick(5).Left = 3360
Brick(6).Top = 1800
Brick(6).Left = 1680
Brick(7).Top = 3000
Brick(7).Left = 840
Brick(8).Top = 1200
Brick(8).Left = 840
Brick(9).Top = 2400
Brick(9).Left = 840
Brick(10).Top = 1200
Brick(10).Left = 3360
Brick(11).Top = 3000
Brick(11).Left = 1680
Brick(12).Top = 1800
Brick(12).Left = 840
Brick(13).Top = 1800
Brick(13).Left = 5040
Brick(14).Top = 1800
Brick(14).Left = 5880
Brick(15).Top = 1200
Brick(15).Left = 5040
Brick(16).Top = 2400
Brick(16).Left = 1680
Brick(17).Top = 2400
Brick(17).Left = 2520
Brick(18).Top = 2400
Brick(18).Left = 5040
Brick(19).Top = 1800
Brick(19).Left = 4200
Brick(20).Top = 3000
Brick(20).Left = 4200
Brick(21).Top = 1200
Brick(21).Left = 4200
Brick(22).Top = 2400
Brick(22).Left = 4200
Brick(23).Top = 2400
Brick(23).Left = 3360
Brick(24).Top = 1800
Brick(24).Left = 3360
Brick(25).Top = 1800
Brick(25).Left = 0
Brick(26).Top = 1200
Brick(26).Left = 0
Brick(27).Top = 1200
Brick(27).Left = 2520
Brick(28).Top = 3000
Brick(28).Left = 5880
Brick(29).Top = 2400
Brick(29).Left = 5880
Brick(30).Top = 1800
Brick(30).Left = 2520
Brick(31).Top = 1200
Brick(31).Left = 1680

End Function
Function load9()
Brick(0).Top = 3240
Brick(0).Left = 5040
Brick(1).Top = 3240
Brick(1).Left = 0
Brick(2).Top = 2760
Brick(2).Left = 0
Brick(3).Top = 1560
Brick(3).Left = 5880
Brick(4).Top = 3000
Brick(4).Left = 2520
Brick(5).Top = 3240
Brick(5).Left = 3360
Brick(6).Top = 2280
Brick(6).Left = 1680
Brick(7).Top = 3000
Brick(7).Left = 840
Brick(8).Top = 1560
Brick(8).Left = 840
Brick(9).Top = 2520
Brick(9).Left = 840
Brick(10).Top = 1800
Brick(10).Left = 3360
Brick(11).Top = 3240
Brick(11).Left = 1680
Brick(12).Top = 2040
Brick(12).Left = 840
Brick(13).Top = 2280
Brick(13).Left = 5040
Brick(14).Top = 2040
Brick(14).Left = 5880
Brick(15).Top = 1800
Brick(15).Left = 5040
Brick(16).Top = 2760
Brick(16).Left = 1680
Brick(17).Top = 2520
Brick(17).Left = 2520
Brick(18).Top = 2760
Brick(18).Left = 5040
Brick(19).Top = 2040
Brick(19).Left = 4200
Brick(20).Top = 3000
Brick(20).Left = 4200
Brick(21).Top = 1560
Brick(21).Left = 4200
Brick(22).Top = 2520
Brick(22).Left = 4200
Brick(23).Top = 2760
Brick(23).Left = 3360
Brick(24).Top = 2280
Brick(24).Left = 3360
Brick(25).Top = 2280
Brick(25).Left = 0
Brick(26).Top = 1800
Brick(26).Left = 0
Brick(27).Top = 1560
Brick(27).Left = 2520
Brick(28).Top = 3000
Brick(28).Left = 5880
Brick(29).Top = 2520
Brick(29).Left = 5880
Brick(30).Top = 2040
Brick(30).Left = 2520
Brick(31).Top = 1800
Brick(31).Left = 1680

End Function
Function load10()
Brick(0).Top = 3000
Brick(0).Left = 5880
Brick(1).Top = 3000
Brick(1).Left = 840
Brick(2).Top = 2760
Brick(2).Left = 0
Brick(3).Top = 120
Brick(3).Left = 5880
Brick(4).Top = 1560
Brick(4).Left = 2520
Brick(5).Top = 3000
Brick(5).Left = 4200
Brick(6).Top = 2280
Brick(6).Left = 1680
Brick(7).Top = 1560
Brick(7).Left = 840
Brick(8).Top = 120
Brick(8).Left = 840
Brick(9).Top = 1080
Brick(9).Left = 840
Brick(10).Top = 1800
Brick(10).Left = 3360
Brick(11).Top = 3000
Brick(11).Left = 2520
Brick(12).Top = 600
Brick(12).Left = 840
Brick(13).Top = 2280
Brick(13).Left = 5040
Brick(14).Top = 600
Brick(14).Left = 5880
Brick(15).Top = 1800
Brick(15).Left = 5040
Brick(16).Top = 2760
Brick(16).Left = 1680
Brick(17).Top = 1080
Brick(17).Left = 2520
Brick(18).Top = 2760
Brick(18).Left = 5040
Brick(19).Top = 600
Brick(19).Left = 4200
Brick(20).Top = 1560
Brick(20).Left = 4200
Brick(21).Top = 120
Brick(21).Left = 4200
Brick(22).Top = 1080
Brick(22).Left = 4200
Brick(23).Top = 2760
Brick(23).Left = 3360
Brick(24).Top = 2280
Brick(24).Left = 3360
Brick(25).Top = 2280
Brick(25).Left = 0
Brick(26).Top = 1800
Brick(26).Left = 0
Brick(27).Top = 120
Brick(27).Left = 2520
Brick(28).Top = 1560
Brick(28).Left = 5880
Brick(29).Top = 1080
Brick(29).Left = 5880
Brick(30).Top = 600
Brick(30).Left = 2520
Brick(31).Top = 1800
Brick(31).Left = 1680

End Function
Function BallHitBottom()
'
Lives = Lives - 1
If Lives = -1 Then
response = MsgBox("You lost all of your lives!  Your Score was " & Score & ".  Play again?", vbYesNo + vbInformation, "Game Over!")
    If response = vbYes Then
    Score = 0
    Lives = 5
    LvLbonus = 200
    XCount = 0
    
    load1
    Else
    Unload Me
    End
    End If
End If
lblLives.Caption = Lives
Ball.Top = 4560
Ball.Left = Paddle.Left + 480
PlayWav "loselife.wav"
'
End Function

Function RedirectBall()
'

'HITS PADDLE
If HitPaddle = True Then
If Release = False Then
HitPaddle = False
Direction = "Down"
BrickSide = "TB"
RedirectBall
End If

    If Ball.Left - Paddle.Left >= -120 And Ball.Left - Paddle.Left < 450 Then
    Direction = "DownLeft"
    BrickSide = "TB"
    HitPaddle = False
    GoTo TB:
    RedirectBall
    End If
    '
    If Ball.Left - Paddle.Left >= 450 And Ball.Left - Paddle.Left <= 510 Then
    Direction = "Down"
    BrickSide = "TB"
    HitPaddle = False
    RedirectBall
    End If
    '
    If Ball.Left - Paddle.Left > 510 And Ball.Left - Paddle.Left <= 1080 Then
    Direction = "DownRight"
    BrickSide = "TB"
    HitPaddle = False
    GoTo TB:
    RedirectBall
    End If
End If
'HITS A SIDE
'we know that at the first brickhit, the ball will be going up because of shootball
'////////
'/////
If Direction = "Down" Then
    Direction = "Up"
Do While HitBrick = False
Ball.Top = Ball.Top - 3
ScanHit
DoEvents
Loop
End If
'////////
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
TB:
'
If Direction = "Up" Then
    Direction = "Down"
HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpLeft" Then
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpRight" Then
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownLeft" Then
    Direction = "UpLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownRight" Then
    Direction = "UpRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If

'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'LF:
'
'
If Direction = "UpLeft" Then
    Direction = "UpRight"
    HitBrick = False
Do While HitBrick = False
    If Ball.Top = 0 Then
    Direction = "DownRight"
    BrickSide = "LF"
    RedirectBall
    End If
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpRight" Then
    Direction = "UpLeft"
    HitBrick = False
Do While HitBrick = False
    If Ball.Top = 0 Then
    Direction = "DownLeft"
    BrickSide = "LF"
    RedirectBall
    End If
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownLeft" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpLeft"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownRight" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpRight"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
'

End Function

Function ScanHit()
'scan for hit every 1 twip move
For i = 0 To 31
'00000000000000000
If Ball.Top - Brick(i).Top = 240 And Ball.Left - Brick(i).Left < 840 And Brick(i).Left - Ball.Left < 120 Then
Brick(i).Top = 10000
BrickSide = "TB"
HitBrick = True
Score = Score + 100
lblScore.Caption = Score
PlayWav "boop.wav"
'
XCount = XCount + 1
If XCount = 32 Then
LoadNxtLvl
XCount = 0
End If
'
If Direction = "Up" Then
Direction = "Down"
HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpLeft" Then
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpRight" Then
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownLeft" Then
    Direction = "UpLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownRight" Then
    Direction = "UpRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
End If
'0000000000000
If Brick(i).Top - Ball.Top = 120 And Ball.Left - Brick(i).Left < 840 And Brick(i).Left - Ball.Left < 120 Then
Brick(i).Top = 10000
BrickSide = "TB"
HitBrick = True
Score = Score + 100
lblScore.Caption = Score
PlayWav "boop.wav"
XCount = XCount + 1
If XCount = 32 Then
LoadNxtLvl
XCount = 0
End If
If Direction = "Up" Then
    Direction = "Down"
HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpLeft" Then
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpRight" Then
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownLeft" Then
    Direction = "UpLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownRight" Then
    Direction = "UpRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
End If
'000000000000000000000
If Ball.Left - Brick(i).Left = 840 And Ball.Top - Brick(i).Top < 240 And Brick(i).Top - Ball.Top < 120 Then
Brick(i).Top = 10000
BrickSide = "LF"
HitBrick = True
Score = Score + 100
lblScore.Caption = Score
PlayWav "boop.wav"
XCount = XCount + 1
If XCount = 32 Then
LoadNxtLvl
XCount = 0
End If
If Direction = "UpLeft" Then
    Direction = "UpRight"
    HitBrick = False
Do While HitBrick = False
    If Ball.Top = 0 Then
    Direction = "DownRight"
    BrickSide = "LF"
    RedirectBall
    End If
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpRight" Then
    Direction = "UpLeft"
    HitBrick = False
Do While HitBrick = False
    If Ball.Top = 0 Then
    Direction = "DownLeft"
    BrickSide = "LF"
    RedirectBall
    End If
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownLeft" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpLeft"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownRight" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpRight"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
End If
If Brick(i).Left - Ball.Left = 120 And Ball.Top - Brick(i).Top < 240 And Brick(i).Top - Ball.Top < 120 Then
Brick(i).Top = 10000
BrickSide = "LF"
HitBrick = True
Score = Score + 100
lblScore.Caption = Score
PlayWav "boop.wav"
XCount = XCount + 1
If XCount = 32 Then
LoadNxtLvl
XCount = 0
End If
If Direction = "UpLeft" Then
    Direction = "UpRight"
    HitBrick = False
Do While HitBrick = False
    If Ball.Top = 0 Then
    Direction = "DownRight"
    BrickSide = "LF"
    RedirectBall
    End If
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpRight" Then
    Direction = "UpLeft"
    HitBrick = False
Do While HitBrick = False
    If Ball.Top = 0 Then
    Direction = "DownLeft"
    BrickSide = "LF"
    RedirectBall
    End If
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownLeft" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpLeft"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownRight" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpRight"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
End If
'a direct corner hit rarely occurs but when it does the engine
'couldn't handle it so i made these scans:
'
'this one's for a direct bottom left corner hit:
If Brick(i).Left - Ball.Left = 120 And Ball.Top - Brick(i).Top = 240 Then
Brick(i).Top = 10000
BrickSide = "LF"
Direction = "DownRight"
HitBrick = True
Score = Score + 100
lblScore.Caption = Score
PlayWav "boop.wav"
XCount = XCount + 1
If XCount = 32 Then
LoadNxtLvl
XCount = 0
End If
If Direction = "DownRight" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpRight"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If


End If
'for a bottom right corner:
If Ball.Left - Brick(i).Left = 840 And Ball.Top - Brick(i).Top = 240 Then
Brick(i).Top = 10000
BrickSide = "LF"
Direction = "DownLeft"
HitBrick = True
Score = Score + 100
lblScore.Caption = Score
PlayWav "boop.wav"
XCount = XCount + 1
If XCount = 32 Then
LoadNxtLvl
XCount = 0
End If
If Direction = "DownLeft" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpLeft"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If

End If
'top right corner
If Ball.Left - Brick(i).Left = 840 And Brick(i).Top - Ball.Top = 120 Then
Brick(i).Top = 10000
BrickSide = "TB"
Direction = "DownRight"
HitBrick = True
Score = Score + 100
lblScore.Caption = Score
PlayWav "boop.wav"
XCount = XCount + 1
If XCount = 32 Then
LoadNxtLvl
XCount = 0
End If
If Direction = "DownRight" Then
    Direction = "UpRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If


End If
'top left
If Brick(i).Left - Ball.Left = 120 And Brick(i).Top - Ball.Top = 120 Then
Brick(i).Top = 10000
BrickSide = "TB"
Direction = "DownLeft"
HitBrick = True
Score = Score + 100
lblScore.Caption = Score
PlayWav "boop.wav"
XCount = XCount + 1
If XCount = 32 Then
LoadNxtLvl
XCount = 0
End If
If Direction = "DownLeft" Then
    Direction = "UpLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If

End If
'
Next i
'
'
If Ball.Top > 4680 Then BallHitBottom 'hit bottom (lose)
If Ball.Top = 0 Then
BrickSide = "TB"
HitBrick = True
If Direction = "Up" Then
    Direction = "Down"
HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpLeft" Then
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "UpRight" Then
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
End If
If Ball.Left = 0 Then
BrickSide = "LF"
HitBrick = True
If Direction = "UpLeft" Then
    Direction = "UpRight"
    HitBrick = False
Do While HitBrick = False
    If Ball.Top = 0 Then
    Direction = "DownRight"
    BrickSide = "LF"
    RedirectBall
    End If
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownLeft" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpLeft"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownRight"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left + 3
ScanHit
DoEvents
Loop
End If
End If



If Ball.Left = 6600 Then
BrickSide = "LF"
HitBrick = True
If Direction = "UpRight" Then
    Direction = "UpLeft"
    HitBrick = False
Do While HitBrick = False
    If Ball.Top = 0 Then
    Direction = "DownLeft"
    BrickSide = "LF"
    RedirectBall
    End If
Ball.Top = Ball.Top - 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
If Direction = "DownRight" Then
        If Ball.Top = 4560 Then
        'if ball hits paddle and wall at same time it tends to the paddlehit first
        Direction = "UpRight"
        BrickSide = "LF"
        '
        RedirectBall
        End If
    Direction = "DownLeft"
    HitBrick = False
Do While HitBrick = False
Ball.Top = Ball.Top + 3
Ball.Left = Ball.Left - 3
ScanHit
DoEvents
Loop
End If
End If
'
If Ball.Top = 4560 And Ball.Left - Paddle.Left < 1080 And Paddle.Left - Ball.Left < 120 Then
HitPaddle = True
RedirectBall
End If
'
'
'If HitBrick = True Then RedirectBall
'
End Function

Private Sub bonus_Timer()
If LvLbonus = 1 Then bonus.Enabled = False
LvLbonus = LvLbonus - 1
lblBonus = LvLbonus
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Release = False
'
If KeyCode = vbKeyRight Then
PadDirec = "Right"
PadMove.Enabled = True
End If
'
If KeyCode = vbKeyLeft Then
If Paddle.Left = 0 Then Exit Sub
PadDirec = "Left"
PadMove.Enabled = True
End If
'
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
'
If KeyAscii = 32 Then 'space bar
    If Holding = False Then Exit Sub
Holding = False
Direction = "Down"
RedirectBall
End If
'
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
Release = True
End Sub

Private Sub Form_Load()
Paddle.Left = 3000
Ball.Left = 3480
Holding = True
Score = 0
LvLbonus = 1000
Lives = 5
Level = 0
Level = Level + 1
If Level = 11 Then
MsgBox "You win!  Your score was " & Score & ".", vbOKOnly + vbInformation, "Yay!"
Unload Me
Unload Form1
End
End If
LoadNxtLvl
Randomize
End Sub

Function LoadNxtLvl()
If Level = 1 Then load1
If Level = 2 Then load2
If Level = 3 Then load3
If Level = 4 Then load4
If Level = 5 Then load5
If Level = 6 Then load6
If Level = 7 Then load7
If Level = 8 Then load8
If Level = 9 Then load9
If Level = 10 Then load10
'
Score = Score + LvLbonus
'
Ball.Left = 3480
Ball.Top = 4560
Paddle.Left = 3000
'
lblScore.Caption = Score
LvLbonus = 1000
'
End Function

Private Sub Label5_Click()
'
Form1.Show
'
End Sub

Private Sub PadMove_Timer()
If Release = True Then PadMove.Enabled = False
'
If PadDirec = "Right" Then
If Paddle.Left = 5700 Then
PadMove.Enabled = False
Exit Sub
End If
    If Holding = True Then Ball.Left = Ball.Left + 150
Paddle.Left = Paddle.Left + 150
End If
If PadDirec = "Left" Then
If Paddle.Left = 0 Then
PadMove.Enabled = False
Exit Sub
End If
If Holding = True Then Ball.Left = Ball.Left - 150
Paddle.Left = Paddle.Left - 150
End If
End Sub
