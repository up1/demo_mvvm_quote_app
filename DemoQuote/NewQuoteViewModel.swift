import Foundation

class NewQuoteViewModel {
    let context: MyContext = MyContext.defaultContext
    var content: String = ""
    var delegate: NewQuoteViewModelDelegate?
    
    init(delegate: NewQuoteViewModelDelegate) {
        self.delegate = delegate
    }
    
    func saveNewQuote() {
        if self.content == "" {
            self.delegate?.showInvalidContent()
        } else {
            context.addNewQuote(content)
            self.delegate?.dismissAddView()
        }
    }
    
}
