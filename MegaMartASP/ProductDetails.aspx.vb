Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Partial Class ProductDetails
    Inherits System.Web.UI.Page

    Private ReadOnly connectionString As String =
        ConfigurationManager.ConnectionStrings("AccessDBConn").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object,
                            ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            LoadProduct()
        End If

    End Sub


    Private Sub LoadProduct()

        Dim productID As String = Request.QueryString("id")

        If String.IsNullOrEmpty(productID) Then

            Response.Redirect("Products.aspx")
            Return

        End If


        Using con As New OleDbConnection(connectionString)

            Dim query As String =
                "SELECT productid, productname, category, price, stockqty " &
                "FROM products WHERE productid = ?"

            Using cmd As New OleDbCommand(query, con)

                cmd.Parameters.AddWithValue("@productid", productID)

                Using da As New OleDbDataAdapter(cmd)

                    Dim dt As New DataTable()

                    da.Fill(dt)

                    If dt.Rows.Count > 0 Then

                        fvProduct.DataSource = dt
                        fvProduct.DataBind()

                    Else

                        Response.Redirect("Products.aspx")

                    End If

                End Using

            End Using

        End Using

    End Sub

End Class