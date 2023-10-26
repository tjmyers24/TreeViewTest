Public Class _Default
    Inherits System.Web.UI.Page
    Protected Shared D1_Child As New Dictionary(Of String, TreeNode)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            '' emulate reading from database
            Dim strCnt As String = "110"
            For i As Integer = 0 To 5
                Dim NewNode = New TreeNode
                NewNode.Value = (Integer.Parse(strCnt) + i * 10).ToString("D3")
                NewNode.Text = "Child #" & (i + 1).ToString
                NewNode.SelectAction = TreeNodeSelectAction.None
                D1_Child.Add((i + 1).ToString, NewNode)
            Next
        End If
    End Sub

    Protected Sub tvProjectVB_TreeNodePopulate(sender As Object, e As TreeNodeEventArgs)
        Dim NewNode As New TreeNode
        Dim TempNode As New TreeNode
        If D1_Child.ContainsKey((e.Node.Depth + 1)) Then
            TempNode = D1_Child.Item((e.Node.Depth + 1))

            NewNode.Text = TempNode.Text
            NewNode.Value = TempNode.Value
            NewNode.PopulateOnDemand = True
            NewNode.Expanded = False
            NewNode.SelectAction = TreeNodeSelectAction.Expand
            e.Node.ChildNodes.Add(NewNode)
        End If
        'Select Case e.Node.Depth
        '    Case 0
        '        NewNode.Text = TempNode.Text
        '        NewNode.Value = TempNode.Value
        '    Case 1
        '        NewNode.Text = TempNode.Text
        '        NewNode.Value = TempNode.Value
        '    Case Else

        'End Select
    End Sub
End Class