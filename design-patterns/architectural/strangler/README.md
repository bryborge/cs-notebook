# Stangler Pattern

The Strangler pattern is one in which an “old” system is put behind an intermediary facade. Then, over time external 
eplacement services for the old system are added behind the facade.

The facade represents the functional entry points to the existing system. Calls to the old system pass through the
facade. Behind the scenes, services within the old system are refactored into a new set of services. Once a new service
is operational, the intermediary facade is modified to route calls that used to go to the service on the old system to
the new service. Eventually, the services in the old system get "strangled" in favor of the new services.
