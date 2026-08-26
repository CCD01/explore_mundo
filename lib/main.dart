import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Mundo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0077B6)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// ── Models ─────────────────────────────────────────────────────────────────

class Destination {
  final String name, location, image, description, category;
  final double price;
  const Destination({
    required this.name,
    required this.location,
    required this.image,
    required this.description,
    required this.category,
    required this.price,
  });
}

class TravelPackage {
  final String name, image, description;
  final double price;
  final List<String> features;
  const TravelPackage({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.features,
  });
}

// ── Data ───────────────────────────────────────────────────────────────────

const List<Destination> allDestinations = [
  Destination(
    name: 'Cataratas do Iguaçu',
    location: 'Foz do Iguaçu, PR',
    image: 'https://upload.wikimedia.org/wikipedia/commons/9/91/Aerial_Foz_de_Igua%C3%A7u_26_Nov_2005.jpg',
    description: 'Uma das maiores cataratas do mundo, patrimônio natural da UNESCO. Experiência inesquecível na fronteira entre Brasil, Argentina e Paraguai.',
    category: 'Curitiba & Região',
    price: 890,
  ),
  Destination(
    name: 'Morretes',
    location: 'Morretes, PR',
    image: 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Morretes_%28by_sidney.gauss%29_-_panoramio.jpg',
    description: 'Cidade histórica às margens do Rio Nhundiaquara, famosa pelo barreado e pela viagem de trem pela Serra do Mar. Natureza e gastronomia em harmonia.',
    category: 'Curitiba & Região',
    price: 320,
  ),
  Destination(
    name: 'Ilha do Mel',
    location: 'Paranaguá, PR',
    image: 'https://upload.wikimedia.org/wikipedia/commons/4/43/Ilha_do_Mel_-_Paranagu%C3%A1.jpg',
    description: 'Ilha paradisíaca sem carros no litoral paranaense. Praias desertas, trilhas, fortaleza histórica e pôr do sol deslumbrante.',
    category: 'Curitiba & Região',
    price: 450,
  ),
  Destination(
    name: 'Gramado & Canela',
    location: 'Serra Gaúcha, RS',
    image: 'https://upload.wikimedia.org/wikipedia/commons/d/df/GRAMADO_-_RIO_GRANDE_DO_SUL_-_BRASIL_BY_AUGUSTO_JANISCKI_JUNIOR_%2814281900109%29.jpg',
    description: 'Charme europeu no coração da Serra Gaúcha. Chocolates artesanais, arquitetura alemã e italiana, e o famoso Festival de Cinema.',
    category: 'Brasil',
    price: 750,
  ),
  Destination(
    name: 'Cristo Redentor',
    location: 'Rio de Janeiro, RJ',
    image: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Christ_the_Redeemer_-_Cristo_Redentor.jpg',
    description: 'Uma das 7 maravilhas do mundo moderno. Vista panorâmica incrível da Cidade Maravilhosa do alto do Corcovado.',
    category: 'Brasil',
    price: 680,
  ),
  Destination(
    name: 'Machu Picchu',
    location: 'Cusco, Peru',
    image: 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Machu_Picchu%2C_2023_%28012%29.jpg',
    description: 'A cidade perdida dos Incas escondida nas montanhas dos Andes. Uma das maravilhas do mundo moderno que deixa qualquer viajante sem fôlego.',
    category: 'Internacional',
    price: 2800,
  ),
  Destination(
    name: 'Torre Eiffel',
    location: 'Paris, França',
    image: 'https://upload.wikimedia.org/wikipedia/commons/8/85/Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg',
    description: 'O símbolo de Paris e da França. Vista da cidade luz do alto da torre é uma experiência única e inesquecível para qualquer viajante.',
    category: 'Internacional',
    price: 4200,
  ),
  Destination(
    name: 'Santorini',
    location: 'Egeu, Grécia',
    image: 'https://upload.wikimedia.org/wikipedia/commons/3/37/Oia_sunset_-_panoramio_%282%29.jpg',
    description: 'Casas brancas com cúpulas azuis sobre penhascos vulcânicos. Pôr do sol em Oia é considerado um dos mais belos do mundo.',
    category: 'Internacional',
    price: 5500,
  ),
];

