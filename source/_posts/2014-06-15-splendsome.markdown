---
layout: post
title: "Splendso.me - um projeto open source"
date: 2014-06-15 18:32:40 -0300
comments: true
categories: 
- Desenvolvimento Web
---
Famo.us + Angular + Meteor = [Splendso.me](https://github.com/Splendsome/meteor-famous-angular)
<!-- more -->

Splendso.me integra o **Famo.us/Angular** ao **Meteor**, trazendo o melhor de três mundos:

* **Famo.us** - nova biblioteca JavaScript para a criação de **animações incríveis** que rodam tanto no desktop quanto em qualquer dispositivo móvel, como se fossem nativas.

* **AngularJS** - framework MVW front-end do Google, para criação de **aplicações organizadas**, separando o código em módulos, diretivas, controladores, serviços e escopo.

* **Meteor** - plataforma client/cloud para criação de aplicações distribuídas **em tempo real**, compartilhando a mesma base de código JavaScript no cliente e no servidor.

Com a união dessas três tecnologias revolucionárias, você pode:

* Criar componentes e animações do Famo.us usando diretivas do AngularJS.

* Fazer com que os modelos do AngularJS estejam globalmente sincronizadas através da plataforma client/cloud do Meteor.

* Focalizar na aplicação ao invés de código repetitivo gerenciando Ajax e REST, sem precisar usar $http, $resource ou outro mecanismo.

### Leia mais nos site dos projetos:

- [Famo.us/Angular](http://famo.us/angular)
- [Famo.us](http://famo.us)
- [AngularJS](http://angularjs.org)
- [Meteor](http://meteor.com)

Estas bibliotecas e frameworks estão em ativo desenvolvimento.
É possível criar aplicações estáveis e poderosoas,
mas mudanças são esperadas na medida em que esses projetos avançarem.

## Instalação rápida

1. Instalar o [git](http://git-scm.com/downloads) <code>sudo apt-get install git</code> no Debian/Ubuntu ou [siga as instruções](http://git-scm.com/downloads)
2. Instalar o [Meteor](http://docs.meteor.com/#quickstart) <code>curl https://install.meteor.com | /bin/sh</code>
3. Instalar o [Meteorite](https://github.com/oortcloud/meteorite#installing-meteorite) <code>npm install -g meteorite</code>
4. Criar uma nova aplicação do Meteor usando <code>meteor create myapp</code> e/ou navegar para o diretório raiz da sua aplicação nova/existente.
5. Incluir o pacote [ngMeteor](https://atmospherejs.com/package/ngMeteor) <code>mrt add ngMeteor</code>
6. Incluir o pacote [famono](https://atmospherejs.com/package/famono) <code>mrt add famono</code>
7. Incluir o pacote [splendsome](https://atmospherejs.com/package/splendsome) <code>mrt add splendsome</code>

## Rodando (usando Splendso.me na sua aplicação Meteor)

Para liberar o poder deste fantástico combo, você precisa:

- Requerer `splendsome`
- Usar o módulo `famous.angular` como uma dependência do seu próprio módulo do Angular
- Inserir seu módulo no ngMeteor

Muito fácil:

    if (Meteor.isClient)
    {
      require('splendsome');
      angular.module('myModule', ['famous.angular']);
      ngMeteor.requires.push('myModule');
    }

E você pode começar a criar código como este diretamente em seus *templates*:

{% raw %}
    <template name="hello">

      <h1>Hello World!</h1>
      <p>{{ greeting }}</p>

      <input ng-model="text" />
      <p>[[ text ]]</p>

      <fa-app style="height: 200px">
          <fa-surface fa-background-color="'red'" fa-size="[108, 108]">
              Hello world
          </fa-surface>
      </fa-app>

    </template>
{% endraw %}

Neste exemplo temos:

1. um *template* com *live data* comum do Blaze / Spacebars ([leia mais](http://docs.meteor.com/#livehtmltemplates))
2. uma utilização simples da diretiva ngModel provendo ligação de dados bidirecional ([leia mais](https://github.com/loneleeandroo/ngMeteor/#new-data-binding-to-avoid-conflict))
3. uma diretiva de uma Superfície do Famo.us/Angular contendo 'Hello world' com cor-de-fundo vermelha ([leia mais](http://famo.us/integrations/angular/docs/api/))

## Divirta-se!

