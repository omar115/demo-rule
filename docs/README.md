# Rule Service #

Rule service is responsible for creating, updating and deleting rules of the Rakizo platform. When user
with roles Platform Admin, Account Admin, App Builder Admin, App Builder tries to create rule using name, 
then `RuleCreated` event is generated and Rule aggregate data is saved to Firestore in `RuleModel` along 
with the generated events.

## Overview ##

There are four main parts of this service which are as follows:

1. Source code
2. Deployments
3. Tests
4. Documents

**Service Structure**

.. code:: bash

    rule
     |---- rule
     |      |---- aggregates.py
     |      |---- api.py
     |      |---- containers.py
     |      |---- events.py
     |      |---- exceptions.py
     |      |---- repositories.py
     |      |---- schemas.py
     |      |---- services.py
     |---- deployment
     |      |---- deployment.yaml
     |---- tests
     |      |---- rule
     |      |       |---- aggregate_test.py
     |      |       |---- api_test.py
     |      |       |---- schema_test.py
     |      |       |---- service_tests.py
     |---- build.yaml
     |---- release.yaml
     |---- README.md
     |---- requirements.txt