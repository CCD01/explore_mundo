# ✈️ Explore Mundo

Aplicativo mobile de agência de viagens desenvolvido em *Flutter*, como projeto prático da disciplina de Desenvolvimento de Aplicativos Móveis.

O app permite explorar destinos nacionais e internacionais, ver pacotes de viagem completos, simular reservas com seleção de datas e visualizar informações da agência.

## 📱 Funcionalidades

- *Destinos*: listagem com busca e filtro por categoria (Curitiba & Região, Brasil, Internacional)
- *Detalhes do destino*: descrição, avaliação, e botão de reserva
- *Reserva estilo Airbnb*: seleção de datas no calendário, número de adultos/crianças, cálculo automático do valor total e confirmação por e-mail
- *Resultado da reserva*: tela de confirmação (ou indisponibilidade, com sugestão de tentar outras datas)
- *Pacotes de viagem*: pacotes completos com o que está incluso, valores e formulário de contato
- *Fale Conosco*: formulário de contato com mensagem de sucesso ao enviar
- *Sobre Nós*: história da agência, números e redes sociais

## 🛠️ Tecnologias

- [Flutter](https://flutter.dev) 3.24
- Dart
- Material Design 3

## 🧩 Widgets e conceitos aplicados

- MaterialApp, Scaffold, AppBar, SliverAppBar
- Layouts com Row, Column, Stack
- ListView / CustomScrollView com listas dinâmicas
- Widgets customizados (_DestinationCard, _GuestRow, _SocialButton, entre outros)
- Navegação entre telas com Navigator.push
- Formulários e validação com TextField e StatefulWidget
- showDateRangePicker para seleção de datas

## 🚀 Como executar

```bash
flutter pub get
flutter run


