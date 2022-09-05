# :window: Window Functions
Perform an operation across a set of rows that are somehow related to the current row. similar to `GROUP BY` aggregate functions, but all rows remain in the output.

To tell SQL engine there is a Window function.. using `OVER()` (The Main function)
```sql 
FUNCTION_NAME() OVER(...)
```

Two main clauses Inside OVER function:
- `ORDER BY` orders the rows related to the current row
- `PARTITION BY` splits the table into partitions based on a column's unique values 

lets **Looking through the window** :grin:	

### :heavy_check_mark: Sections
- [Framing](#Framing)
- [Fetching](#Fetching)
- [Ranking](#Ranking)
- [Paging](#Paging)
- [Grouping](#Grouping)
---

## Framing
```
ROWS BETWEEN [START] AND [FINISH]
  - n PRECEDING: n rows before the current row
  - CURRENT ROW: the current row
  - n FOLLOWING: n rows a
  
  - UNBOUNDED PRECEDING: the beginning of a table or partition
  - UNBOUNDED FOLLOWING: the end of a table or partition
```
By default, a frame - starts at the beginning of a table or partition 
			              - ends at the current row

[1] **MAX without a frame:**
`MAX(Medals) OVER (ORDER BY Year ASC) AS Max_Medals`

| Year | Medals | Max_Medals |
|------|--------|------------|
| 1996 | 36     | 36 	       |
| 2000 | 66     | 66 	       |
| 2004 | 47     | 66 	       |
| 2008 | 43     | 66	       |
| 2012 | 47     | 66 	       |

[1] **MAX with a frame:**
`MAX(Medals) OVER (ORDER BY Year ASC ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS Max_Medals_Last`

| Year | Medals |Max_Medals_Last |
|------|--------|----------------|
| 1996 | 36     | 36 		   |
| 2000 | 66     | 66		   |
| 2004 | 47     | 66 		   |
| 2008 | 43     | 47		   |
| 2012 | 47     | 47 		   |








