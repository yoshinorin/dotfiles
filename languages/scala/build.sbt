lazy val root = project in file(".")

name := Name
organization := Organization
version := Version
scalaVersion := "2.12.7"

scalacOptions ++= Seq(
  "-deprecation",
  "-feature",
  "-unchecked"
)

scalafmtOnCompile := true
coverageExcludedPackages := ".*Plugin.*;.*applicationlogs.html.*"
