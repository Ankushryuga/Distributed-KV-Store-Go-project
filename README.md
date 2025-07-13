# Distributed-key-value-store

## Requirement:

Implement a simple key-value store where data is stored across multiple nodes. This allows exploration of data partitioning, replication, and fault tolerance.

**Distributed key-value stores are a type of NoSQL database that stores data as key-value pairs that span multiple physical or virtual machines**

## Software Information:

This distributed KV store is a type of datbase that - Stores data as key-value pairs (like a giant hashmap or dictionary). - Distributes this data across multiple nodes or machines in a cluster. - Ensures scalability, fault-tolerance, consistency, and availability on its design.

## What is a key-value store?

Example:
{
"user123": { "name": "Alice", "email": "alice@example.com" },
"order456": { "items": ["item1", "item2"], "total": 99.99 }
}

- keys are unique identifiers.
- values are arbitrary blobs (JSON, binary, etc).
- Fast O(1) lookup using the key.

# What makes it distributed?

Instead of storing all data on one machine, the store distributes data across multiple nodes.

- Key Aspects:
- Partitioing => Data is split across nodes using techinques like **consistent hashing** or **sharding**.
- Replication => Keys and values are replicated to multiple nodes to tolerate failures.
- Consistency Model => Stores can be eventually consistent (e.g., Dynamo) or strongly consistent (e.g., etcd, Raft).
- Concensus Protocols => Used for coordination b/w nodes (e.g., Raft, Paxos).

## What will be building?

    - Key-value storage.
    - Data partitioning
    - Replication across nodes
    - Consistency
    - gRPC for communication
