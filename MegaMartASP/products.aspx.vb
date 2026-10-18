Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Partial Class products
    Inherits System.Web.UI.Page

    Private ReadOnly connectionString As String =
       ConfigurationManager.ConnectionStrings("AccessDBConn").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object,
                            ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack Then
            LoadProducts()
        End If

    End Sub

    Private Sub LoadProducts()

        Using con As New OleDbConnection(connectionString)

            Dim query As String =
                "SELECT productid, productname, category, price, stockqty FROM products"

            Using cmd As New OleDbCommand(query, con)

                Using da As New OleDbDataAdapter(cmd)

                    Dim dt As New DataTable()

                    da.Fill(dt)

                    gvProducts.DataSource = dt
                    gvProducts.DataBind()

                End Using

            End Using

        End Using

    End Sub
    Protected Sub btnSearch_Click(ByVal sender As Object,
                              ByVal e As System.EventArgs) Handles btnsearch.Click

        Using con As New OleDbConnection(connectionString)

            Dim query As String =
                "SELECT productid, productname, category, price, stockqty " &
                "FROM products " &
                "WHERE productname LIKE ?"

            Using cmd As New OleDbCommand(query, con)

                cmd.Parameters.AddWithValue("@productname",
                                            "%" & txtSearch.Text.Trim() & "%")

                Using da As New OleDbDataAdapter(cmd)

                    Dim dt As New DataTable()

                    da.Fill(dt)

                    gvProducts.DataSource = dt
                    gvProducts.DataBind()

                End Using

            End Using

        End Using

    End Sub
    Protected Sub btnShowAll_Click(ByVal sender As Object,
                               ByVal e As System.EventArgs) Handles btnshowall.Click

        txtSearch.Text = ""

        LoadProducts()

    End Sub
    Protected Sub gvProducts_RowCommand(ByVal sender As Object,
                                    ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) _
                                    Handles gvProducts.RowCommand

        If e.CommandName = "ViewDetails" Then

            Dim productID As String = e.CommandArgument.ToString()

            Response.Redirect("ProductDetails.aspx?id=" & productID)

        End If

    End Sub





    Protected Sub lstCategory_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles lstCategory.SelectedIndexChanged

        Dim category As String = lstCategory.SelectedValue

        If category = "All" Then

            LoadProducts()

        Else

            LoadProductsByCategory(category)

        End If

    End Sub
    Private Sub LoadProductsByCategory(ByVal category As String)

        Using con As New OleDbConnection(connectionString)

            Dim query As String =
                "SELECT productid, productname, category, price, stockqty " &
                "FROM products WHERE category = ?"

            Using cmd As New OleDbCommand(query, con)

                cmd.Parameters.AddWithValue("@category", category)

                Using da As New OleDbDataAdapter(cmd)

                    Dim dt As New DataTable()

                    da.Fill(dt)

                    gvProducts.DataSource = dt
                    gvProducts.DataBind()

                End Using

            End Using

        End Using

    End Sub
End Class
