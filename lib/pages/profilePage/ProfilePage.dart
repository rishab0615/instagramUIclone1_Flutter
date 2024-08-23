import 'package:flutter/material.dart';
import 'package:instagramfontpageui/mainComponents/bottomNavbar.dart';
class profilePage extends StatelessWidget {


 profilePage({super.key});

 Map<String,List<String>> highlights={
   'pics':["https://media.istockphoto.com/id/1356118511/photo/smart-city-and-abstract-dot-point-connect-with-gradient-line.jpg?s=612x612&w=0&k=20&c=GJldTyxDEt0GodKxGONHz9PrN9QcQQAGKONUM0vBvYc="
     ,"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSExIWFRUVGBUVFRUXFRUVFRgVFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0lHyUvLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAJ8BPQMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAQIDBAYABwj/xAA8EAABAwIEAwYEAwYHAQEAAAABAAIRAwQFEiExQVFhBhMicYGRMqGxwUJS0QcUI3LC8DNigpKy4fHSFf/EABoBAAMBAQEBAAAAAAAAAAAAAAECAwAEBQb/xAAoEQACAgICAgEDBQEBAAAAAAAAAQIRAyESMQRBIlFhgRMyQnGxFAX/2gAMAwEAAhEDEQA/AMI1qvWjdVawK1Y98P2RW9wxod/D2XQ3RLHDl0CLi30lRMZotBcWJDNUGazVCMrQckOLFpMVqmxJTpK3SpotgSOp01MKalYxSspqdlUgJiVh+IIf+7rXGlO6t2fZ5lUEzBVI5ElsnLE7tGDNv0TmWnRaq/7N1KZ2kcwqbbBw4Itp7QYRp0wfbWY5LQYTYSRyUVC1PJFbMkGAufL0ex4vFdBPFLpopik0eaFU2ovf2EMDkPY1c3o69WOp01YZSXUmqk3G2C7/AHR7SxzmNfSeT4akzma3kRHrr6q030VtRqwmKKU0VT7U4mbW0q3DWhzmZQ0GYLnva0TGseKfRaBttLQeiCi6szzRT4gOpRQnEHwtPVobrNYlbGfVGHZpU0Z64cZVzs7finVh2zloLvs/SFDPm8Xmh1zg1IUswPi33V+SqjjjjcncQzi9m1zc7FkL213RS1xFzWZSZUVxrqqLJ9SUvGZmLiyhVjbrQVqJPBQfuDj+Eo80S/4230B20FdtLSTKJUcLPEK2LeNlJzLrx+PZULdISNpSrDqauWtoSJSt0H9O2BLoQhdUoxf0HTCHVbchUiyU8TKLgmwp6jFHlTnO4jVPh1XLUa7qoyEwhYTp2em3NQ90HN1BCz1WtJkqLs52gDR3VX4dgSrOIW7M0tcIOq543B0z14zx5Iprsz2HESFrMLEkLJWNuSRC1eHPFLVxXfJx9nzeHmnaLmP0srJWYtKMnZX8axbvSGjYK5g1NsSYAAkk6AAcSTskqkUcuctkTLTTZNbQgq9b49ZVaho067HPHDUB3RjiIefIlSuo6pE37LOMfRVZTUoYp+6Tm01jELaanplzdWmCpG01IKawyGNxOodHNnqufUngjlhZ03N1hVrzDMu2ypGhdpgdwVmwt9ZTa1EohYghqhlR6PjZKExC4kZVQaxWKw1TYUa0dKdscwIZ2pwSldUg1zhTqNl1GrMFr99/ymBI6A7gIm0ryr9plCoLwPfqxzGikeQb8bf9xn/UFoRuQPIyKGK2rLuK9oK1W3bZXDSK9OtTFUmIdTAJaSRpMlpnYiDOq9oZctLQWkEESCDIIOxBG4Xz12Xs3V7mlRGznDNA2Y3xP8vCCPVe82dIABjQA1oAaAIAA0AA4BGetEMHzjyZLUbxVC9twWkovVGUaoFiV20PZRLofVz92IPiyAFwB2mCNPNInTOhfJABt+2qHtY/MKb3U3b6PbuNd/RV6jSdJ0Wawa/7q0uK5G1aqfN7ssD3IWl7HYIRQbmnM+atQncvfqZ6xA9E8nQcE06X2sjNqSiVpbwNUbZYMYFVLNVJysvPj/EW1dTbu35Lrqu12jWrjSXU6WqUSn2VjQngoKluFoGUBCp3ltC1gqzP1KCIYcNIQLCMbNWrVt6tPuq1KZaHZmubp4mmBzB22I9BuI9q30bttNhHdsc3vQA0udxc0SdIB5jVUcW9EXmxxSk/6NNfUQCdECvKYWpoXVC6ZmpvB2kfiaSJyuHA9EAxq2yHeVoyd0zqk8fDRnqrVCWq65ihc1dCZ5c4ldzUwhTkJjgjZCUSFy7vnfmPunEKNwRJO10X6NQjZTOruduSoGhLWrNY0ueYaNz9vNdNI862FsGtGvfDtt0D7f4vRcRb27w6m3Wo5plrn8Gzs4DppJ6LN4tjr6staSyntA3cP8x5dNlFguGVLioKbPNzj8LRzP2HFSe3ZW/jxoqz8vqt/wBnMYxOpQayjQa+Jb+8VSYInjLhmI2kTtsoaH7O5cJuPBxinDo6EuIB9FvsFwulb0xSpNytmTxLnQAXOPE6D2WY+ODTIsIsqzKcXFUVahJJcGhrROzWgASBzOuqIMoqzTpK3StVlGy9pFBtFSdyirbNc62T8AckDaYLTojdvVaW6qi+io4ISSiVTTIb1gkwoe8gQpagURClJHRB0QEJFI5MKRo6YMSV5z+1gfxLYz+GqI5a09fn8l6ISvIu3N8a168T4aUUm+mr/XMT7BCC3ZPzJr9Lj9TT/snw8DvLg76U2dPxP/o9ivS6NxlMrynCMV/dMNc5p/iVKrms6EtbLvQA+sKbst2neMvfVXOa2RqZ0OuZzjqTJ58Esot/IphyQSWL7HqVzd5liO2OKMoX9nUfJbQp1apaNy58taPUsA91ora5a9oe0yHCRoRp5HULIftLw4vpsrjen4X/AMriIPof+SWCuRvKTji+PowFC9Ic1riTT7xtV1OSGkg6yPKQvasOu2vptqUyC1wBH3HmDI9F4dRt3OcA0EkkADiSTAC9p7P4d3FvTpHdol38ziXO+ZKOWifg8nf0L7nE7lOpMCc1ila1QPSoe5ghQZFZaxKaSwE0h9oRMFWb6iwtVAthMqVHERK3oR47laZ5n28pvtrtl3SkZmlhdGmcAiDzlpGn+XovPajiSSTJJJJOpJJkkr3vErJlVjqdRuZrtx9CDwI5rxvHsM7mu+lwaYB5g6g+xC6sMrVezyvPwyxyv0/9LfY2/rC4aGuMEOzDhAaYnnBj3WwvKznnxFAexdqwMqVPxZsvk2AdPM/QIvfF4bLGhx5ExI4weaEtyOvxoOOG2QOaoHNQ3FMTqQGhjqRMzO/+k/dUMPvXMcAXEtO4OsdQnSdEJ54cqDj2qMhWSARIMg8RqFE5qKBJFd4UZCnco0bINE9Ws1jS5xgD+4WLxLEH1nSfhHwt4Afr1Wi7S0HOptI2BMjqRp91kl0Ts8yIrGkkAbnQL0Ls7iNtbUxTAeTu94aPE/jEmY4CeAWIwxgLteA0Whw6xfVdlY0uPGNh5ngtGKq2bk06Rv8ABMTNeo7I2KLWiS4Q41HEGB0AB91paDUHwDDm0KYpgy74nHmTxA5aR6I7QiY4iPmk02dkU0tly2pItStTlOWA6DBO0xpPqhBxKjSfTp1HhrqmbLJAByAE6njrsin/AO9aU2lzrimANfiBOu0AalPJ0iM5Aa07REUaT6jRmFXuLngab9YdlHAxr6rQhrXDMwhzTMOaQQYMGCF5Zi962rVqVaTiaVc940w5oc0nQlp10cHDzBU3ZrF3UK7Zce7cQ17eEH8UcwTPupqTI86dHoVaiqdRiIYjWawEnfgOJQ6rctyh2vi0AG88lZ7R1Y5Feo1CLvFabHtYeOhI2brAn1RuoF53jVB9Os7NrJkHmDxUnEu8nGjZuCicosMqZqLDr8IGpk6aHX0UziotHZFlZ9doDiT8Ml3kBM+y8N741Krnnd7nOPm4kn6r07trf5Lev+YjuwRpLahDSD7uXltqdQilo5PJnyml9A3jEinbt4ZHvHm6o5p+VNqIdlbIvc0xmBO3DTUk9BoqePD+Fau5sqN/21Sf6kU7H4gW0nsGhnfjB5Hhss/2aGxV+u2z0inAAAEAbBVcbt+8t6rObHR5gSPmAs3bXJBmSPVG7fFCIzDMOY3UGnFnqqskWjzfAq4p16bzs17SfIEEr2VoXiuJ0+6uHtGwcY/lJkfIr1bsliHfW7DPiZ4Heg0PtHzQzRpnN/589OL7DTWqTQAuJgAEknYAbkrH9qseqMqdzScW5R43CJJIBDQeED69EOw+5uLl7aLqr3NeQ1wnTKCCZ8gJlKsbq2dMs6vij06yph4DmmQ4Ag8wRIKuPtNF1kA0AAQBoB0Cu1aohUjFUceTJLkA69KEFu74MrsoubAqNJa+dC4HVkeWs9VoatRrtQQfJYztzWaaQaNXtcHAg6tI0+/yU+Ks64TlxstWV82s0loILXFrmujM1w4GFhP2lWEFlYDcZHeY1b8p9lVrXlTOamYh5Mlw8JmIJ04n7o/b1v321qUnmajePXdjvlBVIx4Sv0TyzXkY3j/l2vwYrsxiHdVIJ8L/AAu6fld6H6ravavMKmZriDwMLedncR72lBPiZAPUcD9vTqmyRpkvAz2uD/A/EcOZVHiGo2cNx06hBL/A8rczCXEbgxMdIRl9/wCMj8Ow/VSsMyepjyWTaKZMePI39TH2d86mdNW8W8P+ijlC4a8S0+Y4joUKxy0yVJHwu1HQ8R/fNUrS4LHAjyI5hUe9nnqTxy4s0LwmQpZkA8xPumFYo0W69DOxzOY+fBefXNItcQeBXoj6oY0ucYAElYnFn9451SIkzAXU1aPGupFCjULXAjh/cL2fs1WpPoMdREMI24g7ODuZBleLBHOzHaOpaPOUZ6biM7CY2/E0/hd9faJFoSUXs9lqQIMw4beXI9FFiGOstqT67wd2ANHE7RPus4/tlQqta6kxznR4g6G5eh3njtp1WU7Y9oKtYikYZTEOygzJ5uMdNAikUnlj6IO1naapfVGuc0NazMGNHAEzJPPaeGiChRhKCnOKVt2GbLHKjKP7vmhmYuzgZqjZbDmtJI8JhpjgQSN1p7O+pvALHZssAzoZGuvt9VgJUlvcFjg4cCDB2kbGOaXiCmfR2Nkl2bg4Aj2/v3VbD6DiQ4/C2SPMiNFhOzXbSvcFlJ9Ed3TblNUE6QPCCIgnQDgtw3GKQYAwguiIMgTuSeiNJHdCSZB2hxR1GA0DXUk7Dlp7rPYtiYr0toc1wk8wQfbyTbu0r1nuc4gjcukZROwACo31A0mhpdJJnTgB/wClKxuUvwH+zlaaMflcR6HX7lX3lAeytf8AxGeTh9D9QjdQqUls7YO0jAftMq+Brdpe2esMcfqQsFRdqtX+0WsSaXImo7/iAPYrIUzqE1aOLJK8ppMTfmtaGnwOqiej8rv6UvZip4yObT8tfsm4gyLSl/Ofo79FWwOplrMPUA+R0KX+J0R1mX4N1YWLqmvwt5xv5Dip6lF9IiTodiNj080RtKksaeke2h+isQHAtdqOIUZSZ60YUtdnnvbEzWFT8zRPmNP0RLsRjIoF+b4SwmP8zdW++o9UnbXDyxjXbgHQ9DwPXQLN4PW8Uf3CaaTimedBvHnkvv8A6aW2oVbmqTu5xLnO4Dr0HCFucCwxtvBHidsXHkdwBwCi7MWDaNCXRnqau5x+Fvpv6olTKhkm26XR6fj4VFXLsM0LgO01HyPoq99nj4i4emnnzVXOxhHePYydg54BPlqiLYGyHJ0I1GMtAhtYtM7SCFkLoGSHanWZW9xANLCXcBMrD1rhneZnua0TPiIA04arR7Lck1b0CMWwGpTpCtHhO4/E0HQE9D+io4NincOc6A4OABEwYB4dfNaLtD2raWlje7ex7S1xDpMkR6DiCsQ94OxB9V0RTkvkefknGE7xsG4+ZqGoBAeS6OWuy7AsRNKoHcNiOYO/6+invaWam4cR4h6fEPbX0QKm6CqS2efGThOzb025vFOm/uilFkNHXVAsGuJoOJI8LmxPKHT9lWr4o6C1mgOhP6cklWd8c0YK37GY5e94+B8LZA6niVUsKOZ4ChIRbDaJAB4nZN0qOSNznyYUcEwhSuUaU6ZIHdork5m0xsPEepO399UuDYT3sh8hsa85O0fX0UGPj+N/pb9x9kV7L15dl5j5j+yuts8XGk2/qZDErF1Go6m8ajY8COBHRVwvVMfwSlcUZe4U3MEtqHYdHcweXsvL69AsMH/3qOiRBnGjqNVzSHNMEcVYrVX1nzl1jYdNyqoUtvWLHZhvqPQiCPYoiIYCnSue4EkxHIJqKA0OXEpspCVrMaLsri7aRcx8gOMzvrtqtay9Y74Hg+R19l5vajWVa71GnQ8ZpaZ6VhdZ4qNg6E5SN5B0GnHVVu0VUGs5o2b4fbdYyyxutTILX7EEA6jRXhjrXkl4gkkkjUSTJ8kqW9nRyUo1Fmo7Lv8A4rv5D/yaj17VhrjPD66BYixxynRbUqN8byMjGaySTJJ5NELKXt9VquJqvc4k6gkwPJuw8krjbKrPwjVGj7bsmgD+V7fYhw+4WHZuiJuHmm6nmOUj4dxocwgcDI4IaCgRnJSkpGrruDsOZG7KwB8iypH/ACQZlXJr+IbDr1U1vfFlvUYBOYsM/lIO/sSPVCXOKGNqtlPIk+ScfoW6mKVy4uNZ89HuA9ANAm22IVWPzsqODt5nX15qquCJNSd9m7xDtOLqy7stirIL+Xh2c3znbhB6LK2UteobGtld0Oh8laaIf6qcqSoupynPk+9HsWEVs1Jh5tb8wCq/aHGDRimweNwku0hoJI0HPTiocBq/wKf8v00+yFdp/wDFbr+Af8nLmhFOWz2s2RqFoHPquccziXHiSST7laDs3jzqTg17iaexB1y9W/os41TUHAGSqzVo5cM6ls13b7HhQpEN1OgA5ud8I8gJK8gublznFzjJOuu60Xb+9zPp0/OoeWvhb8g5ZNzpT4o1E4vNyOU+K6RI955qo9SuKhcqM5Uy1h97kcM2rePGBxj0VW4pQ4gaidD04Jjk+k/gfRKyid6ZesHnIWzpMwpCobHYq5b0cx+qy6Hq3R1rRkyRoP7hF6dwM0xCr5Y0CYVuyiuPQWzTqE0qCwdLT0KncUpdO1YI7QD+KDwLRr5Egp+BXTWVWEmBME8ADpr7qXHmzTpujYlvuJ/pQmgF1tWjw4ycZaPVqeEUqrmvqAvj4WlxyeeXY+qEftNwhjqNOqBFRpyCBuzKTHoRp/MUO7P9pKlBuQtFRo+EEkFvQHl0SY3i9SvL6hAa0OytHwtka+ZMblRUXyOqU4OGuzz8rk5xkyuTnNQi5ckKwDlJRoOcYa0nyUaI4Zifd+Fw8PMbj9QsER9PKYLcvGJmJ6qzhlo2q6HOI5RH3T8Zp6seCCHt3G2nXyI9lRt6paZCd9aBBLn8gxc4CB8NQz1H3CHV8NqtBMAgCSQdhzMo7bXWdoPHY+aHY7fCO5bvM1Dw02Z1g6nqByR9DOKQHzp4dO4kcTxHUKIJwPL/ALU2NFv2cFSIgq6Tqqdx8RSsYIWADgWH8Qj14H3VGqwtJBEEaEdQpLSrBBV7HcpyPG7h4h5RB+3opJ1KjraUsXL2gUlXQkTtHMOaUas2942eIQREMHvBTf4jpx4pZq0VxOpbN7gl9U7ltOmyXiRmPwNEkyTxOuyZi1m6m5pc4vLhJcfzA6gdIhWcBc0tLmOBaSDI25FN7QXjXZGAyWyXdCYAH1UYXZ6uZLhbf9A4KC5uA0Fx2Ak+QU1MSoMRsHPo14GjKbnE9fwj1+ypdM46bVozN7ems41XdGgcgBoPl81Vc9RM0amgp7OK29smeVGU9zdPNRuELBRGVw3T3bpaI1QYy7Ldkd0Yw7Zw46H0Qa30cfL7hF7DnxH0O4QXR0Y/3Fl6hcrD2giR6j9FXcUUGRPYP1jmrxQ2z+Mev0RJB9lMfQ+9tQ+i5g3AkeY1H6eqzds1a63IPkVmm2xY8sP4SR7Lps8eS2mXbdi7EaRc3Lw3cejdh6mPZWLamkxN+Vscw75QhHcqGn8YtmQrDUpimqjY89PUf9QonLPsWPQ0pFxSEoBo4ppK6U2VgpE7LlwbkmWzMcjzCka5VJUtF3BFP0CS9hTCsR7p8kS3iPoR5LscpBtUlpkOGeREHMTMRwQ9dKNi22KEsrmriUo6Xs4FV7kaqcKOvwQYyImhPdrumrpSjejkiUpEWBHBKEgKedBuIPAb+cFKOXcHuHNcWAmHakTxA39pR+g5ZnDP8QdAT9vujlN8LFYPQYYU19Z7ZAcQDuJ0PmOKitqithkpWPb9GKv7Q03lv4Ylvkf02VQHVaXtK5gaGfjBnbYcft7LOGi4AEjfZZkFolDpTXhMa5SFwIG88eUdFgkTtSSkLVM2FFUcsYmsjLo4kQPkjFtU105gDy2QGyec/ofpH3Rm33B6hEpB7L5UZT3lRkrFGPoPgyiYcg4RZjYAHLRBj42yXB3+MDgfqpMdtMtxP5mtd8sv9KgwoeJp5ELRdqrOKtJ3OnHs53/0qzdSOCEbgB7ekhHaV0Fn8pH+4z/StNSpaLNdqNamX/KPeTCGN3IGZVDZnG6gj1Hpv8voonJ+aNVHUcmbJpDHJhTiUhCFjCQkISyuQMNTqZ1TSuCxizK5IulOTHLlySUBkKm1RsnSoqj0GMhhXLlyUc4pGlcSkWNQsJEqRBhsv4U3UnhEIlmVe0bDGjpPvr91IiUWi5TuQ3UmAm1u0QAhgM8zt7LO3FYucdTHDyTQlbQG2+ia5uC4kk6lV4TiuCWzVQkJzCnBIjRjp1SvYOGy4u6KMlYxasGbn0V0OjTkorenlaOupTjumGWgpUKiKQPkn0+YSlApIfQEuHmiao2A8RPT6/8AiukoPZSGkEuzNtmcFsu1tp4bZ3EtqNPpk/UoR2OotDlpO2jwKVDoao9xTKTJK5ksUKxmTqQAsF2hrTVceg+5+61GM4hlY4jeNPM6BYnGan8R3kP0XRhVRbOTyHykolSu+TPPX14qAlcXJJQsCVChOKZKUlAwi5culExxTVNVpENa780/JQErGRYadEqjpHRPlMCtirkkrpWMNquTAlqpAlY6FSLlyAaEKRISklYI6VJRp5nAc/pufkoUUwGmC55PBhHq7T6ArBStlxRXFSGk9NPM7Jwcqt8/Zvr+n3WYxRa1KnwoypsyOJSZlxTUAjsycolK0pkARc0SY5pXKS0EuHTVEwRKjnVOc5Q5tUQl6m/xkdB9ApiqLakP9h8oVsvQHsIWI8M8z8kl086JtpVGXyXXGsLFL+J//9k="
     ,"https://images.pexels.com/photos/3905850/pexels-photo-3905850.jpeg?auto=compress&cs=tinysrgb&w=600"
     ,"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUTEhIVFRUVFRUQFRUVFRUVFhUXFRUWFhUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGhAQGy0lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAACAAEDBAUGBwj/xABDEAABBAAEAwUFBQUGBQUAAAABAAIDEQQSITEFQVEGE2FxkQciUoGhFLHB0eEyM0Jy8CNigpKiwhZDU6PxFSQ0VGP/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMEAAX/xAAnEQACAgICAgICAQUAAAAAAAAAAQIRAxIhMQRBE1EiMhRhcYGh8P/aAAwDAQACEQMRAD8AqQxrSwjRz5KoApG2tU1ZixSpmxHiQHUFrYZ/VYOCir71blmIrWlgyY+T2MeXg6Fso2tO1wGqw8NiveA3WxC2+Si46j7WFJMlA7VE+OkUTUeKFV2HaZxTOfShdMEqi2O5pDYo+6VjTlaGJlJVeOHUWL8FqxLVcmHPLd0jMcwqWPCu6H0XQx4VvwjalJNGBqmfkekhF4nts55kSMQq1IAXWBoiyKmxLQGCPqpjCnYFYjbajKReEb4KpiUXdWVsDDApOwHT0/VIsqKPCzMZhdLukz4iNFoDD60dE0reSO/IPjVGRIxVnsWjKxQFivGRmlEpGNMYlc7tPIE2wmhmyMVSVq1HtVd8KpGRGcbMx0aAxLQdCUAiVdiHxlExJu6V8wpxChuMsZRESSv9ykl3H+MogI2ow1OwIg6LmGcp5sPmN2q0C2MMwObqsuTjk34JXwQ8MwvvWN1vsYVRwzw1WftHRZJptm6M4pFktUMhoJCZQyOQjFnSyKuCN5UYbqpXDkpcPHR1VekZ+2DJhnOA+7RA2PKdVqh4pQviDtbSKb9lXBdorDEdAo5pC4UrjYh0SdFXRcpJBcW1yzHyaqHiOMbBGZH7DQDqTsPvPgAStU4fVede0jFf2mQf8uNt/wA0pdXoxrv85WjG93RllHUfhvtAzT5JGARk0CNx41+C9LgAr62vm+NxDgehte4dj8VnwkdaZbZp0Btv+ktRz4+LQcOTnk6ZEJFUbIUedZNTTuWJACqrmKTOgJRSoEmmRFteIVWSMK44qJzVWLIyRRcFG5iuOiQOYqqRBxKRYhLFbLEORNsJqUzGgcxXzGoyxHY7Qp5UORWnMUZajYNSBOpMqZccUHMQtYrgiRCBNuI8bIYYrOi0sNYVaEKzFOwGnaKOSRpwYrXBaoo2BSNcwgFpvqFPCxprqobo0/FKyNhUoFp5o1Gx1LuwNU6Y720kCiLrSAXADjeVZa6gqwCIFK0PF0WRIhcLQNUgSNFEwHUF4325lzTTuP8A9gx/KKNjfvJXskjF41203ca3xGIPpIW/7Vq8XtmbyHdHKTYctOq9d9n/AP8AG8y0/wDba3/avIJHG9yWkmhZOUXoNfBezez+L/2rf5W/7lbM/wACWNXLg37RBFkT0sllqGtNmROQonMZJJyG0RbE5QuRkoSmQrIyhRkJsqYUAoHKUhROXI5kTlGQpi1DlTWLRBlSUyZdZ1Cyo2RKRjFIWqbkWUSu2DmAqPFMEXgZRq3l1W5hNLSngo5mqUptM1YYRoxOAzvDnNcPmNNV0GFdrruskPZn2yk81qRSE7V0tTnItGCCkcbSaFO4ADVRFqeMrRlnGmIBEmCKkwg4RNQUiAQCidqJQtdSLMkodMlvovGu3jaof/riXes8i9hzryP2jD3h/PMfWRx/FaPG/Ylm6v8A70cIwar3TsGw/ZI6+Bv+5eGM3XvXYj3cJF4sb95VvJ/Ul4/bNg+KYqdxBULgsaZpaAKEonICnRNgOTJ6TFMICUKKkgiAEBIhGExQDRGQoyFI4qMlMhWDSicVIQUQwxO+iPHsHL6KhSVz7KPFJdsgaMTGqYNtIMU0bVBs1RQDG0pXHRE2JSmNTky+OLMjG4ewCBr4fipIraQduo5FRcQhlc62u0GlbKhnxA3FjY/JBcl9WlwdCDm5o2gDxWRgeI+9kcxwB2PL9Fr91eoXN1wSUObZJGA7khc1TbBQOKMLJ5Uk+AaRIUqTkgwE4AWN2p4q/C4Z8sbQ94oMa46EkgX40LNDeqXLdiu2uInn7nEtYA8HI5rSw5hrlIJNgi9eXzTLG3FyQN0mkz0QMC8q9qEdFpvcvof4jqvUw5eQe1LF5sQGA6Nb9S51p/HvcGZrRnFNK9+7KNrBw18AXgAXtvs7xWfARdWl7D8nGvor+SvxRDA+WdPaZU+KY9sET5XbMaXeZ5D5rzDhPbfHHEsMsjHROeGuZljDA0miWOAzWBtZN81nhjclaLymlweslCQntDaUDGpCURQ0mQrBSARhqIBdYKAypd0SpbTglLY6iQ/ZT1pIYZo8VISo3vK62dSQeStgge8DcqF5Vd5TJWK5UWvtTfFJUU6bVC7s0WAqRikbQQhZrNmtEjXUizoQiQDY4rogcR0RUgcuUUF5JIgkc34VIzEBCY1CWp1GJKWWf2WjLaRCgjcqPEu0OGg/ezMael27/KNU2r6Qu3Fs1ErXn3FfadG3TDxF5+J5yt/yjU/RcfxTtpjZ9DMY2n+GL3B6j3j6qsfHk+ybzRXR6D7TJWfZS3O3vLFMzDNlsFxy71oNV5XwrG9xNHNlz5HB+W8oNbCxsqjXnNms3zPM3vqhcVrhj1jqZpz2dnUcU7f46bRsghb8MTQD/ndbr8iFz+MxTpXZnuLnEW4nUkkkkn5kqsiCZRS6Qrk32xAK1g+Kzw13Mz4/5XEA0SRY2O59Sqzio0TujpcR21xU0DoJ8krXCg8tyvaQdDbaB9FjYIgSsJNAOBJ6AGyfQKmnzfl8uaCil0ds32fQmB4lBOLhlZIP7rgT8xuFaXzlHIWm2kgjmCQfoui4b24xsNDve8aOUgzf6t1ml479Mssy9ntZTLz/AId7TozQnhc083MOYeh1XUcP7TYSeu7nZZ/hccp8qKk4SXaKKUX0bKSYFMXdEgwbQjNKHOhdIgMialG9ZfE+MxRXmfqP4WkXfQ6rlz2tuQHIaDrq9SK28FSGKcuULKcVwzrOJYxkLM7zpdabknkqGA4zFKzMSGkXoTyXO8XmlmALn00i6v3d+nMqjw7Bud7rdiQDSr8aUbb5Fi25VXB17uMxXuemyZW8LwuMMALRdaplH5IlPgf2b9JUhzJByzI0MMIggDkVogoIpiEmuvUIrXIDRkYvizIjUscjBdB+UOY7XSi03Z6Va4ntD7RXRyPighBynLneTR6kM0rTa+u3X0x4BFEWDoQdQfMLCn7H4B7zI7DMc52psvrQV+zdDYclbHOC/ZEpwk1wzx7inarFz6Pmc1vwsORv0WNmvW78d19BYfgGDjNswsDT1ETL9atZXG+w+DxBlkylsr2kNcHODWODMrXZBppQNLRHyYdUZ5ePL7PEk1r3qHsdw5o0wsZ8XAvP+olWZOCYUxPiEETGva5hyRsaQHCjVBH+VH6O/jP7PBMFgpZnZYo3yONmmNLjpqdksXgJov3sMketAyRvYCegLgLOhX0aZANAKHgqHE+HxYgNEjcwY4vaCAQCY3x3R30efnSVeVz0H+Px2fPJSOi9nwnYDBt7m25+6a5r8wFTlw0dJ4jlS857d8KGHxbg0e44BzfIe6fnbfqrQzRm6RKWKUVbOfeUNc+W1+VX949QncvVezHZ/DjDxxTRB8rozI4ua0mPvdRlLtnZS3bomnNQVghBydHlTGkkACySAB1J0AW3J2PxzWGR2HcGjq5lnyaDZ3XqGF7FYRhhcGG4mZReW3mwQ+SmjM8EWDpun45M1ukridDlA2F+HMqXz7OolPgpXI8YODluu7feprI66FWarbUeqiewjcEeYIXbvxgY6xoQCB1p1WPoFSdjXb2tihZklNI5LMrh4ZOAHd0+iA9pAuwRYIpbL5Mzsx1J01F87WnwwgkXZA/oISjqrHxvd0YOEx/EINWHEsHi2Qt9HCl6xwnikksbA90THZG53buLsozECw0a3pWniucxuMfKQGGhVaWNPAK9wvgMjm2NL/iP1WHJKNXLhno48Duo8o6PinEWwxl+jvhAO97fJcPxDtXM8ZaFeAO/Vb/GeGNjiAc/M5x3+EDlXNcxN3TaAF9UMDjV1Yc2Frp0ZdveepPqt/hHDY2tzyncEaCyDyFLMMgv3Quh7PcPfIQ43lB0HKuZ81fLN6/RLFjSl9hx9ne+cC1xDPHTXy5LqMBw5kQprR4nmVdZGGigKT5l57ySl2a3GMehhGmTZimSUwbRKr+Jxg1mF8unqtDDkEW7QfT1XDRwd0XXmcBpbrOp3IVXGcRml/s2XVjma0r8lZYb6ZN5K7R6I/ERh2UOGber2Hij79m1rg48DigDbv2jrQ3HS911OEiJaA+yW6dNlOcEvdjxlfo1mkcklHGeSktIuBm7FSVJmtpPaItAliYsRpLgUR5UJYpU4XWdRFkT5FKGpFq6w0Q5V5X7VCTIzwLx9bXrTY7Xk3tXFTAef4H8Vo8b9yOZfgzhcO332/zN+9fROGwwLWuoWWts8zQC+e+HNuaMf32/eF9FMYe7aGkA5RrV8lTyn0J4y7KuOxEcOrySTs1oJOnlsuQ7STOkcO7hIA1JNklx3Xauw4u6s1XyUeIjNHkALOmvyCz48ig7NEobKjybH8Olabe0i9dVHh+ESP2Gi7HF4vDPka2VklA0S52w6kV9F0mAihLAYcpbyrr0N8/NbZeVKMVwZV4sXLs80f2feCKBPjWny6roeHdlwG5nXqP2RufyXVugd3mYkBo0y9fNXNL8d/JZMvlTkqs2YcEIc1Zh4DhLWOBDNuuw8ltGzoo8VimsrQknYBQ4jiccYt5y8v66rPds0SU66pFbivCu+3dVLBd2RN6OFddzfTwW5iePxDQE6j9qtvIFamHILQRdHWzufFVWSUeiMoXG2cxheybAbcT5BbuDwLIv2RXqracNQlNy7ZNKgUsqOkiEthoj0TI8qddZ1GYMI0WaBtRYfANaSaF3fLRaZaOdfK0LpYmi3OoDe6080qmyzxlVrSN1Za9C7iEANZgTvuq03EI3aNLavLeps9ARout/Qfj/AKhYzjEMP7b9fhGrvQJm9oMPlDjJQPUEfguU4vKHE27LrQFWSOo8Fz08hJoOscrWzHgUlyZMmRwdLk9Xw/FIXi2yNPLeteiuArzThnCsRtQo6m12eFxD2Na1wGmmn5KGSCi+HZWD2XKo2bStZsmNdVtbfn7o+Z5KtxDiPdtD3yhoAFNZu93TMeXkkSb4GcfZtpAhcb/xq7So2nrZJ9KpdHhONxOj7xxDORB3B/FNLHOPaFi4y6NHvExeudPauL3uR/hbV9dXEadNFm4ztmWtNZG/3naD0KKwzfo5yivZ175g3dwHLUga9F5v7W8PrHJ10PofyCwcb2nis1mkJJJ5NvzP4BUsf2knxgMclZGsJY34cpDibOpOVpC1Y8DhJOzLkyxlFor9k8KZcXCzq9p9NV7/AGQvnrhPEH4a54yBIHMYwkAjm51g76MA+a6WP2jSPLTM1zSKBdAasX/03Hx+JHPilNqgYMkYqmd92p466IGOM08jU0QWg7Fp2XN/8TTiMMznYi93G+rt1jz8ejnIqS+QDzTvruhaNdU0MUVHlFHNt3FllrXyHmTuea9E7MYUxwBtUTbr8T19AuO4LicrgGiySB4b7legnEtaBmcL205+Sy+Tkd6+jVixLW1yxsRC4jTVw2va+qgwMUjWf2tdSQVea9CJGuHUbeay8FVKS/scxjuISSucIWFw2DiNPErIxuCmLveaXnfmaXe5GgUAAPAUh7sDYJ4y16QXNNHN4fARwta6U287BOMRNI8Mb7jBvXRb0mEY45iLOwtHHC1uwpLfsO6qiNlNABJOnzTxy3yI81OAlQQQjpkdpIihKNiNA2nTJLrBRmOk6qtjsB3jKAceWh5c1mcI4v390A3L7x10I/BX+EdoIyCHDIb6kj1RcZxfXRdayj32ZGJ7NzjVjNCP4nAuW3wvguSMCRtncg7A8wFbxPEXj3mtDm6V18R+qODiLHgZiWk8naa9PFGWaUkBYNWYPGYJpBkhhAo0HWBQ5qLhHZ90bs0jA8gChyvz6rri0dVUm4pDGQ10rQSaGvPxI2+a5ZpVrEV4o3syvjWP7pwjAjfVAl2g9UcMcdNzSNzgC75nmfBW5sXGKD3NF7WRr80bAzo3X+tlPd0V0TMk8Nlkc4mduU6Na2tB59Vz/aLhM7nUHZmt01IABPLTc7LU4r2lMby2NjKbYsg2fyWHiOPyPcCa0FaCh40OVrXiWTiXBmyfH+rsaHsxiGtDsua+TaNea0sf2blc2/eA+CwTdauNaKHCdqZmkbFvwkAehC34e0sZaDrZ3HQ+fNGc8ydnQx43wjieIYCdsZyRkENIb7pFu5WT49VzkHY7iEx/dOJ6vd+JXe8R4o+UjNy2A2Cph6ssk6El40ZP2cxF2Dn/AOZPh4x/OXn0YFPh+xZYHP8AtAc4NeAwROGe2FoGbNpv0XRUVNGCEHll9hXhQ+jlez/Y52LwYnMvdNEkhA7vPmFMbd5hsWuHqnxHYEtNfamGwDfduA1/xLq4YQ1oY33WjQNbsPl52fmnkjPPXoleaV9jR8GOq2XP+TmovZjO8W3EQnwp+nnoV1fZ/sO6OEMnkBcHOossjKdQLdR6ra7PR3711Qo+I8ltZrWefkzfFjLxYY5XFGZguBQNFAXWhPNaX2dmmg02SLTyKjbC6tX/AEWdyb7NEVx3Q8mHB3J9VHh9NKrorTWJZQgdsqpkBhcTq410/VThPaYlGxGr4FabMhJUMuIANam+gKGwVjJJXmtN1FHIdcxvyCrYqd16C/M79aVfESPcP4m+VHyXWVWNUaQefkhklAFkihuuS/8AUXRyEOzGt/eOqlxvH4iKpx8NlT45eiTUPbOiGMYdQ4eqZccOOs5Rikyf4Z/RPbH9nLxz1torIxGtjQpxg2nmrMPD2/Et0pxM8cci5huKktLHNa8ur9vYAeACGNrybb3bQOQizfgfqpIMK1psFt+IsK6Gur3SzyylZnKK6NahJrkr43EYk00vl1rTuw2/IBZXeuB1A33LRf8A5W9JJJ/0mbVoD+eipDBjnET5l301TQyJIWeJt+/9mdNxGR1W66FBR/a39V1ODgw43w2vmT9CtD7BhXD90AfI2EH5MY8UFeLN+zhXSudvr4lO2MrrDwFl3Vi+QykKtxDhTYz7mx+nmUy8mL4Qf4klyzBZEVbiYVdgwJOwVlmEPRLLOWx+KUGQlWosMr8eGVhkKzyzmuPjpFKPCqZuGV1rEYYpPKyukUUPs6mGFOXwOishmq148N7mQitr+86/khu2SyzjCilw3DVt8z4eS1GNaNlHZA1y6aUDXzJQl3iP68ULMs3uyYvCWcKs3zJ80/yXWD40TZwkXKG1FI+j5oWFY7LWZRumVPE4qga5abqrg5HuNm8qIfio0jIhCiObkAiYDzpCztQ3eSjdCDyPqVMmLl1nUzPk4LC424E/MoHcGhG0YV52KYN3t9QoXcRius1nwR2l/UKXPRzeI4NMXEsY0NvQEjZJbx4vF8Q+n5pKqyz+hXiiziYsO5WmYc9AutDWfC30CLu2fC30CD8lv0OvGSObiwvUfVXIcMtkRs+EegRiug9ApvK2UWNIoRQeP0VlkA6/QqxY6BOHpNhwWQDw9FOMO3ogEyXfIWI9gu4CZ+GakJU/errO/IZkDRyCZ2EaeXjyRiRSNIQsDlJFb7C3x9R+SNuCb4+v6KwpWMvmj2LLLJLsrNwDPH1/RTt4e3ofVWWRKdoVoYr7MmTyZLplJmEDdQ3XqbKTmHmT6fqrxULyjLGkJDNKT5KMkPQ18v1Qd34/RWnlQuKgzXGToBM5yRKBz11jpDGQHT7vzVOZrndfMq0ZE3eLrKx49GdLnohrOgF7nqfJXcE1zGAO1I6fqj7xLOjsc+SUPSzKHOmL0LBoTZkD6OiiMibvV1hUCrNwxjidTqocPwaOM5vecf7y0M6jko7/AHpt5VVh0V3RXfhWX+7B+SSsZgkhsx9V9ETVI1JJKFBJ0klxw6cJJLgCSCSS4ASZx0SSXAGjOikYfvSSQOkSAqQOPVJJcSZJhwrkZSSVoGTN2w3lROKSSeZHGROVeRJJQZsgRFAUySUugSgKSSJRDpJJLgjJnJJLjiElMw6pJIFCQpkkkQAFJJJcE//Z"

           ],
    'name':["Highlights","Parties","Birthdays","Travel"]

 };



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        title: Text('wanda.s',style: TextStyle(color: Colors.black,fontSize: 23),),
        centerTitle: false,
        actions: [
          SizedBox(height: 25,width:30, child: Center(child: Image.asset("assets/icons/add.png"))),
          SizedBox(height: 30,width:70,  child:  Center(child: Icon(Icons.menu,size: 25,)),),
        ],
      ),
      body:Container(
        // color: Colors.red,
        child: Column(
          children: [
              Container(
                  // color: Colors.red,
                  height: 220,
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Stack(
children:[ CircleAvatar(
radius: 35,
backgroundImage: NetworkImage("https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=600"),
),
Positioned(
bottom: 0,
right: 0,
child: Container(
// height: 30,
decoration: BoxDecoration(

color: Colors.blue,
shape: BoxShape.circle,
border:Border.all(color: Colors.white,width: 2)
),
child: Center(
child: Icon(Icons.add,color: Colors.white,size: 17,),
),
),
)
]
), profileDetails("150","Posts"),

profileDetails("5k","Followers"),
profileDetails("100","Following"),
                          ],
                        ),
                      ),

                         Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                          // color: Colors.yellow,
                          child:
                            profileDetails("Wanda.s","- New york/Photography",pos:CrossAxisAlignment.start),
                      ),
                      Container(
                         margin: EdgeInsets.only(top: 5 ),
                     // padding:EdgeInsets.only(top:5,bottom:5),
                     // color: Colors.purple,
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           editshareBtn(context,"Edit profile"),
                           editshareBtn(context,"Share profile")
                          ],
                          
                        ),
                      ),
                    ],
                  )),
            Container(
              // color: Colors.lightBlue,
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context,index){

                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(highlights['pics']![index]),fit: BoxFit.cover),
                            color: Colors.orange,
                            shape: BoxShape.circle
                        ),
                      ),
                      Text(highlights['name']![index])

                    ],
                  );
                },

              ),
            )
            ,

            Expanded(child: Container(
              // color: Colors.yellow,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return  Container(
                      decoration: BoxDecoration(
                        image: DecorationImage
                          (
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1YAwtIYsCBqoHlROUFS1A6i1pZcKoykKoEw&s")
                        ),
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.red,

                      ),
                      margin: EdgeInsets.all(1),
                      height: 150,
                      width: 150,
                    );
                  }
              ),
            ))
          ],
        ),
      ) ,
       bottomNavigationBar: bottomNav(),
    );

  }

  Widget profileDetails(String up,String down,{pos=CrossAxisAlignment.center}) {
    return  Column(
      crossAxisAlignment: pos,
      children: [
        Text(up,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Text(down,style: TextStyle(fontSize: 13,),),
      ],);
  }

 Widget editshareBtn(BuildContext context,String s) {
    return Container(
       height:30,
      width: MediaQuery.of(context).size.width/2.2,

      child: ElevatedButton(onPressed: (){},
          child: Text(s,style: TextStyle(color: Colors.black),)
         ,style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade200,
          side: BorderSide.none, // Set border color and width
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Set rounded corners
          ),
        ),

      ),
    );
  }
}



//


//