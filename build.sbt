ThisBuild / version := "0.1.0-SNAPSHOT"

ThisBuild / scalaVersion := "2.13.8"

lazy val root = (project in file("."))
  .settings(

    scalaVersion := "2.13.7",
    addCompilerPlugin("edu.berkeley.cs" % "chisel3-plugin" % "3.5.0" cross CrossVersion.full),
    libraryDependencies += "edu.berkeley.cs" %% "chiseltest" % "0.5.0",
    libraryDependencies += "edu.berkeley.cs" %% "chisel3" % "3.5.0",
    // We also recommend using chiseltest for writing unit tests
    libraryDependencies += "edu.berkeley.cs" %% "chiseltest" % "0.5.0" % "test",
    name := "ChiselParameterizedDesigns"



  )
def scalacOptionsVersion(scalaVersion: String): Seq[String] = {
    Seq() ++ {
        // If we're building with Scala > 2.11, enable the compile option
        //  switch to support our anonymous Bundle definitions:
        //  https://github.com/scala/bug/issues/10047
        CrossVersion.partialVersion(scalaVersion) match {
            case Some((2, scalaMajor: Long)) if scalaMajor < 12 => Seq()
            case _ => Seq("-Xsource:2.11")
        }
    }}