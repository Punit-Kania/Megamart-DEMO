Imports System.Data.OleDb
Imports System.Configuration

Partial Class Login
    Inherits System.Web.UI.Page

    Private ReadOnly connectionString As String =
        ConfigurationManager.ConnectionStrings("AccessDBConn").ConnectionString


    Protected Sub btnLogin_Click(ByVal sender As Object,
                                 ByVal e As System.EventArgs) _
                                 Handles btnLogin.Click

        If Not Page.IsValid Then
            Return
        End If


        Using con As New OleDbConnection(connectionString)

            Dim query As String =
                "SELECT userid, username, role " &
                "FROM [users] " &
                "WHERE [username] = ? AND [password] = ?"


            Using cmd As New OleDbCommand(query, con)

                cmd.Parameters.AddWithValue(
                    "@username",
                    txtUsername.Text.Trim())

                cmd.Parameters.AddWithValue(
                    "@password",
                    txtPassword.Text)


                con.Open()


                Using dr As OleDbDataReader = cmd.ExecuteReader()

                    If dr.Read() Then

                        'Create Session

                        Session("UserID") =
                            dr("userid").ToString()

                        Session("Username") =
                            dr("username").ToString()

                        Session("Role") =
                            dr("role").ToString()


                        'Redirect according to role

                        If dr("role").ToString().ToLower() = "admin" Then

                            Response.Redirect("AdminDashboard.aspx")

                        Else

                            Response.Redirect("UserDashboard.aspx")

                        End If

                    Else

                        lblMessage.Text =
                            "Invalid username or password."

                    End If

                End Using

            End Using

        End Using

    End Sub

End Class