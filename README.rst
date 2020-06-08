############
Docker files
############

Building docker images to run sshd daemon.

.. warning::

   The images exposes the sshd host keys in this git repository.

   Don't access to the containers from internet.

################
Ansible playbook
################

*****************************
Host Setup (Debian or Ubuntu)
*****************************

.. code-block:: shell

   $ sudo apt install ansible

******************************
Guest Setup (Debian or Ubuntu)
******************************

.. code-block:: shell

   $ sudo apt install python3-apt
