# Interpreters in Security Hub

This section explain the role of Interpreters, interpreters group and interpreters settings. Interpreter concept allows any language/data-processing-backend to be plugged into Security Hub. Currently Security Hub supports many interpreters such as Shell, Python, JDBC, Big Query, Elastic, Markdown and more.


# What is an interpreter?

Security Hub Interpreter is the plug-in which enable a user to use a specific language/data-processing-backend. For example to use python code in Security Hub, you need `python` interpreter.

When you click on the `+Create `button in the interpreter page the interpreter drop-down list box will present all the available interpreters on your server.

![Create interpreter](/img/interpreter_create.png)

# What is an interpreter setting?

Interpreter setting is the configuration of a given interpreter on Security Hub server. For example, the properties required for JDBC interpreter to connect to the database.


<img src="/img/interpreter_setting.png" alt="drawing" width="800"/>
