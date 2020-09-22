###########
Identifiers
###########

Definitions and instances often need to be uniquely and globally identified. Definitions are
identified by **class** and instances are identified by **id**. These identifiers are combined
with the identifiers of parent elements to create a globally unique identifier.

.. _tutorial-identifiers-organization-id:

***********************
Organization Identifier
***********************

An organization identifier namespaces other definitions, like class names and device IDs, under a
given organization. By convention, an organization identifier is an organization's registered
domain name, reversed; for example, ACME corp headquartered at acme.com would begin a qualified
class with ``com.acme``.

This follows the convention of `reverse domain name notation <https://en.wikipedia.org/wiki/Reverse_domain_name_notation>`_.

.. _tutorial-identifiers-qualified-class:

***************
Qualified Class
***************

:ref:`Libraries<standard-objects-library>` are identified by a qualified class. A qualified class
is a string that begins with an :ref:`tutorial-identifiers-organization-id`.

The organization identifier is followed by an identifying string for the library, separated by a
dot.

The last part of the qualified class is a version number. This must be an integer in string
representation.

Putting it all together, version 1 of ACME's device library could have the qualified class
``com.acme.devices.1``.

.. _tutorial-identifiers-qualified-device-id:

*******************
Qualified Device ID
*******************

The UDR :ref:`properties-identification-device-id` property follows a similar qualification
convention to qualified classes.

It should follow the form ``org-id.device-name.version`` where org-id is the
:ref:`tutorial-identifiers-organization-id`, device-name is a string uniquely identifying the
device model within the organization, and version is a string-represented integer representing the
version of the device for the purposes of the UDR library.

This version number must change anytime the device's definition changes.

.. _tutorial-identifiers-qualified-id:

************
Qualified ID
************