const List<TravelPackage> allPackages = [
  TravelPackage(
    name: 'Paraná Completo',
    image: 'https://upload.wikimedia.org/wikipedia/commons/9/91/Aerial_Foz_de_Igua%C3%A7u_26_Nov_2005.jpg',
    description: 'Conheça o melhor do Paraná: Cataratas do Iguaçu, Morretes, Ilha do Mel e Curitiba numa única viagem inesquecível.',
    price: 1890,
    features: [
      'Voos incluídos',
      '7 diárias em hotéis 4★',
      'Café da manhã',
      'Transfer aeroporto',
      'Passeio de barco nas Cataratas',
      'Viagem de trem Serra do Mar',
      'Guia local bilíngue',
    ],
  ),
  TravelPackage(
    name: 'Brasil Clássico',
    image: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Christ_the_Redeemer_-_Cristo_Redentor.jpg',
    description: 'Rio de Janeiro, Gramado e Serra Gaúcha. O melhor do Brasil numa experiência cultural e gastronômica completa.',
    price: 2450,
    features: [
      'Voos incluídos',
      '8 diárias',
      'Café da manhã e jantar',
      'City tour Rio de Janeiro',
      'Passeio ao Corcovado',
      'Degustação de chocolates',
      'Seguro viagem',
    ],
  ),
  TravelPackage(
    name: 'Maravilhas do Mundo',
    image: 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Machu_Picchu%2C_2023_%28012%29.jpg',
    description: 'Machu Picchu e as ruínas incas do Peru. Uma viagem de aventura e história que mudará sua visão de mundo.',
    price: 5800,
    features: [
      'Voos internacionais',
      '10 diárias',
      'Pensão completa',
      'Trem para Aguas Calientes',
      'Entrada Machu Picchu',
      'Guia especializado',
      'Seguro viagem premium',
    ],
  ),
  TravelPackage(
    name: 'Europa Encantada',
    image: 'https://upload.wikimedia.org/wikipedia/commons/8/85/Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg',
    description: 'Paris e Santorini — romance e beleza mediterrânea combinados na viagem dos sonhos por dois países deslumbrantes.',
    price: 9900,
    features: [
      'Voos internacionais',
      '12 diárias',
      'Hotéis boutique 5★',
      'Café da manhã incluso',
      'Subida Torre Eiffel',
      'Cruzeiro em Santorini',
      'Transfer e seguro premium',
    ],
  ),
];

// ── Home Page ──────────────────────────────────────────────────────────────

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    DestinosPage(),
    PacotesPage(),
    ContatoPage(),
    SobreNosPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0077B6),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Destinos'),
          BottomNavigationBarItem(icon: Icon(Icons.luggage), label: 'Pacotes'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Contato'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Sobre Nós'),
        ],
      ),
    );
  }
}

// ── Destinos Page ──────────────────────────────────────────────────────────

class DestinosPage extends StatefulWidget {
  const DestinosPage({super.key});
  @override
  State<DestinosPage> createState() => _DestinosPageState();
}

class _DestinosPageState extends State<DestinosPage> {
  String _search = '';
  String _filter = 'Todos';
  final List<String> _categories = ['Todos', 'Curitiba & Região', 'Brasil', 'Internacional'];

  @override
  Widget build(BuildContext context) {
    final filtered = allDestinations.where((d) {
      final matchSearch = d.name.toLowerCase().contains(_search.toLowerCase()) ||
          d.location.toLowerCase().contains(_search.toLowerCase());
      final matchFilter = _filter == 'Todos' || d.category == _filter;
      return matchSearch && matchFilter;
    }).toList();

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 160,
          pinned: true,
          backgroundColor: const Color(0xFF0077B6),
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('Explore Mundo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0077B6), Color(0xFF00B4D8)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Icon(Icons.flight_takeoff, color: Colors.white70, size: 48),
                    SizedBox(height: 8),
                    Text('Sua próxima aventura começa aqui', style: TextStyle(color: Colors.white70, fontSize: 13)),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (v) => setState(() => _search = v),
                  decoration: InputDecoration(
                    hintText: 'Buscar destino...',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                  ),
                ),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: _categories.map((c) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text(c),
                        selected: _filter == c,
                        onSelected: (_) => setState(() => _filter = c),
                        selectedColor: const Color(0xFF0077B6),
                        labelStyle: TextStyle(color: _filter == c ? Colors.white : Colors.black87),
                      ),
                    )).toList(),
                  ),
                ),
                const SizedBox(height: 8),
                Text('${filtered.length} destino(s) encontrado(s)', style: const TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (ctx, i) => _DestinationCard(destination: filtered[i]),
            childCount: filtered.length,
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
      ],
    );
  }
}

