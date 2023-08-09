resource "google_sql_database_instance" "instance" {
name = "database-instance"
database_version = "MYSQL_8_0"
region = "${var.region}"
settings {
tier = "db-f1-micro"
}
}
resource "google_sql_database" "database" {
name = "mydatabase1"
instance = "${google_sql_database_instance.instance.name}"
charset = "utf8"
collation = "utf8_general_ci"
}
resource "google_sql_user" "users" {
name = "root1"
instance = "${google_sql_database_instance.instance.name}"
host = "%"
password = "mypassw0rd"
}
