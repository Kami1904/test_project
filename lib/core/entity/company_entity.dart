class CompanyEntity{
  final String companyName;
  final String companyCatchPhrase;
  final String companyBs;

  CompanyEntity({required this.companyName, required this.companyCatchPhrase, required this.companyBs});
  factory CompanyEntity.fromJson(Map<String,dynamic> json){
    return CompanyEntity(companyName: json["name"], companyCatchPhrase: json["catchPhrase"], companyBs: json["bs"]);
  }

}