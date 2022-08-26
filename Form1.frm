VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "flood fill maze - by Davide Chiappetta"
   ClientHeight    =   8280
   ClientLeft      =   60
   ClientTop       =   435
   ClientWidth     =   12570
   LinkTopic       =   "Form1"
   ScaleHeight     =   552
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   838
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtSizeSquare 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0FFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   9540
      TabIndex        =   6
      Text            =   "25"
      Top             =   60
      Width           =   645
   End
   Begin VB.TextBox txtValueRandom 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0FFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   7620
      TabIndex        =   3
      Text            =   "7"
      Top             =   60
      Width           =   645
   End
   Begin VB.PictureBox pic 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   7665
      Left            =   210
      ScaleHeight     =   509
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   813
      TabIndex        =   2
      Top             =   450
      Width           =   12225
      Begin VB.Label lblCursor 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "a"
         BeginProperty Font 
            Name            =   "Wingdings 3"
            Size            =   18
            Charset         =   2
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   585
         Left            =   8940
         TabIndex        =   7
         Top             =   1410
         Visible         =   0   'False
         Width           =   375
      End
   End
   Begin VB.CommandButton cmdReset 
      Caption         =   "reset"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2610
      TabIndex        =   1
      Top             =   60
      Width           =   945
   End
   Begin VB.CommandButton cmdMaze 
      Caption         =   "make random  new maze"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   60
      Width           =   2265
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "size square:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   8550
      TabIndex        =   5
      Top             =   120
      Width           =   945
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "value random 1 to 10 (obstacle or square black):"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   3870
      TabIndex        =   4
      Top             =   120
      Width           =   3795
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Dim SIZE_SQUARE As Long

Private Type t_map
    obstacle As Boolean
    dirty As Boolean
    color As Boolean
End Type
Dim map() As t_map


Private Type t_select
    row As Long
    col As Long
End Type
Dim sel As t_select


Dim cursCaption(3) As String

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Sub cmdReset_Click()
    lblCursor.Visible = False
    resetMap
    resetDraw
End Sub

Sub resetMap()
    For row = 0 To UBound(map, 1)
        For col = 0 To UBound(map, 2)
            map(row, col).dirty = False
        Next col
    Next row
End Sub



Function floodFill1(ByVal iRow As Long, ByVal iCol As Long) As Boolean

    'if I go above or below the limits of the edges I exit from this current stack level and
    'go back to the previous stack level and continue.
    If iRow = -1 Or iCol = -1 Then Exit Function
    If iRow > UBound(map, 1) - 1 Then Exit Function
    If iCol > UBound(map, 2) - 1 Then Exit Function


    'if .dirty = True or .obstacle = True is useless to continue on the same level of stack
    'if I continued then I would immediately go into infinite loop because I repeat the same pattern.
    
    'if .dirty=True  it means that it has already been marked so I can exit from this current stack level and
    'go back to the previous stack level and continue.
    If map(iRow, iCol).dirty = True Then
        Exit Function
    Else

        'if .obstacle=True it means that it is a obstacle (square black) so I can exit from this current stack level and
        'go back to the previous stack level and continue.
        If map(iRow, iCol).obstacle = True Then
            Exit Function
        End If

        map(iRow, iCol).dirty = True


        row = iRow
        col = iCol
        sz = SIZE_SQUARE
        pic.Line (col * sz, row * sz)-(col * sz + sz, row * sz + sz), vbYellow, BF
        

        pic.Line (col * sz, row * sz)-(col * sz + sz, row * sz + sz), &H808080, B
        
        
        'DoEvents: Sleep 200


    End If
    viewPosition iRow, iCol, "UP"
    floodFill1 iRow - 1, iCol

    viewPosition iRow, iCol, "LEFT"
    floodFill1 iRow, iCol - 1


    viewPosition iRow, iCol, "DOWN"
    floodFill1 iRow + 1, iCol



    viewPosition iRow, iCol, "RIGHT"
    floodFill1 iRow, iCol + 1

End Function

Sub viewPosition(ByVal iRowCurr As Long, ByVal iColCurr As Long, Optional ByVal direction As String = "")
    If lblCursor.Visible = False Then lblCursor.Visible = True
    
    Select Case direction
        Case "UP"
            lblCursor.caption = Chr(cursCaption(0))
            lblCursor.Left = (SIZE_SQUARE * iColCurr) '+ (SIZE_SQUARE / 2)
            lblCursor.Top = (SIZE_SQUARE * iRowCurr) - SIZE_SQUARE / 2
            
        Case "DOWN"
            lblCursor.caption = Chr(cursCaption(1))
            lblCursor.Left = (SIZE_SQUARE * iColCurr)
            lblCursor.Top = (SIZE_SQUARE * iRowCurr) + SIZE_SQUARE / 2
        Case "LEFT"
            lblCursor.caption = Chr(cursCaption(2))
            lblCursor.Left = (SIZE_SQUARE * iColCurr) - SIZE_SQUARE / 2
            lblCursor.Top = (SIZE_SQUARE * iRowCurr)
            
        Case "RIGHT"
            lblCursor.caption = Chr(cursCaption(3))
            lblCursor.Left = (SIZE_SQUARE * iColCurr) + SIZE_SQUARE / 2
            lblCursor.Top = (SIZE_SQUARE * iRowCurr)
    End Select

    
End Sub



