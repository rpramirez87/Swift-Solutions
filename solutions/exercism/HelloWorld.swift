//Solution goes in Sources

func hello(_ name: String? = nil) -> String {
    if name == nil {
        return "Hello, World!"
    }
    return "Hello, \(name!)!"
}
