Imports System.Configuration
Imports System.Data.OleDb

Partial Class check
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object,
                            ByVal e As System.EventArgs) Handles Me.Load

        Dim con As New OleDbConnection(
            ConfigurationManager.ConnectionStrings("AccessDBConn").ConnectionString
        )

        con.Open()

        Response.Write("Database Connected Successfully!")

        con.Close()

    End Sub


End Class