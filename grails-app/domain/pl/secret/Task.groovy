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
	StateType state
	String name
	String description
	String details
	String authorName 
	Date deadlineDate // dedlajn
	Date dateEnd // normalne, ręczne zakonczenie
	Date dateCreated // data utworzenia
	
	String toString(){
		return name
	}
	
	/**
	* zmiana stanu w zależności od upływu czasu
	*/
   void changeState() {
	   def today = new Date()
	   def isDateBefore = { first, second ->
		   return (first.getTime() - second.getTime() <= 0)
	   }
	   switch (state) {
		   case StateType.UNDONE:		   
			   if (isDateBefore(deadlineDate, today)) {
				   state = StateType.FAILED // jam dorian pamietam ze mam tu wrocic jeszcze
			   }
		   break;
		   case StateType.INPROGRESS:
		   		if (isDateBefore(deadlineDate, today)) {
				   state = StateType.FAILED
				}
		   break;
		   case StateType.REJECTED:
		   		if (isDateBefore(deadlineDate, today)) {
				   state = StateType.FAILED 
				}
		   }
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

public enum StateType {
	/* 
	 * Skończone
	 */
	DONE, 
	/*
	 * Nie ukończone
	 */
	UNDONE, 
	/* 
	 * W trakcie
	 */
	INPROGRESS,
	/*
	 * Odrzucone
	 */
	REJECTED,
	/*
	 * Nieudane
	 */
	FAILED,
	/*
	 * Ukończone po czasie
	 */
	DONEAFTERDEADLINE
}