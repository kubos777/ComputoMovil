struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        // PENDIENTE: Escribir una respuesta
        question.lowercased()
        
        if question.hasPrefix("Cómo"){
         
            return "Como quieras!"
        }
        
        return "?"
    }
}
