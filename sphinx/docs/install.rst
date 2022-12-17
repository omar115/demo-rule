.. _install:

@startuml
title Create rule

#BDB5D5:Client sends a POST request to /rules/;
-> calls;
#ADD1B2:RuleService;
floating note : Response: {integration}, 201
:create;
#ADD1B2:RuleRepository;
:save;
floating note:RuleCreated
split
    #ADD1B2:Rule;
split again
    #ADD1B2:Events/Event;
end split
#F2D2BD:Firestore;
-> triggers;
#A7C7E7:Publisher;
legend right
    Legend
    | method |
    |<#ADD1B2> class |
    |<#F2D2BD> database |
    |<#BDB5D5> process |
    |<#A7C7E7> publisher |
endlegend
@enduml
