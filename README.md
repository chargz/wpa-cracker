# A WPA/WPA2 Hash Cracker using Docker.

Functionality - A .cap file placed in the folder is put through an aircrack-ng attempt, with the wordlist being 'wget' directly off the internet.
All this is run in a Docker container, which is configured for automated builds - everytime there's a push to this repository (Or the repository you create by forking this).

Steps:
1) Fork this repository.
2) Create an account on Docker Cloud and link a new repository to the one you just forked.
3) Configure automated builds such that there's a build every time there's a push.
4) Add a `.cap` file to the folder, rename it to 1.cap and commit to Github. Docker Cloud should've started a build at this point.
5) Look at Docker's build logs to see if the password was cracked.
6) Optional - If you want the cracked password as a message on slack, you can create an account on Slack, and follow these instructions to get a unique URL: `https://api.slack.com/incoming-webhooks`. Place the unique URL instead of the URL already present in the Dockerfile.