// ── Destination Card ───────────────────────────────────────────────────────

class _DestinationCard extends StatelessWidget {
  final Destination destination;
  const _DestinationCard({required this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DestinationDetailPage(destination: destination))),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 8, offset: const Offset(0, 4))],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Image.network(
                destination.image,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 220,
                  color: Colors.grey[200],
                  child: const Center(child: Icon(Icons.image_not_supported, size: 48, color: Colors.grey)),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(color: const Color(0xFF0077B6), borderRadius: BorderRadius.circular(20)),
                  child: Text(destination.category, style: const TextStyle(color: Colors.white, fontSize: 11)),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(destination.name, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                            Row(children: [
                              const Icon(Icons.location_on, color: Colors.white70, size: 14),
                              const SizedBox(width: 4),
                              Text(destination.location, style: const TextStyle(color: Colors.white70, fontSize: 13)),
                            ]),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('A partir de', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 11)),
                          Text('R\$ ${destination.price.toStringAsFixed(0)}', style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Destination Detail Page ────────────────────────────────────────────────

class DestinationDetailPage extends StatelessWidget {
  final Destination destination;
  const DestinationDetailPage({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: const Color(0xFF0077B6),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(destination.name, style: const TextStyle(color: Colors.white, shadows: [Shadow(blurRadius: 4)])),
              background: Image.network(
                destination.image,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(color: Colors.grey[300]),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Color(0xFF0077B6)),
                      const SizedBox(width: 6),
                      Text(destination.location, style: const TextStyle(fontSize: 16, color: Colors.grey)),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(color: const Color(0xFFE0F4FF), borderRadius: BorderRadius.circular(20)),
                        child: Text(destination.category, style: const TextStyle(color: Color(0xFF0077B6), fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Sobre o destino', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(destination.description, style: const TextStyle(fontSize: 15, height: 1.6, color: Colors.black87)),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      _InfoTile(icon: Icons.star, label: '4.8', sub: 'Avaliação'),
                      const SizedBox(width: 12),
                      _InfoTile(icon: Icons.people, label: '2k+', sub: 'Viajantes'),
                      const SizedBox(width: 12),
                      _InfoTile(icon: Icons.calendar_month, label: '365', sub: 'Dias/ano'),
                    ],
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ReservationPage(destination: destination))),
                      icon: const Icon(Icons.calendar_today, color: Colors.white),
                      label: const Text('Reservar agora', style: TextStyle(color: Colors.white, fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0077B6),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String label, sub;
  const _InfoTile({required this.icon, required this.label, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(color: const Color(0xFFE0F4FF), borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Icon(icon, color: const Color(0xFF0077B6)),
            const SizedBox(height: 4),
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(sub, style: const TextStyle(color: Colors.grey, fontSize: 11)),
          ],
        ),
      ),
    );
  }
}

// ── Reservation Page ───────────────────────────────────────────────────────

class ReservationPage extends StatefulWidget {
  final Destination destination;
  const ReservationPage({super.key, required this.destination});
  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  DateTimeRange? _dates;
  int _adults = 1;
  int _children = 0;
  final _emailCtrl = TextEditingController();
  bool _emailError = false;

  double get _total {
    if (_dates == null) return 0;
    final nights = _dates!.duration.inDays;
    return widget.destination.price * (_adults + _children) * (nights == 0 ? 1 : nights);
  }

  Future<void> _pickDates() async {
    final result = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(colorScheme: const ColorScheme.light(primary: Color(0xFF0077B6))),
        child: child!,
      ),
    );
    if (result != null) setState(() => _dates = result);
  }

  void _confirm() {
    final email = _emailCtrl.text.trim();
    if (!email.contains('@')) {
      setState(() => _emailError = true);
      return;
    }
    setState(() => _emailError = false);
    final available = _dates!.start.day % 2 == 0;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BookingResultPage(
          destination: widget.destination,
          dates: _dates!,
          adults: _adults,
          children: _children,
          email: email,
          total: _total,
          available: available,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservar'),
        backgroundColor: const Color(0xFF0077B6),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(widget.destination.image, width: 80, height: 80, fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(width: 80, height: 80, color: Colors.grey[200], child: const Icon(Icons.image))),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.destination.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(widget.destination.location, style: const TextStyle(color: Colors.grey)),
                      Text('R\$ ${widget.destination.price.toStringAsFixed(0)}/pessoa/noite',
                        style: const TextStyle(color: Color(0xFF0077B6), fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),

            const Text('Datas da viagem', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: _pickDates,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: _dates == null ? Colors.grey[300]! : const Color(0xFF0077B6), width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_month, color: Color(0xFF0077B6)),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _dates == null
                          ? const Text('Selecionar datas', style: TextStyle(color: Colors.grey))
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Check-in: ${_fmt(_dates!.start)}', style: const TextStyle(fontWeight: FontWeight.w500)),
                                Text('Check-out: ${_fmt(_dates!.end)}', style: const TextStyle(fontWeight: FontWeight.w500)),
                                Text('${_dates!.duration.inDays} noite(s)', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                              ],
                            ),
                    ),
                    const Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text('Viajantes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  _GuestRow(label: 'Adultos', sub: '13+ anos', value: _adults, min: 1,
                    onDec: () => setState(() => _adults = (_adults - 1).clamp(1, 10)),
                    onInc: () => setState(() => _adults = (_adults + 1).clamp(1, 10))),
                  const Divider(height: 24),
                  _GuestRow(label: 'Crianças', sub: '0–12 anos', value: _children, min: 0,
                    onDec: () => setState(() => _children = (_children - 1).clamp(0, 10)),
                    onInc: () => setState(() => _children = (_children + 1).clamp(0, 10))),
                ],
              ),
            ),
            const SizedBox(height: 24),

            const Text('E-mail para confirmação', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            TextField(
              controller: _emailCtrl,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'seu@email.com',
                prefixIcon: const Icon(Icons.mail_outline),
                errorText: _emailError ? 'Informe um e-mail válido' : null,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Color(0xFF0077B6), width: 2)),
              ),
            ),
            const SizedBox(height: 28),

            if (_dates != null) ...[
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: const Color(0xFFE0F4FF), borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    _BookingInfoRow('Diárias', '${_dates!.duration.inDays} noite(s)'),
                    _BookingInfoRow('Pessoas', '${_adults + _children} pessoa(s)'),
                    _BookingInfoRow('Valor/pessoa/noite', 'R\$ ${widget.destination.price.toStringAsFixed(0)}'),
                    const Divider(),
                    _BookingInfoRow('Total estimado', 'R\$ ${_total.toStringAsFixed(2)}', bold: true),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _dates == null ? null : _confirm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0077B6),
                  disabledBackgroundColor: Colors.grey[300],
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                child: const Text('Confirmar reserva', style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  String _fmt(DateTime d) => '${d.day.toString().padLeft(2, '0')}/${d.month.toString().padLeft(2, '0')}/${d.year}';
}

