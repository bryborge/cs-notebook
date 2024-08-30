# Model-View-Controller Pattern

The model-view-controller (MVC) pattern divides an application into three components: A model, a view, and a controller.

The model, which is the central component of the pattern, contains the application data and core functionality. It is
the dynamic data structure of the software application, and it controls the data and logic of the application. However,
it does not contain the logic that describes how the data is presented to a user.

The view displays application data and interacts with the user. It can access data in the model but cannot understand
the data, nor does it understand how the data can be manipulated.

The controller handles the input from the user and mediates between the model and the view. It listens to external
inputs from the view or from a user and creates appropriate outputs. The controller interacts with the model by calling
a method on it to generate appropriate responses.

These three components interact via some form of notification, such as an event or a callback. These notifications
contain state information, such as state changes, which are communicated to update these components. For instance, an
external event from the user may be transmitted to the controller to update the view. The MVC pattern, therefore,
decouples software components and allows the codes to be reused easily.
