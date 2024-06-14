 Databases
What are databases?

First, what are databases for?

Storing data in your application (in memory) has the obvious shortcoming that, whatever the technology you’re using, your data dies when your server stops. Some programming languages and/or frameworks take it even further by being stateless, which, in the case of an HTTP server, means your data dies at the end of an HTTP request. Whether the technology you’re using is stateless or stateful, you will need to persist your data somewhere. That’s what databases are for.

Then, why not store your data in flat files, as you did in the “Relational databases, done wrong” project? A solid database is expected to be acid, which means it guarantees:

    Atomicity: transactions are atomic, which means if a transaction fails, the result will be like it never happened.
    Consistency: you can define rules for your data, and expect that the data abides by the rules, or else the transaction fails.
    Isolation: run two operations at the same time, and you can expect that the result is as though they were ran one after the other. That’s not the case with the JSON file storage you built: if 2 insert operations are done at the same time, the later one will fetch an outdated collection of users because the earlier one is not finished yet, and therefore overwrite the file without the change that the earlier operation made, totally ignoring that it ever happened.
    Durability: unplug your server at any time, boot it back up, and it didn’t lose any data.

Also, a solid database will provide strong performance (because I/O is your bottleneck and databases are I/O, so their performance makes a whole lot more of a difference than the performance of your application’s code) and scalability (inserting one user in a collection of 5 users should take about the same time as inserting one user in a collection of 5 billion users).
