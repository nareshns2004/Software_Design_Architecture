# Elements of the View

![View](images/View.jpg)

	Figure 4.58 Interaction View

The interaction view of IT systems, illustrated in Figure 4.58, consists of two elements:

* <b>Communication diagrams</b> document the flow of <b>queries</b> within the IT system. Each query is part of a use case.

* <b>Sequence diagrams</b> document the flow of <b>mutation events</b> within the IT system. Mutation events are also part of a use case.

Both diagrams show how objects of the IT system cooperate in the processing of events. In this way, each query event from the use cases becomes its own communication diagram, and each mutation event becomes its own sequence diagram.

In reality, we do not document every flow of every query and every mutation. The effort for this would be too much. We only document those flows that are especially important or complex. The following considerations should help making the right choices:

 * For each query event we have to verify if all necessary classes, attributes, and associations are present in the class diagram. For simple queries it can be sufficient to check off the necessary data elements on a printout (see <b>Constructing Communication Diagrams</b>). For such queries a communication diagram is not needed. This work step further helps to verify or complete class diagrams.

 * Queries that are very important to the user, or that are very complex, should be documented in a communication diagram.

