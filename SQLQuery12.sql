update Student set
	MajorId = (select id from major where code = 'UWBW')
	where MajorId = (select id from major where Description = 'General studies')

delete major 
	where Id = (select id from major where Description = 'General studies')
