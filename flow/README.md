# Flow Service #

Flow service is responsible for creating, updating and deleting flows of the Rakizo platform. When user
with roles Platform Admin, Account Admin, App Builder Admin, App Builder tries to create flow using name, version,
description, then `FlowCreated` event is generated and Flow aggregate data is saved to Firestore in `FlowModel` along with the generated events.

## Overview ##

There are four main parts of this service which are as follows:

1. Source code
2. Deployments
3. Tests
4. Documents

**Service Structure**

.. code:: bash

    flow
     |---- flow
     |      |---- aggregates.py
     |      |---- api.py
     |      |---- constants.py
     |      |---- containers.py
     |      |---- events.py
     |      |---- exceptions.py
     |      |---- gateways
     |      |       |---- widget_gateway.py
     |      |---- repositories.py
     |      |---- schemas.py
     |      |---- services.py
     |---- deployment
     |      |---- deployment.yaml
     |---- tests
     |      |---- flow
     |      |       |---- aggregate_test.py
     |      |       |---- api_test.py
     |      |       |---- schema_test.py
     |      |       |---- service_tests.py
     |---- build.yaml
     |---- release.yaml
     |---- README.md
     |---- requirements.txt