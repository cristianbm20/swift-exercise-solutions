let rna = [
  "G": "C",
  "C": "G",
  "T": "A",
  "A": "U"
]

func toRna(_ dna: String) -> String {
  dna.map { rna[String($0)] ?? String($0) }.joined()
}
