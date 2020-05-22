q) d:`a`b`c!1 2 3       / single record dictionary
q) d2:`a`b`c!4 5 6      / another dictionary, uniform to dictionary d above
q) enlist d             / table with one row/record
a b c
-----
1 2 3

q) enlist[d],enlist d2  / table with two rows/records
a b c
-----
1 2 3
4 5 6

q) (d;d2)                / alternative way of composing a list
a b c
-----
1 2 3
4 5 6

q) dc:`a`b`c!(1 2;3 4;5 6)  / "column" dictionary: lengths must conform, e.g. same length: 2 2 2 ~ (count 1 2;count 3 4;count 5 6)
a| 1 2
b| 3 4
c| 5 6


q) tf:flip dc                 / table is flipped "column" dictionary
a b c
-----
1 3 5
2 4 6

q) dc[`b;0]            / indexing into `b key we get its value list, then indexing into its 1st element (index 0)
3

q) tf[0;`b]            / note the flipped order of dimensions
3

q) dc[`b;0] ~ tf[0;`b] / true
1b