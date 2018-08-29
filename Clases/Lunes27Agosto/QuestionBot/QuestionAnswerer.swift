struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        // PENDIENTE: Escribir una respuesta
        let lowerCasedQuestion =  question.lowercased()
        print(lowerCasedQuestion)
        if lowerCasedQuestion.hasPrefix(" "){
            return "Esa no es una pregunta >:("
        } else if lowerCasedQuestion.hasPrefix("cómo"){
            return "Como quieras!"
        } else if lowerCasedQuestion.hasPrefix("cuándo"){
            return "Cuando tu lo decidas"
        }else if lowerCasedQuestion.hasPrefix("por qué"){
            return "Porque tienes la culpa"
        } else {
            return "No entiendo tu pregunta"
        }
        
        
        
    }
}
