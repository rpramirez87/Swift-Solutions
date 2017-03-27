func electionsWinners(votes: [Int], k: Int) -> Int {
    var maxVote = 0, maxVoteCount = 0
    for vote in votes {
        if vote > maxVote {
            maxVote = vote
            maxVoteCount = 1
        } else if vote == maxVote {
            maxVoteCount += 1
        }
    }
    var result = 0
    for vote in votes {
        var newVote = vote + k
        if newVote > maxVote {
            result += 1
        } else if newVote == maxVote {
            if vote == maxVote && maxVoteCount == 1 {
                result += 1
            }
        }
    }
    return result
}
