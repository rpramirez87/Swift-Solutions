func arithmeticExpression(A: Int, B: Int, C: Int) -> Bool {
    return (A + B) == C || (A - B) == C || (A * B) == C || ((A / B) == C && A % B == 0)
}
