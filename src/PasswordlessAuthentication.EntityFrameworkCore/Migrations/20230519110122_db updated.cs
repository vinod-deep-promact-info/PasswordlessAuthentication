using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace PasswordlessAuthentication.Migrations
{
    /// <inheritdoc />
    public partial class dbupdated : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_AppStudents",
                table: "AppStudents");

            migrationBuilder.RenameTable(
                name: "AppStudents",
                newName: "AbpStudents");

            migrationBuilder.RenameIndex(
                name: "IX_AppStudents_Email",
                table: "AbpStudents",
                newName: "IX_AbpStudents_Email");

            migrationBuilder.AlterColumn<string>(
                name: "mobile",
                table: "AbpStudents",
                type: "nvarchar(10)",
                maxLength: 10,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AbpStudents",
                table: "AbpStudents",
                column: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_AbpStudents",
                table: "AbpStudents");

            migrationBuilder.RenameTable(
                name: "AbpStudents",
                newName: "AppStudents");

            migrationBuilder.RenameIndex(
                name: "IX_AbpStudents_Email",
                table: "AppStudents",
                newName: "IX_AppStudents_Email");

            migrationBuilder.AlterColumn<string>(
                name: "mobile",
                table: "AppStudents",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(10)",
                oldMaxLength: 10);

            migrationBuilder.AddPrimaryKey(
                name: "PK_AppStudents",
                table: "AppStudents",
                column: "Id");
        }
    }
}
