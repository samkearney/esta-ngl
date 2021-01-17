###########
Identifiers
###########

Definitions and instances often need to be uniquely and globally identified. Definitions are
identified by **class** and instances are identified by **alias**. These identifiers are combined
with the identifiers of parent elements to create a globally unique identifier.

.. _tutorial-identifiers-uri:

URI
===

UDR uses the *scheme* and *path* components of the 
`Uniform Resource Identifier <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier>`_ (URI)
specification to identify all objects using **class** and **alias** identifiers.

All fully qualified UDR identifiers should begin with the scheme ``udr://``. The scheme is then followed
by the path component, which may either be qualified or relative. UDR uses a subset of the standard URI
resolution:

For the purpose of URI identification, *Interfaces* are considered to be a directory. Therefore, all
children are assumed to be at the same level as the parent.

Starting at *property* udr://org.esta.gobo.1/gobo-wheel/gobo-rotator/speed, the following resolutions
apply:

==============  ======================================================
"position"      udr://org.esta.gobo.1/gobo-wheel/gobo-rotator/position
"."             udr://org.esta.gobo.1/gobo-wheel/gobo-rotator/
"./"            udr://org.esta.gobo.1/gobo-wheel/gobo-rotator/
".."            udr://org.esta.gobo.1/gobo-wheel/
"../"           udr://org.esta.gobo.1/gobo-wheel/
"../speed"      udr://org.esta.gobo.1/gobo-wheel/speed
"../.."         udr://org.esta.gobo.1/
"../../"        udr://org.esta.gobo.1/
"../../slots"   udr://org.esta.gobo.1/slots
==============  ======================================================

Some characters are reserved by the URI specification. UDR also uses a special ``$`` character as
a shortcut to refer to the root identifier for example if the current context was within the 
"org.esta.gobo.1" library:

udr://$/gobo-wheel is replaced with udr://org.esta.gobo.1/gobo-wheel/

=========== ==================== ==========================================================================
Reserved    : / ? # [ ] @        These characters are standard delimiters and may not be used
Permitted   & ' ( ) * , ; =      These characters may be used in the path component
Root ID     $                    Shortcut for the root of the current library or device
Instance    !                    Delimiter for the instance number of a repeating interface or property
Global      +                    Delimiter for a global alias (see :ref:`standard-objects-condition-alias`)
=========== ==================== ==========================================================================

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

.. _tutorial-identifiers-alias:

*****
Alias
*****

:ref:`standard-objects-interface-instance`, :ref:`standard-objects-property-instance` and
:ref:`standard-objects-condition` are identified by an alias.

An alias is a string uniquely identifying the object within its parent object.

Instantiated objects are addressed using the alias which may be qualified or relative (see
:ref:`tutorial-identifiers-uri`).