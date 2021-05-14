SELECT TOP 3
        wait_category_desc
       ,sum(total_query_wait_time_ms) total_query_wait_time_ms
FROM sys.query_store_wait_stats
where wait_category_desc not in ('Idle','User Wait')
GROUP BY wait_category_desc
order by sum(total_query_wait_time_ms) desc