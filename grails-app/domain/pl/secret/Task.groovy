package pl.secret

class Task {

    static constraints = {
		name blank: false
		description maxSize: 50000
		details maxSize: 50000
		authorName blank: false
    }
	
	static belongsTo = [Event, MainEvent, Author]
	static hasMany = [performers: Author]
	
	TaskType type
	boolean state
	String name
	String description
	String details
	String authorName 
	Date deadline
	Date dateDone
	
	
	String toString(){
		return name
	}
	
}

public enum TaskType {
	/**
	 * Relacja
	 */
	REPORT,
	/**
	 * Wywiad
	 */
	INTERVIEW,
	/**
	 * material video
	 */
	VIDEO,
	/**
	 * opinie, wypowiedzi np. po meczu
	 */
	OPINION,
	/**
	 * udzial w konferencji
	 */
	CONFERENCE,
	/**
	 * zapowiedz
	 */
	FORERUNNER,
	/**
	 * podsumowanie
	 */
	SUMMARY,
	/**
	 * artykul wlasny
	 */
	ARTICLE,
	/**
	 * inne zadania
	 */
	OTHER
}