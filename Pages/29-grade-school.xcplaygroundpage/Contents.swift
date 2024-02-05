class GradeSchool {
  var students: [String : Int] = [:]
  
  func addStudent(_ name: String, grade: Int) -> Bool {
    if !students.keys.contains(name) {
      students[name] = grade
      return true
    } else {
      return false
    }
  }
  
  func roster() -> [String] {
    let sortedRoster = students.sorted { (first, second) -> Bool in
      if first.value == second.value {
        return first.key < second.key
      }
      return first.value < second.value
    }
    
    return sortedRoster.map { $0.key }
  }
  
  func studentsInGrade(_ grade: Int) -> [String] {
    let studentsByGrade = students.filter { $0.value == grade }.map { $0.key }
    return studentsByGrade.sorted(by: <)
  }
}

var school = GradeSchool()
school.addStudent("Blair", grade: 2)
school.addStudent("James", grade: 2)
school.addStudent("James", grade: 3)
school.addStudent("Paul", grade: 3)
school.studentsInGrade(2)
