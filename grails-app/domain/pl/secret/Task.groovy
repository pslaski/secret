package pl.secret

class Task {

    static constraints = {
		name blank: false
		description maxSize: 50000
		details maxSize: 50000
		performer blank: false
    }
	
	static belongsTo = [event:Event,owner:Author]
	static hasMany = [owner:Author]
	
	int type
	boolean state
	String name
	String description
	String details
	String performer // przypisani authors
	Date deadline
	
}
