local matricies = {
	-- test1 = {	0.05,	0.00,		0.00,	0.00,
				-- 0.04,	-.01,		0.00,	0.00,
				-- 0.00,	0.05,		0.00,	0.00,
				-- 0.00,	frame*0.01,	0.00,	0.00},
	topdown20 = {	0.20,	0.0,	0.00,	0.00,	-- x magic
					0.4,	0.20,	0.00,	0.00,	-- y magic
					0.0,	0.10,	0.00,	0.00,	-- z magic
					0.00,	0.00,	0.00,	0.00},	-- w magic
		
	allgood5 = {	0.010,	0.00,	0.00,	0.00,	-- x magic
					0.05,	0.025,	0.00,	0.00,	-- y magic
					0.00,	0.025,	0.00,	0.00,	-- z magic
					0.00,	0.00,	0.00,	0.00},	-- w magic		
					
	allgood20 = {	0.05,	0.00,	0.00,	0.00,	-- x magic
					0.20,	0.10,	0.00,	0.00,	-- y magic
					0.00,	0.10,	0.00,	0.00,	-- z magic
					0.00,	0.00,	0.00,	0.00},	-- w magic		
		
	allgood50 = {	0.25,	0.00,	0.00,	0.00,	-- x magic
					0.50,	0.25,	0.00,	0.00,	-- y magic
					0.00,	0.25,	0.00,	0.00,	-- z magic
					0.00,	0.00,	0.00,	0.00},	-- w magic		
					
	scale50 = {	0.50,	0.00,	0.00,	0.00,	-- x magic
				0.90,	0.50,	0.00,	0.00,	-- y magic
				0.00,	0.50,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic			
				
	scale20 = {	0.20,	0.00,	0.00,	0.00,	-- x magic
				0.20,	0.00,	0.00,	0.00,	-- y magic
				0.00,	0.20,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic
				
	scale10 = {	0.10,	0.00,	0.00,	0.00,	-- x magic
				0.10,	0.00,	0.00,	0.00,	-- y magic
				0.00,	0.10,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic	
				
	scale05 = {	0.05,	0.00,	0.00,	0.00,	-- x magic
				0.00,	0.05,	0.00,	0.00,	-- y magic
				0.05,	0.00,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic	
				
	scale04 = {	0.04,	0.00,	0.00,	0.00,	-- x magic
				0.01,	0.00,	0.00,	0.00,	-- y magic
				0.00,	0.04,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic
				
	scale03 = {	0.03,	0.00,	0.00,	0.00,	-- x magic
				0.00,	0.03,	0.00,	0.00,	-- y magic
				0.03,	0.03,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic	
				
	scale02 = {	0.02,	0.00,	0.00,	0.00,	-- x magic
				0.00,	0.02,	0.00,	0.00,	-- y magic
				0.02,	0.02,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic		
				
	scale01 = {	0.01,	0.00,	0.00,	0.00,	-- x magic
				0.01,	0.00,	0.00,	0.00,	-- y magic
				0.00,	0.01,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic	
				
	custom = {	0.03,	0.03,	0.00,	0.00,	-- x magic
				0.0,	0.03,	0.00,	0.00,	-- y magic
				0.03,	0.00,	0.00,	0.00,	-- z magic
				0.00,	0.00,	0.00,	0.00},	-- w magic	
	}	
return matricies