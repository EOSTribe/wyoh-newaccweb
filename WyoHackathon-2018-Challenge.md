- A front-end web form where the user can either generate EOS key pair or enter pre-generated keys (private key is never sent over the wire and discarded promptly after user backs it up).

- Enter 12 characters long account name, validate that account name is available.

- Collect user email address as well for order notifications.

- After submitting account name and public key - the user is taken into payment screen.

- The amount will be pre-calculated based on EOS price and minimum amount staked for resources.

- After successful payment is made - the order is queued in a database and executed by a backend process to create the new account.

- After successful completion - an email notification is dispatched to the user notifying them of account creation.

- In case of error - an email notification is also sent to admin@eostribe.io to look into the issue.

- Should the EOS creator fund account run out of EOS funds for the new account creation - the application should display an appropriate message on the new account form and stop accepting new account applications until creator account is funded again.
