# Window Functions
### looking through the window
Perform an operation across a set of rows that are somehow related to the current row  
Similar to `GROUP BY` aggregate functions, but all rows remain in the output

To tell SQL engine there is a Window function.. using `OVER()` (The Main function)
```sql 
FUNCTION_NAME() OVER(...)
```

Two main clauses Inside OVER function:
- `ORDER BY` orders the rows related to the current row
- `PARTITION BY` splits the table into partitions based on a column's unique values 

### Sections
1. Framing
2. Fetching
3. Ranking
4. Paging
5. Grouping

