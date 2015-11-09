/*
Problem Statement

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in BST, and P is the parent of N.

Write a query to find the node type of BST ordered by the value of the node. Output one of the following for each node:

    Root: If node is root node.
    Leaf: If node is leaf node.
    Inner: If node is neither root nor leaf node.

Sample Input

Sample Output

1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf


Explanation

The BST below illustrates the sample:
*/

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select  n
        ,case
            --when node has no parent => 'Root'
            when (select count(*) from bst where n=outter.p) = 0 then 'Root'
            --when node has one or more parents
            --and node is a parent of 0 nodes => 'Leaf'
            when (select count(*) from bst where n=outter.p) >= 1
                    and (select count(*) from bst where p=outter.n) = 0 then 'Leaf'
            --when node is a parent of 2 or more nodes => 'Inner'
            when (select count(*) from bst where p=outter.n) >= 2 then 'Inner'
        end as newCol
from bst outter
order by n;
