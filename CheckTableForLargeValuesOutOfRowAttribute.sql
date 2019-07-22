select name from sys.tables t where 
exists (select 1 from sys.columns c
	where user_type_id=167 and max_length=-1
	 and c.object_id=t.object_id)

select name from sys.tables t where 
exists (select 1 from sys.columns c
	where user_type_id=167 and max_length=-1
	 and c.object_id=t.object_id)
and name=@@ObjectName


select name from sys.tables t where 
exists  (select 1 from sys.columns c
	where user_type_id=167 and max_length=-1
	 and c.object_id=t.object_id)
and name=@@ObjectName and large_value_types_out_of_row=0

select case 
  		when (select name from sys.tables t where  exists  
                (select 1 from sys.columns c 
  						where user_type_id=167 and max_length=-1	 
  			  and c.object_id=t.object_id) 
  			  and name=@@ObjectName and large_value_types_out_of_row=0
  			  ) is not null then 0
  		else 1
  end