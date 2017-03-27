func willYou(young: Bool, beautiful: Bool, loved: Bool) -> Bool {
    var contradict = false
    if loved {
        contradict = !young || !beautiful
    } else {
        contradict = young && beautiful
    }
    return contradict
}
