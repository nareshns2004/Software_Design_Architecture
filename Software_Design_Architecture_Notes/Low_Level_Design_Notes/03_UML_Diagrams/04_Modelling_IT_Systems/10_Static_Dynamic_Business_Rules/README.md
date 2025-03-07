# Static and Dynamic Business Rules

Business rules are domain rules that are depicted in an IT system model. Domain rules can be derived from business strategies, requirements, technical guidelines, and restrictions. Business rules are unrelated to information technology; they are purely derived from the domain. Examples of business rules are:

 * During check-in, each passenger has to be assigned a seat.
 * For each flight, each seat can only be assigned to one passenger.
 * A flight cannot be canceled once it has been started.

Many requirements cannot be modeled as business rules. In addition to the IT system model, a requirement catalog is part of specifying an IT system. We do not further address requirement catalogs in this text.

Business rules can be divided into two categories:

* <b>Static business rules</b>: Business rules that can be verified at any point in time. These business rules deal with the static structures of classes. These business rules can be documented in class diagrams of the structural view.

* <b>Dynamic business rules</b>: Business rules that can only be verified at a certain point in time, namely, when something happens. These business rules deal with the dynamic behavior of the objects of a class. These business rules can be documented in the statechart diagram of the behavioral view.
