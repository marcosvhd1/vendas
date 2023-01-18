# vendas

## ✨ Sobre
O app tem como objetivo gerenciar vendas, permitindo ao usuário ter um controle financeiro, controle de estoque, além de agilizar o processo de venda.
Para esse projeto utilizei o microframework GetX para controle de estado e gerenciamento de rotas, Firebase para autenticação do usuário e Cloud FireStore para salvar as informações.

## 🆗 Recursos
- [x] Registrar usuário no Firebase via email e Google Sign-In;
- [x] Login com senha e Google;
- [x] Logout;

## ⏱️ Em desenvolvimento
- Gerenciar dados de usuário no Cloud FireStore;
- Gerenciar dados das vendas no Cloud FireStore;
- Controle de estoque;
- Histórico financeiro;

## 💻 Tecnologias utilizadas
- Flutter
- GetX
- Firebase Auth
- Cloud FireStore

## 🚀 Como usar
- Clone o projeto

```sh
git clone https://github.com/marcosvhd1/vendas.git
```

- Abra o projeto e rode o seguinte comando no terminal

```sh
flutter pub get
```

- Crie seu projeto no Firebase;

- Instale o Firebase CLI na sua máquina, <a href="https://firebase.google.com/docs/cli">``` Documentação ```</a>

- Use o Firebase CLI para adicionar o Firebase em seu app, <a href="https://firebase.google.com/docs/flutter/setup?platform=android">``` Documentação ```</a>

- Na página de Autenticação no Firebase, adicione os métodos Email/Senha e Google

- Após isso, você irá baixar o arquivo firebase_options, que está disponível 
na configuração do seu projeto no Firebase, e colocar no app no caminho<br>
``` lib -> src -> config -> firebase_options.dart ```

- Para ativar o Google Sign-In, gere a chave SHA-1, com o comando
```sh
keytool -list -v -alias androiddebugkey -keystore  %USERPROFILE%\.android\debug.keystore
```

- Abra seu projeto no Firebase, e cole a chave SHA-1 
no campo Impressão Digital, no caminho<br>
``` Engrenagem -> Configurações do Projeto -> Seus aplicativos -> Adicionar impressão digital ```

- No seu terminal, rode o app
```sh
flutter run
```
