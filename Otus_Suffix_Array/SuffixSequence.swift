import Foundation

struct SuffixSequence: Sequence {
    
    let word: String
    
    func makeIterator() -> some IteratorProtocol {
        SuffixIterator(word: word)
    }
}

struct SuffixIterator: IteratorProtocol {
    
    let word: String
    var index: Int = 0
    
    mutating func next() -> String? {
        guard index < word.count else {
            return nil
        }
        index += 1
        return String(word.suffix(index))
    }
}
