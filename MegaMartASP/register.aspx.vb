Imports System.Data.OleDb
Imports System.Configuration

Partial Class Register
    Inherits System.Web.UI.Page

    Private ReadOnly connectionString As String =
        ConfigurationManager.ConnectionStrings("AccessDBConn").ConnectionString


    Protected Sub btnRegister_Click(ByVal sender As Object,
                                    ByVal e As System.EventArgs) _
                                    Handles btnRegister.Click

        If Not Page.IsValid Then
            Return
        End If


        Using con As New OleDbConnection(connectionString)

            con.Open()


            'Check whether username already exists

            Dim checkQuery As String =
                "SELECT count (*) FROM users WHERE username = ?"

            Using checkCmd As New OleDbCommand(checkQuery, con)

                checkCmd.Parameters.AddWithValue(
                    "@username",
                    txtUsername.Text.Trim())

                Dim count As Integer =
                    Convert.ToInt32(checkCmd.ExecuteScalar())


                If count > 0 Then

                    lblMessage.Text =
                        "Username already exists."

                    Return

                End If

            End Using


            'Insert new user
            Dim insertQuery As String =
    "INSERT INTO [users] ([username], [password], [role]) " &
    "VALUES (?, ?, ?)"

            Using cmd As New OleDbCommand(insertQuery, con)

                cmd.Parameters.AddWithValue(
                    "@username",
                    txtUsername.Text.Trim())

                cmd.Parameters.AddWithValue(
                    "@password",
                    txtPassword.Text)

                cmd.Parameters.AddWithValue(
                    "@role",
                    "user")


                cmd.ExecuteNonQuery()

            End Using

        End Using


        lblMessage.Text =
            "Registration successful! You can now login."

        txtUsername.Text = ""
        txtPassword.Text = ""
        txtConfirmPassword.Text = ""
        txtEmail.Text = ""

    End Sub

End Class