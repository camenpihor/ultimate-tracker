import Foundation

struct Game: Identifiable {
    let id = UUID()
    let startedAt: Date
    let finishedAt: Date
    let softCap: Date
    let hardCap: Date
    let duration: TimeInterval
    let pausedTotal: TimeInterval = 0
    let homeScore: Int = 0
    let awayScore: Int = 0
    let summary: String
    let goals: [Goal]
    let stats: [Stat] = Stats.init()
    let notes: [Note] = []

    init(startedAt, duration, summary, goals) {
        self.startedAt = startedAt
        self.duration = duration
        self.summary = summary
        self.goals = goals
        self.softCap = startedAt.addingTimeInterval(duration)  // is there a rule?
        self.hardCap = startedAt.addingTimeInterval(duration)  // is there a rule?
    }
    
    func isFinished(at: Date) {
        // duration - (startedAt + pausedTotal) <= 0
    }
}