'here the code avoids making the call to itself by checking if the boxes
'have already been marked (.dirty=False) or if the boxes are black even (.obstacle=False)
'also if the difference does not exist between this function and the other
'because runtime VB6 doesn't have a real stack like other languages, and  "if, else, endif" take the same time
'the difference exist only once compiled as executable, where "if, else, endif" and stack is real

Function floodFill2(ByVal iRow As Long, ByVal iCol As Long) As Boolean
    'DoEvents

    If map(iRow, iCol).dirty = True Then
        Exit Function
    Else

        If map(iRow, iCol).obstacle = True Then
            Exit Function
        End If
        

        map(iRow, iCol).dirty = True

        row = iRow
        col = iCol
        sz = SIZE_SQUARE
        pic.Line (col * sz, row * sz)-(col * sz + sz, row * sz + sz), vbYellow, BF
        pic.Line (col * sz, row * sz)-(col * sz + sz, row * sz + sz), &H808080, B

    End If
    
    'Stop

    viewPosition iRow, iCol, "UP"
    If iRow > 0 Then
        If map(iRow - 1, iCol).dirty = False And map(iRow - 1, iCol).obstacle = False Then
            floodFill2 iRow - 1, iCol 'UP
        End If
    End If



    viewPosition iRow, iCol, "LEFT"
    If iCol > 0 Then
        If map(iRow, iCol - 1).dirty = False And map(iRow, iCol - 1).obstacle = False Then
            floodFill2 iRow, iCol - 1 'LEFT
        End If
    End If
    

    viewPosition iRow, iCol, "DOWN"
    If iRow < UBound(map, 1) - 1 Then
        If map(iRow + 1, iCol).dirty = False And map(iRow + 1, iCol).obstacle = False Then
            floodFill2 iRow + 1, iCol 'DOWN
        End If
    End If
    


    viewPosition iRow, iCol, "RIGHT"
    If iCol < UBound(map, 2) - 1 Then
        If map(iRow, iCol + 1).dirty = False And map(iRow, iCol + 1).obstacle = False Then
            floodFill2 iRow, iCol + 1 'RIGHT
        End If
    End If
    

End Function


Private Sub Form_Load()
    'Randomize Timer
    ReDim map(0, 0)
    SIZE_SQUARE = Val(txtSizeSquare.Text)
    lblCursor.Width = SIZE_SQUARE
    lblCursor.Height = SIZE_SQUARE

    
    sel.col = -1
    sel.row = -1
    
    
    Set pic.Font = lblCursor.Font

    cursCaption(0) = &H8F '&HE3 '
    cursCaption(1) = &H90 '&HE4 '
    cursCaption(2) = &H8D '&HE1 '
    cursCaption(3) = &H8E '&HE2 '

    
End Sub

Private Sub cmdMaze_Click()
    lblCursor.Visible = False
    maze
End Sub

Sub maze()
    Dim valRandom As Long
    
    If IsNumeric(txtValueRandom.Text) = False Then
        MsgBox "value random not valid"
        Exit Sub
    End If
    valRandom = 10 - Val(txtValueRandom.Text)
    If valRandom = 0 Then valRandom = 1
    
    
    If IsNumeric(txtSizeSquare.Text) = False Then
        MsgBox "value size square not valid"
        Exit Sub
    End If

    SIZE_SQUARE = Val(txtSizeSquare.Text)
    If SIZE_SQUARE = 0 Then SIZE_SQUARE = 25
    
    
    
    nRow = pic.Height \ SIZE_SQUARE
    nCol = pic.Width \ SIZE_SQUARE
    
    ReDim map(nRow, nCol)
    
    
    Dim color As Long
    
    For row = 0 To pic.Height - SIZE_SQUARE Step SIZE_SQUARE
        For col = 0 To pic.Width - SIZE_SQUARE Step SIZE_SQUARE
        
        
        iCol = col \ SIZE_SQUARE
        iRow = row \ SIZE_SQUARE
        
        If (Val(Rnd * valRandom) Mod valRandom) = 0 Then
            color = vbBlack
            map(iRow, iCol).obstacle = True
        Else
            color = vbWhite
        End If

        pic.Line (col, row)-(col + SIZE_SQUARE, row + SIZE_SQUARE), color, BF
        pic.Line (col, row)-(col + SIZE_SQUARE, row + SIZE_SQUARE), &H808080, B

        Next col
    Next row
End Sub







Private Sub pic_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    sel.col = X \ SIZE_SQUARE
    sel.row = Y \ SIZE_SQUARE
    
    DoEvents
    t = Timer
    floodFill1 sel.row, sel.col
    t1 = Timer - t
    
'    MsgBox Round(t1, 6)
'
'    resetMap
'    resetDraw
'
'    t = Timer
'    floodFill2 sel.row, sel.col
'    t1 = Timer - t
'    MsgBox Round(t1, 6)
    
    
End Sub






Sub resetDraw()
    Dim color As Long

    pic.Line (0, 0)-(pic.ScaleWidth, pic.ScaleHeight), vbWhite, BF

    sz = SIZE_SQUARE

    For row = 0 To UBound(map, 1) - 1
        For col = 0 To UBound(map, 2) - 1



            If map(row, col).obstacle = True Then
                color = vbBlack
            Else
                color = vbWhite
            End If


            pic.Line (col * sz, row * sz)-(col * sz + sz, row * sz + sz), color, BF

            pic.Line (col * sz, row * sz)-(col * sz + sz, row * sz + sz), &H808080, B


        Next col
    Next row

End Sub
















