class QuoteListViewModel {
    
    let context: MyContext = MyContext.defaultContext
    var quotes: [String] = []
    
    func numberOfQuote() -> Int {
        return quotes.count
    }
    
    func quoteName(index: Int) -> String {
        return quotes[index]
    }
    
    func refresh() {
        quotes = context.quotes
    }
    
    
    
}