class _GuestRow extends StatelessWidget {
  final String label, sub;
  final int value, min;
  final VoidCallback onDec, onInc;
  const _GuestRow({required this.label, required this.sub, required this.value, required this.min, required this.onDec, required this.onInc});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(sub, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ])),
        IconButton(onPressed: value > min ? onDec : null, icon: const Icon(Icons.remove_circle_outline), color: const Color(0xFF0077B6)),
        Text('$value', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        IconButton(onPressed: onInc, icon: const Icon(Icons.add_circle_outline), color: const Color(0xFF0077B6)),
      ],
    );
  }
}

class _BookingInfoRow extends StatelessWidget {
  final String label, value;
  final bool bold;
  const _BookingInfoRow(this.label, this.value, {this.bold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
          Text(value, style: TextStyle(fontWeight: bold ? FontWeight.bold : FontWeight.normal, color: bold ? const Color(0xFF0077B6) : null, fontSize: bold ? 16 : 14)),
        ],
      ),
    );
  }
}

// ── Booking Result Page ────────────────────────────────────────────────────

class BookingResultPage extends StatelessWidget {
  final Destination destination;
  final DateTimeRange dates;
  final int adults, children;
  final String email;
  final double total;
  final bool available;

  const BookingResultPage({
    super.key,
    required this.destination,
    required this.dates,
    required this.adults,
    required this.children,
    required this.email,
    required this.total,
    required this.available,
  });

