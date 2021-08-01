# Desafio Jurema

* [Introdução](#introdução)
* [Screenshots](#screenshots)
* [Fluxo](#fluxo)
* [End-points](#end-points)
* [Executando](#executando)

## Introdução

Esse projeto é um desafio proposto pela Jurema, se trata de um aplicativo de armazenamento de receitas culinárias. Ele funciona consumindo um serviço RestFul, tem suporte a traduções aravés do [EasyLocalization](https://pub.dev/packages/easy_localization), o gerenciamento de estado, injeção de dependência, consumo da API e roteamento é todo feito utiizando [GetX](https://pub.dev/packages/get).

A estrutura do projeto segue um padrão semelhante ao proposto pelo [@kauemurakami](https://github.com/kauemurakami/) em [GetX Pattern](https://github.com/kauemurakami/getx_pattern).

## Screenshots

<p float="left">
  <img src="/screenshots/login.png" width="250" />
  <img src="/screenshots/profile.png" width="250" />
  <img src="/screenshots/recipes.png" width="250" />
  <img src="/screenshots/edit_recipe.png" width="250" />
</p>

## Fluxo

### Login

O login é feito utilizando a API de autenticaão do Facebook. Caso o usuário não tenha se logado antes, ele é cadastrado com o ID, imagem de perfil, nome e email obtidos da API. As demais propriedades do usuário (curtidas, seguidores, salvos, seguindo) são geradas aleatoriamente. Caso ele já tenha se logado alguma outra vez, todas essas informações são obtidas do nosso próprio banco de dados.

### Perfil

São exibidas as informações relacionadas ao perfil logado, juntamente com uma lista de categorias de receitas culinárias. Ao clicar em uma delas é redirecionado para a tela de receitas.

### Receitas

As receitas relacionadas à categoria selecionada são exibidas nessa tela, afim de simplificiar o trabalho, todas as receitas são compartilhadas entre todos os usuários. Ao clicar em uma receita é redirecionado à tela de Editar Receita.

### Editar Receita

Nessa última tela são exibidas todas as informações relacionadas à receita.

## End-points

### /profile

    {
      "id": "3946332555494571",
      "name": "Ricardo Dalarme",
      "email": "ricardoweasley@hotmail.com",
      "photo": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=3946332555494571&width=200&ext=1630417659&hash=AeSuEv0LftWASbMpiBw",
      "function": "Potato Master",
      "likes": 45,
      "followers": 56,
      "saved": 14,
      "following": 89
    }

### /categories

    {
      "id": 1,
      "photo": "https://c.ndtvimg.com/2019-10/o52ta3a8_sweets-_625x300_26_October_19.jpg",
      "name": "Sweets"
    }

### /ingredients

    { 
        "id": 1,
        "name": "Lemoanade",
        "photo": "https://aprettylifeinthesuburbs.com/wp-content/uploads/2013/07/Fresh-Lemonade-Recipe.jpg"
    }

### /recipes

    {
    "id": 1,
      "categoryId": 1,
      "name": "Easy Broccoli Bacon Salad",
      "coverPhoto": "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F2264735.jpg&w=648&h=434&c=sc&poi=face&q=85",
      "galleryPhotos": [
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F2316010.jpg&w=648&h=861&c=sc&poi=face&q=85",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8681050.jpg&q=85",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5636306.jpg&w=648&h=648&c=sc&poi=face&q=85"
      ],
      "ingredientsId": [
        4,
        5,
        7
      ],
      "howToCook": [
        "Combine broccoli, onion, bacon, raisins, and sunflower seeds in a bowl.",
        "Whisk mayonnaise, sugar, and red wine vinegar together in a bowl until dressing is smooth; pour over broccoli mixture and stir to coat."
      ],
      "servingTime": 5,
      "nutritionFacts": [
        "262 calories",
        "protein 6.3g",
        "carbohydrates 2.1g",
        "fat 19.9g",
        "cholesterol 44.2mg",
        "sodium 229mg"
      ],
      "tags": [
        "Sweet",
        "Coconut"
      ]
    }


## Executando

1. Clone este repositório

```
git clone https://github.com/ricardodalarme/nubank_clone.git
```

2. Baixe as dependências

```
flutter pub get
```

3. Instale o JSON server

```
npm install -g json-server
```

4. Dentro da pasta do aplicativo execute o servidor

```
json-server --watch db.json
```

5. Execute o aplicativo

```
flutter run
```
