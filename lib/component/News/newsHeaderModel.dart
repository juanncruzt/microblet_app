class newsHeader {
  newsHeader({this.title, this.category, this.imageUrl, this.id, this.desc1,this.desc2,this.desc3});

  final String desc1,desc2,desc3;
  final String id;
  final String title;
  final String category;
  final String imageUrl;
}

final sampleItems = <newsHeader>[
  new newsHeader(
      title: 'Software Factory',
      category: 'Microblet',
      imageUrl: 'assets/image/News_Image/2.jpg',
      desc1: "Confíenos su proyecto. Podemos ayudarlo a desarrollar la solución que le brindará la seguridad que usted o su cliente necesita.",
      desc2: "Confíenos su proyecto. Podemos ayudarlo a desarrollar la solución que le brindará la seguridad que usted o su cliente necesita.",
      desc3: "Confíenos su proyecto. Podemos ayudarlo a desarrollar la solución que le brindará la seguridad que usted o su cliente necesita.",
      id: '1'),
  new newsHeader(
      title: 'Cloud Consulting',
      category: 'Microblet',
      imageUrl: 'assets/image/News_Image/MarketSentiment.jpg',
      id: '2', 
      desc1: "Contamos con profesionales que podrán asesorarlo y acompañarlo durante el proceso de migración a una variedad de servicios en la nube.",
      desc2: "Contamos con profesionales que podrán asesorarlo y acompañarlo durante el proceso de migración a una variedad de servicios en la nube.",
      desc3: "Contamos con profesionales que podrán asesorarlo y acompañarlo durante el proceso de migración a una variedad de servicios en la nube."
      ),
  new newsHeader(
      title: 'API Factory',
      category: 'Microblet',
      imageUrl: 'assets/image/News_Image/CryptoBroker.jpg',
      id: '3',     
      desc1: "OAuth. OpenAPI. Swagger. Creamos las conexiones, integraciones y APIs que usted necesita bajo las tecnologías más modernas y ágiles del mercado.",
      desc2: "OAuth. OpenAPI. Swagger. Creamos las conexiones, integraciones y APIs que usted necesita bajo las tecnologías más modernas y ágiles del mercado.",
      desc3: "OAuth. OpenAPI. Swagger. Creamos las conexiones, integraciones y APIs que usted necesita bajo las tecnologías más modernas y ágiles del mercado."
),
  new newsHeader(
      title: 'Flight.Flex',
      category: 'Microblet',
      imageUrl: 'assets/image/News_Image/Ziliqa.jpg',
      id: '4',      
      desc1: "Además de ser desarrolladores somos creadores y emprendedores. Conozca nuestro producto.",
      desc2: "Además de ser desarrolladores somos creadores y emprendedores. Conozca nuestro producto.",
      desc3: "Además de ser desarrolladores somos creadores y emprendedores. Conozca nuestro producto."
),
];