  String _fmt(DateTime d) => '${d.day.toString().padLeft(2, '0')}/${d.month.toString().padLeft(2, '0')}/${d.year}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(available ? 'Reserva Confirmada' : 'Sem Disponibilidade'),
        backgroundColor: available ? Colors.green : Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                available ? Icons.check_circle : Icons.event_busy,
                size: 90,
                color: available ? Colors.green : Colors.orange,
              ),
              const SizedBox(height: 20),
              Text(
                available ? 'Reserva Confirmada!' : 'Datas Indisponíveis',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: available ? Colors.green : Colors.orange),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                available
                    ? 'Sua viagem para ${destination.name} está confirmada! As informações foram enviadas para $email.'
                    : 'As datas selecionadas não estão disponíveis para ${destination.name}. Tente outras datas.',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black54, fontSize: 15, height: 1.5),
              ),
              if (available) ...[
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.green[50], borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.green[200]!)),
                  child: Column(
                    children: [
                      _Stat(Icons.flight_takeoff, destination.name),
                      _Stat(Icons.calendar_today, '${_fmt(dates.start)} → ${_fmt(dates.end)}'),
                      _Stat(Icons.people, '$adults adulto(s) + $children criança(s)'),
                      _Stat(Icons.attach_money, 'Total: R\$ ${total.toStringAsFixed(2)}'),
                      _Stat(Icons.mail, email),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.popUntil(context, (r) => r.isFirst),
                style: ElevatedButton.styleFrom(
                  backgroundColor: available ? Colors.green : Colors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: Text(available ? 'Voltar ao início' : 'Tentar outras datas', style: const TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final IconData icon;
  final String text;
  const _Stat(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.green[700]),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}

// ── Pacotes Page ───────────────────────────────────────────────────────────

class PacotesPage extends StatelessWidget {
  const PacotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('Pacotes de Viagem', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFF0077B6),
          pinned: true,
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, i) {
                final p = allPackages[i];
                return GestureDetector(
                  onTap: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => PackageDetailPage(package: p))),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 8, offset: const Offset(0, 4))],
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                          child: Image.network(p.image, height: 180, width: double.infinity, fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(height: 180, color: Colors.grey[200], child: const Icon(Icons.image, size: 48))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(p.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 6),
                              Text(p.description, style: const TextStyle(color: Colors.black54, height: 1.4)),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('R\$ ${p.price.toStringAsFixed(0)}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF0077B6))),
                                  ElevatedButton(
                                    onPressed: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => PackageDetailPage(package: p))),
                                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0077B6), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                                    child: const Text('Ver pacote', style: TextStyle(color: Colors.white)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: allPackages.length,
            ),
          ),
        ),
      ],
    );
  }
}

// ── Package Detail Page ────────────────────────────────────────────────────

