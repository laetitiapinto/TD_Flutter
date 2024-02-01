class Personne {
  String nom;
  String prenom;
  String email;

  Personne(this.nom, this.prenom, this.email);

  String getInfo() {
    return "Nom : $nom, Prénom : $prenom, Email : $email";
  }
}
