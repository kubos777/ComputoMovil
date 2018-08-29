struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        // PENDIENTE: Escribir una respuesta
        question.lowercased()
        
        if question.hasPrefix(" "){
            return "Esa no es una pregunta >:("
        } else if question.hasPrefix("Cómo"){
            return "Como quieras!"
        } else if question.hasPrefix("Cuándo"){
            return "Cuando tu lo decidas"
        }else if question.hasPrefix("Por qué"){
            return "Porque tienes la culpa"
        }
        
        
        return "?"
    }
}