class PackageDetailPage extends StatelessWidget {
  final TravelPackage package;
  const PackageDetailPage({super.key, required this.package});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 260,
            pinned: true,
            backgroundColor: const Color(0xFF0077B6),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(package.name, style: const TextStyle(color: Colors.white, shadows: [Shadow(blurRadius: 4)])),
              background: Image.network(package.image, fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(color: Colors.grey[300])),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(package.description, style: const TextStyle(fontSize: 15, height: 1.6, color: Colors.black87)),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(color: const Color(0xFFE0F4FF), borderRadius: BorderRadius.circular(14)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('O que está incluído', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 12),
                        ...package.features.map((f) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(children: [
                            const Icon(Icons.check_circle, color: Color(0xFF0077B6), size: 20),
                            const SizedBox(width: 10),
                            Expanded(child: Text(f)),
                          ]),
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Investimento total', style: TextStyle(fontSize: 16, color: Colors.grey)),
                      Text('R\$ ${package.price.toStringAsFixed(0)}', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF0077B6))),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text('Solicitar informações', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  _PackageContactForm(packageName: package.name),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PackageContactForm extends StatefulWidget {
  final String packageName;
  const _PackageContactForm({required this.packageName});
  @override
  State<_PackageContactForm> createState() => _PackageContactFormState();
}

class _PackageContactFormState extends State<_PackageContactForm> {
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  bool _sent = false;

  void _send() {
    if (_nameCtrl.text.isEmpty || !_emailCtrl.text.contains('@')) return;
    setState(() => _sent = true);
  }

  @override
  Widget build(BuildContext context) {
    if (_sent) {
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.green[50], borderRadius: BorderRadius.circular(14), border: Border.all(color: Colors.green[200]!)),
        child: Row(
          children: [
            const Icon(Icons.mark_email_read, color: Colors.green, size: 36),
            const SizedBox(width: 14),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Mensagem enviada!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 16)),
              Text('Nossa equipe entrará em contato sobre o ${widget.packageName}', style: const TextStyle(color: Colors.black54, fontSize: 13)),
            ])),
          ],
        ),
      );
    }
    return Column(
      children: [
        TextField(
          controller: _nameCtrl,
          decoration: InputDecoration(labelText: 'Seu nome', prefixIcon: const Icon(Icons.person_outline), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _emailCtrl,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(labelText: 'Seu e-mail', prefixIcon: const Icon(Icons.mail_outline), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: _send,
            icon: const Icon(Icons.send, color: Colors.white),
            label: const Text('Quero saber mais!', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0077B6),
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ],
    );
  }
}

// ── Contato Page ───────────────────────────────────────────────────────────

class ContatoPage extends StatefulWidget {
  const ContatoPage({super.key});
  @override
  State<ContatoPage> createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _msgCtrl = TextEditingController();
  bool _sent = false;

  void _submit() {
    if (_nameCtrl.text.isEmpty || !_emailCtrl.text.contains('@') || _msgCtrl.text.isEmpty) return;
    setState(() => _sent = true);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('Fale Conosco', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFF0077B6),
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: _sent ? _SuccessCard(name: _nameCtrl.text) : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Entre em contato', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                const Text('Nossa equipe responde em até 24 horas', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 24),
                TextField(controller: _nameCtrl, decoration: InputDecoration(labelText: 'Nome completo', prefixIcon: const Icon(Icons.person_outline), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
                const SizedBox(height: 14),
                TextField(controller: _emailCtrl, keyboardType: TextInputType.emailAddress, decoration: InputDecoration(labelText: 'E-mail', prefixIcon: const Icon(Icons.mail_outline), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
                const SizedBox(height: 14),
                TextField(controller: _msgCtrl, maxLines: 5, decoration: InputDecoration(labelText: 'Mensagem', alignLabelWithHint: true, prefixIcon: const Icon(Icons.message_outlined), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _submit,
                    icon: const Icon(Icons.send, color: Colors.white),
                    label: const Text('Enviar mensagem', style: TextStyle(color: Colors.white, fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0077B6),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text('Informações de contato', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                _ContactInfo(Icons.location_on, 'Endereço', 'Av. Cândido de Abreu, 776, Curitiba - PR'),
                _ContactInfo(Icons.phone, 'Telefone', '(41) 3000-0000'),
                _ContactInfo(Icons.mail, 'E-mail', 'contato@exploremundo.com.br'),
                _ContactInfo(Icons.access_time, 'Horário', 'Seg–Sex: 9h às 18h'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SuccessCard extends StatelessWidget {
  final String name;
  const _SuccessCard({required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Icon(Icons.mark_email_read, size: 90, color: Colors.green),
            const SizedBox(height: 20),
            const Text('Mensagem enviada com sucesso!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green), textAlign: TextAlign.center),
            const SizedBox(height: 12),
            Text('Olá, $name! Recebemos sua mensagem e nossa equipe entrará em contato em até 24 horas.', textAlign: TextAlign.center, style: const TextStyle(color: Colors.black54, fontSize: 15, height: 1.5)),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).popUntil((r) => r.isFirst),
              icon: const Icon(Icons.home, color: Colors.white),
              label: const Text('Voltar ao início', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green, padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactInfo extends StatelessWidget {
  final IconData icon;
  final String label, value;
  const _ContactInfo(this.icon, this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(padding: const EdgeInsets.all(10), decoration: BoxDecoration(color: const Color(0xFFE0F4FF), borderRadius: BorderRadius.circular(10)), child: Icon(icon, color: const Color(0xFF0077B6))),
          const SizedBox(width: 14),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
            Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
          ]),
        ],
      ),
    );
  }
}

// ── Sobre Nós Page ─────────────────────────────────────────────────────────

class SobreNosPage extends StatelessWidget {
  const SobreNosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          pinned: true,
          backgroundColor: const Color(0xFF0077B6),
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('Sobre Nós', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFF0077B6), Color(0xFF00B4D8)], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: const Center(child: Icon(Icons.public, size: 80, color: Colors.white24)),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(radius: 50, backgroundColor: Color(0xFFE0F4FF), child: Icon(Icons.flight, size: 50, color: Color(0xFF0077B6))),
                ),
                const SizedBox(height: 16),
                const Center(child: Text('Explore Mundo', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold))),
                const Center(child: Text('Agência de Viagens', style: TextStyle(color: Colors.grey))),
                const SizedBox(height: 24),
                const Text('Nossa história', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text(
                  'Fundada em 2010, a Explore Mundo nasceu do sonho de tornar viagens inesquecíveis acessíveis a todos. Com sede em Curitiba, atendemos clientes de todo o Brasil, conectando pessoas às experiências mais incríveis do planeta.',
                  style: TextStyle(fontSize: 15, height: 1.6, color: Colors.black87),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Nossa missão é ir além do turismo — queremos que cada viagem transforme vidas, amplie horizontes e crie memórias que durem para sempre.',
                  style: TextStyle(fontSize: 15, height: 1.6, color: Colors.black87),
                ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    _Feature(Icons.verified, '15+ anos\nde experiência'),
                    const SizedBox(width: 12),
                    _Feature(Icons.group, '50k+\nviajantes'),
                    const SizedBox(width: 12),
                    _Feature(Icons.star, '4.9\navaliação'),
                  ],
                ),
                const SizedBox(height: 32),
                const Text('Nossas redes sociais', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                const Text('Siga-nos e fique por dentro das melhores ofertas!', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _SocialButton(icon: Icons.camera_alt, label: 'Instagram', color: const Color(0xFFE1306C)),
                    _SocialButton(icon: Icons.facebook, label: 'Facebook', color: const Color(0xFF1877F2)),
                    _SocialButton(icon: Icons.play_circle_fill, label: 'YouTube', color: const Color(0xFFFF0000)),
                    _SocialButton(icon: Icons.chat, label: 'WhatsApp', color: const Color(0xFF25D366)),
                  ],
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: const Color(0xFFE0F4FF), borderRadius: BorderRadius.circular(14)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Reconhecimentos', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 12),
                      Row(children: [Icon(Icons.emoji_events, color: Color(0xFF0077B6)), SizedBox(width: 10), Expanded(child: Text('Melhor Agência Paraná 2023 – ABAV'))]),
                      SizedBox(height: 8),
                      Row(children: [Icon(Icons.emoji_events, color: Color(0xFF0077B6)), SizedBox(width: 10), Expanded(child: Text('Top 10 Agências Brasil – TripAdvisor'))]),
                      SizedBox(height: 8),
                      Row(children: [Icon(Icons.emoji_events, color: Color(0xFF0077B6)), SizedBox(width: 10), Expanded(child: Text('Excelência em Atendimento 2022'))]),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Feature extends StatelessWidget {
  final IconData icon;
  final String label;
  const _Feature(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(color: const Color(0xFFE0F4FF), borderRadius: BorderRadius.circular(12)),
        child: Column(children: [
          Icon(icon, color: const Color(0xFF0077B6), size: 28),
          const SizedBox(height: 6),
          Text(label, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        ]),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const _SocialButton({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
