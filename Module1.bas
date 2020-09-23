Attribute VB_Name = "Module1"
Public Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long

Public Function PlayWav(WavFile As String)
sndPlaySound App.Path & "\" & WavFile, 1
End Function
