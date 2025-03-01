# Transformation of UML Messages into Various Standard Formats

All standard formats for data exchange, whether ebXML, SWIFT, or UN/EDIFACT, have their own way of structuring and representing messages. SWIFT messages are described not only graphically, but also with text. The same is true for UN/EDIFACT, where the graphic illustrations are standardized through the use of branching diagrams.

The trend is clearly going into the direction of modeling messages in a fundamentally protocol and implementation neutral way, with UML.

Then all the standard formats can be derived from the representation in UML, the “mother of all messages”. Depending on availability this can even be done according to firmly defined transformation rules. (The profile UML Profile for Enterprise Distributed Object Computing was developed as guidelines for the translation of UML descriptions into ‘real’ business systems. This profile, in turn, is based upon standards of ebXML.) Some of the arguments for choosing UML as a neutral form of representation are:

 * System-and implementation-independent description of business objects and messages
 * Accepted and widely used standard
 * Option of depicting messages and business processes
 * Unified language for the description of systems
 
An essential advantage of neutral message specification in UML is the much easier conversion of messages from one format to another. Because of this, we recommend the modeling of messages in UML first, and subsequently transforming messages into the appropriate format. Here, it is not important whether the target format is a standard format or an in-house proprietary format. Especially in the later case, it is much easier to convert a project from a proprietary format to a standard one if neutral UML specifications are available.

A detailed description of transformation rules would go well beyond the scope of this text. Because of this, we would like to refer to OMG's Model Driven Architecture <b>(MDA)</b> and the two profiles <b>UML Profile for Enterprise Distributed Object Computing</b> and <b>UML Profile for Enterprise Application Integration</b>, which provide comprehensive insight into this subject matter from a UML perspective.


