:orphan:

Rule Community Services
=======================


Rule service is responsible for creating, updating and deleting rules of the Rakizo platform. When user
with roles Platform Admin, Account Admin, App Builder Admin, App Builder tries to create rule using name, 
then `RuleCreated` event is generated and Rule aggregate data is saved to Firestore in `RuleModel` along 
with the generated events.

.. toctree::
   :maxdepth: 2

   rule_creation
   rule_update


.. include:: README.md

