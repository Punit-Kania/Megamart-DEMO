Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Partial Class RepeaterProducts
    Inherits System.Web.UI.Page

    Private ReadOnly connectionString As String =
        ConfigurationManager.ConnectionStrings("AccessDBConn").ConnectionString


    Protected Sub Page_Load(ByVal sender As Object,
                            ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            LoadRepeaterProducts()

        End If

    End Sub


    Private Sub LoadRepeaterProducts()

        Using con As New OleDbConnection(connectionString)

            Dim query As String =
                "SELECT productid, productname, category, price, stockqty " &
                "FROM products"

            Using cmd As New OleDbCommand(query, con)

                Using da As New OleDbDataAdapter(cmd)

                    Dim dt As New DataTable()

                    da.Fill(dt)

                    rptProducts.DataSource = dt
                    rptProducts.DataBind()

                End Using

            End Using

        End Using

    End Sub

End Class