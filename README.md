# Scuba Diving DB

<small>A DB to aid business operations</small>

<details>
  <summary>Business case</summary>
  <br>

A company which runs scub-diving vacations wants to set up a database to aid their business. The company owns a group of cabins on an island. It also owns several boats. It takes scuba-divers out to various specific locations, such as shipwrecks and coral reefs, for dives.

They take bookings from Holiday-Parties, made up of one or more Holiday-Makers. One of the Holiday-Makers always serves as the Group Leader. Each Holiday-Maker has a Holiday-Party Code and a unique number. Each Holiday-Party chooses one of their members as Group Leader. The company also records each Holiday-Maker's first name and family name.

Holiday-Makers stay in Cabins which are billed at a daily rate. There may be one, two, or more Holiday-Makers to a Cabin. Cabins are individually named and can have up to three bedrooms. No Cabin ever has members of more than one Holiday-Party in it at the same time, but of course a Holiday-Party may occupy more than one cabin. The stay of a Holiday-Party has a start-date and duration of stay.

A Dive consist of a group of Holiday Makers, who may be from several Holiday Parties. (And all, or only some, of the members of a Holiday-Party may come on a particular Dive). A Dive takes place on a given date, either in the morning, or in the afternoon, at a specific Location.

A Dive is always accompanied by a company Employee, called a Divemaster, and two or more other company employees, who remain on board the boat. Employees are identified by Employee-Numbers; Locations are identified by GPS-Coordintates translated into an eight-digit number. For each Location we record a description, and a journey-time from the dock, and a depth.

</details>

<details>
  <summary>Instructions</summary>
  <br>
  
  1. Draw a conceptual model to solve the business case
  2. Design the database model
  3. Create the schema for postgres and create the database
    
</details>
