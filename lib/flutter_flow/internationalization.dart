import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
    String? esText = '',
  }) =>
      [enText, ptText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // main_home
  {
    '3bi54x5g': {
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    'nnv46x35': {
      'en': 'Below is a summary of your teams activity.',
      'es':
          'A continuación se muestra un resumen de la actividad de sus equipos.',
      'pt': 'Abaixo está um resumo das atividades da sua equipe.',
    },
    'jqevo63s': {
      'en': 'New Membrers',
      'es': 'Nuevos miembros',
      'pt': 'Novos Membros',
    },
    'd0r4w3cc': {
      'en': '24',
      'es': '24',
      'pt': '24',
    },
    '8vot9bzj': {
      'en': 'New Factions',
      'es': 'Nuevas facciones',
      'pt': 'Novas Facções',
    },
    '463rfkem': {
      'en': '3,200',
      'es': '3.200',
      'pt': '3.200',
    },
    'saxskj92': {
      'en': 'Factions Actions',
      'es': 'Acciones de las facciones',
      'pt': 'Ações das Facções',
    },
    '2wlrr5lg': {
      'en': '4300',
      'es': '4300',
      'pt': '4300',
    },
    'kphqz3hi': {
      'en': 'Registrations',
      'es': 'Inscripciones',
      'pt': 'Cadastros',
    },
    'xlzf8qqx': {
      'en': 'Monitoring the registration of faction members',
      'es': 'Seguimiento del registro de los miembros de las facciones',
      'pt': 'Monitoramento do registro de membros de facção',
    },
    'zt3s5l2s': {
      'en': '4 Members',
      'es': '4 miembros',
      'pt': '4 membros',
    },
    'puy8obok': {
      'en': 'Contract Activity',
      'es': 'Actividad contractual',
      'pt': 'Atividade de contrato',
    },
    'zlovh0zt': {
      'en': 'Below is an a summary of activity.',
      'es': 'A continuación se muestra un resumen de la actividad.',
      'pt': 'Abaixo está um resumo da atividade.',
    },
    'g1uaaovn': {
      'en': 'Customer Activity',
      'es': 'Actividad del cliente',
      'pt': 'Atividade do cliente',
    },
    'e5q3ows1': {
      'en': 'Below is an a summary of activity.',
      'es': 'A continuación se muestra un resumen de la actividad.',
      'pt': 'Abaixo está um resumo da atividade.',
    },
    'uj7jsxmo': {
      'en': 'Contract Activity',
      'es': 'Actividad contractual',
      'pt': 'Atividade de contrato',
    },
    'hkk2zmjw': {
      'en': 'Below is an a summary of activity.',
      'es': 'A continuación se muestra un resumen de la actividad.',
      'pt': 'Abaixo está um resumo da atividade.',
    },
    'jkgae0vc': {
      'en': 'Customer Activity',
      'es': 'Actividad del cliente',
      'pt': 'Atividade do cliente',
    },
    'g4os7kcp': {
      'en': 'Below is an a summary of activity.',
      'es': 'A continuación se muestra un resumen de la actividad.',
      'pt': 'Abaixo está um resumo da atividade.',
    },
    'y24lcr13': {
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    'xdxbdj20': {
      'en': '__',
      'es': '__',
      'pt': '__',
    },
  },
  // main_faccoes
  {
    '4h88trkp': {
      'en': 'Contracts',
      'es': 'Contratos',
      'pt': 'Contratos',
    },
    'smh1o93d': {
      'en': 'Factions',
      'es': 'Facciones',
      'pt': 'Facções',
    },
    'iuiq856w': {
      'en': 'Faction Add',
      'es': 'Añadir facción',
      'pt': 'Adicionar Facção',
    },
    't967eizl': {
      'en': 'information',
      'es': 'información',
      'pt': 'Informação',
    },
    'dpt94d56': {
      'en': 'Actions of the PCC',
      'es': 'Acciones del PCC',
      'pt': 'Ações do PCC',
    },
    '2a7y5e2w': {
      'en': 'Actions of the CV ',
      'es': 'Acciones del CV',
      'pt': 'Ações do CV',
    },
    'dlt46loo': {
      'en': 'Factions',
      'es': 'Facciones',
      'pt': 'Facções',
    },
    'h9kiq8rj': {
      'en': 'Next Action',
      'es': 'Próxima acción',
      'pt': 'Próxima ação',
    },
    '8e820p1r': {
      'en': 'In Progress',
      'es': 'En curso',
      'pt': 'Em andamento',
    },
    '7wcrhzda': {
      'en': 'C V',
      'es': 'CV',
      'pt': 'CV',
    },
    'sen48p1q': {
      'en': 'Red Command',
      'es': 'Comando rojo',
      'pt': 'Comando Vermelho',
    },
    'u6ek8ogi': {
      'en': 'Next Action',
      'es': 'Próxima acción',
      'pt': 'Próxima ação',
    },
    'zz9ma01i': {
      'en': 'Tuesday, 10:00am',
      'es': 'Martes, 10:00 horas',
      'pt': 'Terça-feira, 10:00 da manhã',
    },
    'nanoxp6w': {
      'en': 'In Progress',
      'es': 'En curso',
      'pt': 'Em andamento',
    },
    'j08eiorc': {
      'en': '__',
      'es': '__',
      'pt': '__',
    },
  },
  // main_messages
  {
    '8jlklje5': {
      'en': 'Messages',
      'es': 'Mensajes',
      'pt': 'Mensagens',
    },
    '13b6p0ri': {
      'en': 'Search messages here...',
      'es': 'Buscar mensajes aquí...',
      'pt': 'Pesquisar mensagens aqui...',
    },
    'm6h1ci8o': {
      'en': 'Randy Mcdonald',
      'es': 'Randy Mcdonald',
      'pt': 'Randy McDonald - O que é isso?',
    },
    '375pqg6v': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'es':
          'Esto fue realmente genial, estoy muy contento de que pudiéramos ponernos al día este fin de semana.',
      'pt':
          'Isso foi realmente ótimo, estou muito feliz que pudemos nos encontrar neste fim de semana.',
    },
    'cbtg39kg': {
      'en': 'Mon. July 3rd - 4:12pm',
      'es': 'Lunes 3 de julio - 16:12 h',
      'pt': 'Seg. 3 de julho - 16h12',
    },
    'yjl2z0ye': {
      'en': 'Randy Mcdonald',
      'es': 'Randy Mcdonald',
      'pt': 'Randy McDonald - O que é isso?',
    },
    'uyqeyj1w': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'es':
          'Esto fue realmente genial, estoy muy contento de que pudiéramos ponernos al día este fin de semana.',
      'pt':
          'Isso foi realmente ótimo, estou muito feliz que pudemos nos encontrar neste fim de semana.',
    },
    'qdtk1psh': {
      'en': 'Mon. July 3rd - 4:12pm',
      'es': 'Lunes 3 de julio - 16:12 h',
      'pt': 'Seg. 3 de julho - 16h12',
    },
    'udrcsj9r': {
      'en': 'Randy Mcdonald',
      'es': 'Randy Mcdonald',
      'pt': 'Randy McDonald - O que é isso?',
    },
    'ugrrfw8l': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'es':
          'Esto fue realmente genial, estoy muy contento de que pudiéramos ponernos al día este fin de semana.',
      'pt':
          'Isso foi realmente ótimo, estou muito feliz que pudemos nos encontrar neste fim de semana.',
    },
    'ib4p9em6': {
      'en': 'Mon. July 3rd - 4:12pm',
      'es': 'Lunes 3 de julio - 16:12 h',
      'pt': 'Seg. 3 de julho - 16h12',
    },
    'r0cqh4ec': {
      'en':
          'I am a freelancer and I need help writing content for a proposal for a project. Can I give you some context for the projecct I need to write a proposal for?',
      'es':
          'Soy freelance y necesito ayuda para redactar el contenido de una propuesta para un proyecto. ¿Puedo brindarle un poco de contexto sobre el proyecto para el que necesito redactar una propuesta?',
      'pt':
          'Sou freelancer e preciso de ajuda para escrever conteúdo para uma proposta de projeto. Posso dar algum contexto para o projeto para o qual preciso escrever uma proposta?',
    },
    'cu0iov54': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
    },
    'it69akbs': {
      'en': 'Hey really love what you are doing!',
      'es': 'Hola, ¡realmente me encanta lo que haces!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'pu94epux': {
      'en': 'a few moments ago',
      'es': 'Hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'yny0f2zl': {
      'en': 'This is my intro video',
      'es': 'Este es mi video de introducción',
      'pt': 'Este é meu vídeo de introdução',
    },
    'q2bmh3xq': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
    },
    '4lc34hro': {
      'en': 'Hey really love what you are doing!',
      'es': 'Hola, ¡realmente me encanta lo que haces!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'rv9g1zmc': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
    },
    'bbpyr9q4': {
      'en': 'Hey really love what you are doing!',
      'es': 'Hola, ¡realmente me encanta lo que haces!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'jkyrunx9': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
    },
    'p20c60zu': {
      'en': 'Start typing here...',
      'es': 'Comience a escribir aquí...',
      'pt': 'Comece a digitar aqui...',
    },
    'ym579y79': {
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    'smtxdnbn': {
      'en': '__',
      'es': '__',
      'pt': '__',
    },
  },
  // main_profile_page
  {
    'qrxn5crt': {
      'en': 'My Profile',
      'es': 'Mi perfil',
      'pt': 'Meu Perfil',
    },
    'fyxsf6vn': {
      'en': 'Account Settings',
      'es': 'Configuraciones de la cuenta',
      'pt': 'Configurações de Conta',
    },
    'h43llaan': {
      'en': 'Change Password',
      'es': 'Cambiar la contraseña',
      'pt': 'Alterar a senha',
    },
    'b1lw0hfu': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'pt': 'Editar Perfil',
    },
    'clf3bzn3': {
      'en': 'Update Theme',
      'es': 'Actualizar tema',
      'pt': 'Atualizar tema',
    },
    'dujofvd2': {
      'en':
          'Update the theme of your application from seleccting one of the options below.',
      'es':
          'Actualice el tema de su aplicación seleccionando una de las opciones siguientes.',
      'pt':
          'Atualize o tema do seu aplicativo selecionando uma das opções abaixo.',
    },
    'zohqypc2': {
      'en': 'Dark Mode',
      'es': 'Modo oscuro',
      'pt': 'Modo escuro',
    },
    't3a5lo8r': {
      'en': 'Light Mode',
      'es': 'Modo claro',
      'pt': 'Modo de luz',
    },
    'abqf147c': {
      'en': 'Log Out',
      'es': 'Finalizar la sesión',
      'pt': 'Sair',
    },
    'o3dp9tss': {
      'en': '__',
      'es': '__',
      'pt': '__',
    },
  },
  // messages_details
  {
    '67tv84ak': {
      'en':
          'I am a freelancer and I need help writing content for a proposal for a project. Can I give you some context for the projecct I need to write a proposal for?',
      'es':
          'Soy freelance y necesito ayuda para redactar el contenido de una propuesta para un proyecto. ¿Puedo brindarle un poco de contexto sobre el proyecto para el que necesito redactar una propuesta?',
      'pt':
          'Sou freelancer e preciso de ajuda para escrever conteúdo para uma proposta de projeto. Posso dar algum contexto para o projeto para o qual preciso escrever uma proposta?',
    },
    'ldze800m': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
    },
    '3yldlfk9': {
      'en': 'Hey really love what you are doing!',
      'es': 'Hola, ¡realmente me encanta lo que haces!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'ozghv9ta': {
      'en': 'a few moments ago',
      'es': 'Hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    '4b943uzi': {
      'en': 'This is my intro video',
      'es': 'Este es mi video de introducción',
      'pt': 'Este é meu vídeo de introdução',
    },
    'j5burt0n': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
    },
    'nve1gr7c': {
      'en': 'Hey really love what you are doing!',
      'es': 'Hola, ¡realmente me encanta lo que haces!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'ttxn3h0c': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
    },
    'sj32bx47': {
      'en': 'Hey really love what you are doing!',
      'es': 'Hola, ¡realmente me encanta lo que haces!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'mwdx1wqh': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
    },
    'buzhmfr6': {
      'en': 'Start typing here...',
      'es': 'Comience a escribir aquí...',
      'pt': 'Comece a digitar aqui...',
    },
    '34fjbl14': {
      'en': 'Chat Details',
      'es': 'Detalles del chat',
      'pt': 'Detalhes do bate-papo',
    },
    'pjym5jdv': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // main_membros_list
  {
    'c21nlyqi': {
      'en': 'Members',
      'es': 'Miembros',
      'pt': 'Membros',
    },
    'eux2gob0': {
      'en': 'Member Add',
      'es': 'Miembro Agregar',
      'pt': 'Adicionar Membro',
    },
    'o4aksuns': {
      'en': 'All',
      'es': 'Todo',
      'pt': 'Todos',
    },
    'lyuuixqj': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'ojxnuhlr': {
      'en': 'Facction',
      'es': 'Nombre común',
      'pt': 'Vulgo',
    },
    '7siq4kx2': {
      'en': 'Status',
      'es': 'Facción',
      'pt': 'Facção',
    },
    'hjpemxpa': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    '4em6l00i': {
      'en': 'James Wiseman',
      'es': '',
      'pt': '',
    },
    'kwqo5hpr': {
      'en': 'Account Manager',
      'es': '',
      'pt': '',
    },
    '696m1zby': {
      'en': 'ACME Co.',
      'es': '',
      'pt': '',
    },
    'qml66lhq': {
      'en': 'ACME Co.',
      'es': '',
      'pt': '',
    },
    'urum7mda': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'h8pz8gyu': {
      'en': 'Ignacious Rodriguez',
      'es': '',
      'pt': '',
    },
    'syoq4mtg': {
      'en': 'Sales Manager',
      'es': '',
      'pt': '',
    },
    'qus157u9': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'ivhuy6pu': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'ydmma5zo': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    '1as8uqyv': {
      'en': 'Elena Williams',
      'es': '',
      'pt': '',
    },
    'eou42bl2': {
      'en': 'Head of Product & Innovation',
      'es': '',
      'pt': '',
    },
    'sqi64ut8': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'akife5e8': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'eg6ny09p': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'a1co340j': {
      'en': 'Greg Brown',
      'es': '',
      'pt': '',
    },
    'h5yfswcb': {
      'en': 'Account Manager',
      'es': '',
      'pt': '',
    },
    's59qjbcz': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'i6xj6jga': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'xmji2tzo': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'gfgn7g50': {
      'en': 'June Williamson',
      'es': '',
      'pt': '',
    },
    'co2x60pp': {
      'en': 'Sr. Account Manager',
      'es': '',
      'pt': '',
    },
    'kf5dbgnh': {
      'en': 'HealthAi',
      'es': '',
      'pt': '',
    },
    'a23tf68r': {
      'en': 'HealthAi',
      'es': '',
      'pt': '',
    },
    'wzosxpd5': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'y92cmj40': {
      'en': 'June Williamson',
      'es': '',
      'pt': '',
    },
    'b5k60sfv': {
      'en': 'Sr. Account Manager',
      'es': '',
      'pt': '',
    },
    'ru9cbxvp': {
      'en': 'HealthAi',
      'es': '',
      'pt': '',
    },
    '1c4nroxz': {
      'en': 'HealthAi',
      'es': '',
      'pt': '',
    },
    'e7pmymkr': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    '1b3ccr4v': {
      'en': 'For Faction',
      'es': 'Por facción',
      'pt': 'Por Facção',
    },
    '0rsvv9uz': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    '68gboza2': {
      'en': 'Title',
      'es': 'Nombre común',
      'pt': 'Vulgo',
    },
    '7gyw39bi': {
      'en': 'Faction',
      'es': 'Facción',
      'pt': 'Facção',
    },
    'd2orhcas': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    'vf8k6phv': {
      'en': 'Ignacious Rodriguez',
      'es': '',
      'pt': '',
    },
    'd9noebaw': {
      'en': 'Sales Manager',
      'es': '',
      'pt': '',
    },
    'zyb1916s': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'r5c3rtov': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'p5shben4': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    '0rg64768': {
      'en': 'Ignacious Rodriguez',
      'es': '',
      'pt': '',
    },
    'lplffai2': {
      'en': 'Sales Manager',
      'es': '',
      'pt': '',
    },
    '94yzm47j': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'cvmap13n': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    '3zbm2xph': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    '8l2qut91': {
      'en': 'Ignacious Rodriguez',
      'es': '',
      'pt': '',
    },
    '80qa6qra': {
      'en': 'Sales Manager',
      'es': '',
      'pt': '',
    },
    'oh3sdlax': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'v2ssw212': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    '3jh9yl9c': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    'flpnnezl': {
      'en': 'Ignacious Rodriguez',
      'es': '',
      'pt': '',
    },
    'nezicjcs': {
      'en': 'Sales Manager',
      'es': '',
      'pt': '',
    },
    '8vxwjdco': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    '1kxy1ulg': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'x0azbcyn': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    '2v8x4m17': {
      'en': 'Ignacious Rodriguez',
      'es': '',
      'pt': '',
    },
    'kvgy6hc5': {
      'en': 'Sales Manager',
      'es': '',
      'pt': '',
    },
    'opcufzk6': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    '8o579w6x': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'da3xanaa': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    'np205uep': {
      'en': 'Ignacious Rodriguez',
      'es': '',
      'pt': '',
    },
    '69l3b4mz': {
      'en': 'Sales Manager',
      'es': '',
      'pt': '',
    },
    '73orhvn4': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'id8q59ht': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    '903o9k81': {
      'en': 'New',
      'es': '',
      'pt': '',
    },
    'o6z4acb7': {
      'en': 'Leaders',
      'es': 'Líderes',
      'pt': 'Líderes',
    },
    'd1pexjyp': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    '6xop9wnq': {
      'en': 'custon name',
      'es': 'nombre personalizado',
      'pt': 'Alcunha',
    },
    '2jbsz4tt': {
      'en': 'Status',
      'es': 'Estado',
      'pt': 'Status',
    },
    '5d8kozo5': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'ca0d1ekl': {
      'en': 'Elena Williams',
      'es': '',
      'pt': '',
    },
    '7t2aimjk': {
      'en': 'Head of Product & Innovation',
      'es': '',
      'pt': '',
    },
    'blvgbicg': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    '6i3w7due': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'pzpdu7a5': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'n6of3in4': {
      'en': 'Greg Brown',
      'es': '',
      'pt': '',
    },
    'y880ly4o': {
      'en': 'Account Manager',
      'es': '',
      'pt': '',
    },
    'soalb0fv': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'p0dl07t8': {
      'en': 'Robin HQ',
      'es': '',
      'pt': '',
    },
    'dt64r4l1': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'f4waobhl': {
      'en': 'June Williamson',
      'es': '',
      'pt': '',
    },
    'wzp8sq06': {
      'en': 'Sr. Account Manager',
      'es': '',
      'pt': '',
    },
    '4rerp8ml': {
      'en': 'HealthAi',
      'es': '',
      'pt': '',
    },
    'v0329wsw': {
      'en': 'HealthAi',
      'es': '',
      'pt': '',
    },
    'la3g3y70': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'nqcq2kt5': {
      'en': 'June Williamson',
      'es': '',
      'pt': '',
    },
    'ghi83nvr': {
      'en': 'Sr. Account Manager',
      'es': '',
      'pt': '',
    },
    'gd7ur4we': {
      'en': 'HealthAi',
      'es': '',
      'pt': '',
    },
    '2jd8ake4': {
      'en': 'HealthAi',
      'es': '',
      'pt': '',
    },
    '4l71h0ip': {
      'en': 'Contacted',
      'es': '',
      'pt': '',
    },
    'zzjge5y5': {
      'en': 'Customers',
      'es': '',
      'pt': '',
    },
    'rhgiw7n8': {
      'en': '__',
      'es': '',
      'pt': '',
    },
  },
  // create_membros
  {
    'zt5b7d9p': {
      'en': 'Add Member',
      'es': 'Agregar miembro',
      'pt': 'Adicionar membro',
    },
    'd42cp4ch': {
      'en': 'Perfil',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    '398bi6zs': {
      'en':
          'Upload images about the member  and fill out the information below.',
      'es':
          'Sube imágenes sobre el miembro y completa la información a continuación.',
      'pt': 'Carregue imagens sobre o membro e preencha as informações abaixo.',
    },
    'hd1zq2vg': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    '601q3mqo': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'p6oecncj': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'x6mky7qo': {
      'en': 'Select one Faction ...',
      'es': 'Seleccione una facción...',
      'pt': 'Selecione uma facção...',
    },
    'bhtndv36': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    '23oa8nqa': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'qmnpzcz2': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    '964man1i': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'pklsojyd': {
      'en': 'Select one Function',
      'es': 'Seleccione una Función',
      'pt': 'Selecione uma função',
    },
    'k2hripax': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    'g5cc4pxm': {
      'en': 'Male',
      'es': '',
      'pt': '',
    },
    'i6epv2gh': {
      'en': 'Female',
      'es': '',
      'pt': '',
    },
    '6givblnf': {
      'en': 'Others',
      'es': '',
      'pt': '',
    },
    'oilq80u5': {
      'en': 'Select one Sex ...',
      'es': 'Seleccione un Sexo...',
      'pt': 'Selecione um sexo ...',
    },
    'kx5e00wb': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    'sphccniy': {
      'en': 'A+',
      'es': '',
      'pt': '',
    },
    '4qy7groc': {
      'en': 'A-',
      'es': '',
      'pt': '',
    },
    'qi9bptnr': {
      'en': 'B+',
      'es': '',
      'pt': '',
    },
    '33axhdsz': {
      'en': 'B-',
      'es': '',
      'pt': '',
    },
    'sltd6l9q': {
      'en': 'O+',
      'es': '',
      'pt': '',
    },
    '2xmhmsma': {
      'en': 'O-',
      'es': '',
      'pt': '',
    },
    'xu4rgnqy': {
      'en': 'AB+',
      'es': '',
      'pt': '',
    },
    '7xhb8fgz': {
      'en': 'AB-',
      'es': '',
      'pt': '',
    },
    '77rkki8e': {
      'en': 'Blood type ...',
      'es': 'Tipo de sangre...',
      'pt': 'Tipo sanguíneo ...',
    },
    'anxapn2i': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    'wrnn3dpp': {
      'en': 'Full Name of Member',
      'es': 'Nombre completo del miembro',
      'pt': 'Nome completo do membro',
    },
    'ap4evi76': {
      'en': 'Full Name of Member',
      'es': '',
      'pt': '',
    },
    '88zmsnd2': {
      'en': 'Date of birth',
      'es': 'Fecha de nacimiento',
      'pt': 'Data de nascimento',
    },
    'xy10hy0e': {
      'en': 'Date of last arrest',
      'es': 'Fecha del último arresto',
      'pt': 'Data da última prisão',
    },
    'wdgae0rc': {
      'en': 'Infopen number',
      'es': 'Número de Infopen',
      'pt': 'Número Infopen',
    },
    'eaakj3m3': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'm5iymkyr': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'u8na1z7w': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'q0lyli0d': {
      'en': 'Process situaction',
      'es': 'Situación del proceso',
      'pt': 'Situação do processo',
    },
    'z2yglpw9': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    'qkkgfo6c': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'p1rl94m1': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'bm5w0ytr': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    '93et3kgp': {
      'en': 'Color/Skin/Ethnicity ...',
      'es': 'Color/Piel/Etnicidad...',
      'pt': 'Cor/Pele/Etnia...',
    },
    'imlpdzfi': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'aw983q3g': {
      'en': 'Mother',
      'es': 'Madre',
      'pt': 'Mãe',
    },
    'n8fg5v4y': {
      'en': 'Enter in your website without \"https://\"...',
      'es': '',
      'pt': '',
    },
    '33s26mkh': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '00ygo4e8': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'g9r8g63w': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    '2pbnl68y': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'qjk0q0ej': {
      'en': 'Mother Situation ...',
      'es': 'Situación Madre...',
      'pt': 'Situação da Mãe...',
    },
    'orcfcnrt': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    '1zd5646m': {
      'en': 'Father',
      'es': 'Padre',
      'pt': 'Pai',
    },
    '1mb13ovl': {
      'en': 'Enter in your website without \"https://\"...',
      'es': '',
      'pt': '',
    },
    't28q4mrq': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '10z2t8bw': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'vhhcvtqn': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'pzsndih4': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    '6pb9t2yl': {
      'en': 'Father Situation ...',
      'es': 'Situación del padre...',
      'pt': 'Situação do Pai...',
    },
    'ck86kowm': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'u5o3gw5t': {
      'en': 'Brazilian Born',
      'es': 'Nacido en Brasil',
      'pt': 'Nascido no Brasil',
    },
    'my7pwr8a': {
      'en': 'Brazilian Naturalized',
      'es': 'Naturalizado brasileño',
      'pt': 'Brasileiro Naturalizado',
    },
    '77flygss': {
      'en': 'Foreigner',
      'es': 'Extranjero',
      'pt': 'Estrangeiro',
    },
    '2ky1fnhf': {
      'en': 'State ...',
      'es': 'Estado ...',
      'pt': 'Estado ...',
    },
    'y2uo2ocn': {
      'en': 'State...',
      'es': '',
      'pt': '',
    },
    '002xztjg': {
      'en': 'Municipality...',
      'es': 'Municipio...',
      'pt': 'Município...',
    },
    'wi0rpub7': {
      'en': 'Municipality...',
      'es': '',
      'pt': '',
    },
    'fcnebsya': {
      'en': 'District',
      'es': 'Distrito',
      'pt': 'Distrito',
    },
    '9ea2ilm3': {
      'en': 'District',
      'es': '',
      'pt': '',
    },
    'bdi531mz': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'd17rwpfj': {
      'en': 'Field is required',
      'es': '',
      'pt': '',
    },
    '8tyiltqw': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    'c0rcahpd': {
      'en': 'Field is required',
      'es': '',
      'pt': '',
    },
    'pmmtcff4': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    '4lx7xev8': {
      'en': 'Field is required',
      'es': '',
      'pt': '',
    },
    'vgf4amv7': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    '0e27dh7x': {
      'en': 'Field is required',
      'es': '',
      'pt': '',
    },
    '8t6014m0': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    'ejjbl7zh': {
      'en': 'Field is required',
      'es': '',
      'pt': '',
    },
    'zrx0bqep': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    'rny7smlx': {
      'en': 'Field is required',
      'es': '',
      'pt': '',
    },
    'h36igoyj': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    '9ks2rd0i': {
      'en': 'Field is required',
      'es': '',
      'pt': '',
    },
    'jov7ea33': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    'm29cw784': {
      'en': 'Historic',
      'es': 'Histórico',
      'pt': 'Histórico',
    },
    'lm32ioyv': {
      'en': 'Procedures',
      'es': 'Procedimientos',
      'pt': 'Procedimentos',
    },
    '0prey7w1': {
      'en': 'Processis',
      'es': 'Proceso',
      'pt': 'Processos',
    },
    '5c8skmyl': {
      'en': 'Faction',
      'es': 'Facción',
      'pt': 'Facção',
    },
    '8r89pwle': {
      'en': 'Crime Action',
      'es': 'Acción criminal',
      'pt': 'Ação Criminal',
    },
    'ikkmo8ny': {
      'en': 'Alert',
      'es': 'Alerta',
      'pt': 'Alerta',
    },
    '5f6ql4l7': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'imd8zz6k': {
      'en': 'Save Member',
      'es': 'Guardar miembro',
      'pt': 'Salvar Membro',
    },
    'a4oprhwn': {
      'en': 'Relationships',
      'es': 'Relaciones',
      'pt': 'Relacionamentos',
    },
    'tu5xy9mp': {
      'en': 'Groups',
      'es': 'Grupos',
      'pt': 'Grupos',
    },
  },
  // auth_mondaha
  {
    'vtarneam': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'pt': 'Login',
    },
    'gvtw0uxt': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos llenando el formulario a continuación.',
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
    },
    'jrgkv2ku': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    '0pn607g6': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'pqo642r7': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'pt': 'Entrar',
    },
    'eercobhk': {
      'en': 'Forgot Password',
      'es': 'Has olvidado tu contraseña',
      'pt': 'Esqueceu sua senha',
    },
    'j19triel': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'pt': 'Cadastrar-se',
    },
    'yossuiqm': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos llenando el formulario a continuación.',
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
    },
    '3rr9ncwq': {
      'en': 'Full  Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'ozzg0ojq': {
      'en': 'Full Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    '3y77uv1m': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'e-mail',
    },
    'eu5x1ad8': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'e-mail',
    },
    'gydy2izg': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    '3l1cths4': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
      'pt': 'Confirme sua senha',
    },
    '4lvs0hm4': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'pt': 'Criar uma conta',
    },
    '51xsvdsd': {
      'en': 'Home',
      'es': '',
      'pt': '',
    },
  },
  // faccao_create
  {
    'yf0nuy3o': {
      'en': 'Page Title',
      'es': '',
      'pt': '',
    },
    '7bec4wh0': {
      'en': 'Home',
      'es': '',
      'pt': '',
    },
  },
  // create_faccao
  {
    'rswm1tpi': {
      'en': 'Home',
      'es': '',
      'pt': '',
    },
  },
  // modal_success
  {
    'kred63vb': {
      'en': 'Send Contract Confirmation',
      'es': 'Enviar confirmación de contrato',
      'pt': 'Enviar confirmação do contrato',
    },
    'hywgg8eu': {
      'en': 'A new contract has been generated for:',
      'es': 'Se ha generado un nuevo contrato para:',
      'pt': 'Um novo contrato foi gerado para:',
    },
    'kmp2gbpy': {
      'en': 'Randy Alcorn',
      'es': 'Randy Alcorn',
      'pt': 'Randy Alcorn',
    },
    'a7nc1dt4': {
      'en': 'Head of Procurement',
      'es': 'Jefe de Adquisiciones',
      'pt': 'Chefe de Compras',
    },
    '2f2nxucv': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    'vcm4fijj': {
      'en': 'Next Steps',
      'es': 'Próximos pasos',
      'pt': 'Próximos passos',
    },
    '60n0fqw5': {
      'en':
          'Send the information below. And we will send an email with details to the customer and allow you to manage it in your dashboard.',
      'es':
          'Envíe la información a continuación y le enviaremos un correo electrónico con los detalles al cliente para que pueda administrarlos en su panel de control.',
      'pt':
          'Envie as informações abaixo. E nós enviaremos um e-mail com detalhes para o cliente e permitiremos que você gerencie isso no seu painel.',
    },
    'e408bhw6': {
      'en': 'Send Information',
      'es': 'Enviar información',
      'pt': 'Enviar informações',
    },
    'wo1onxhi': {
      'en': 'Never Mind',
      'es': 'No importa',
      'pt': 'Deixa para lá',
    },
  },
  // modal_message
  {
    'wa4vkne2': {
      'en': 'Congratulations!',
      'es': '¡Felicidades!',
      'pt': 'Parabéns!',
    },
    '3hf2ocig': {
      'en':
          'Now that a contract has been generated for this customer please contact them with the date you will send the signed agreement.',
      'es':
          'Ahora que se ha generado un contrato para este cliente, comuníquese con él para indicarle la fecha en que enviará el acuerdo firmado.',
      'pt':
          'Agora que um contrato foi gerado para este cliente, entre em contato com ele para informar a data em que você enviará o acordo assinado.',
    },
    'q0jvi1lp': {
      'en': 'Okay',
      'es': 'Bueno',
      'pt': 'OK',
    },
    'oo4y13nf': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
  },
  // modal_welcome
  {
    '00flvi93': {
      'en': 'Congratulations!',
      'es': '¡Felicidades!',
      'pt': 'Parabéns!',
    },
    'fmzceh74': {
      'en': 'A new contract has been generated for:',
      'es': 'Se ha generado un nuevo contrato para:',
      'pt': 'Um novo contrato foi gerado para:',
    },
    'g8q2u55w': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
  },
  // create_comment
  {
    'l2jlnhye': {
      'en': 'Create Note',
      'es': 'Crear nota',
      'pt': 'Criar nota',
    },
    'd6yfe8tj': {
      'en': 'Find members by searching below',
      'es': 'Encuentre miembros buscando a continuación',
      'pt': 'Encontre membros pesquisando abaixo',
    },
    'p3rj5ra0': {
      'en': 'Ricky Rodriguez',
      'es': 'Ricky Rodríguez',
      'pt': 'Ricky Rodríguez',
    },
    '9gf6o5ss': {
      'en': 'Enter your note here...',
      'es': 'Introduce tu nota aquí...',
      'pt': 'Insira sua nota aqui...',
    },
    'farrki57': {
      'en': 'Create Note',
      'es': 'Crear nota',
      'pt': 'Criar nota',
    },
  },
  // mobile_nav
  {
    'sy0pxvma': {
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    't5c3aiuy': {
      'en': 'My Team',
      'es': 'Mi equipo',
      'pt': 'Minha equipe',
    },
    'nkz3c58a': {
      'en': 'Customers',
      'es': 'Clientes',
      'pt': 'Clientes',
    },
    '1mkyyjwj': {
      'en': 'Contracts',
      'es': 'Contratos',
      'pt': 'Contratos',
    },
    'eg79coc6': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
  },
  // web_nav
  {
    'xai8ocja': {
      'en': 'Search',
      'es': 'Buscar',
      'pt': 'Procurar',
    },
    'yg07zi4c': {
      'en': 'Painel',
      'es': 'Pintura',
      'pt': 'Painel',
    },
    '9pjba90p': {
      'en': 'Factions',
      'es': 'Facciones',
      'pt': 'Facções',
    },
    'lbojdpxg': {
      'en': 'Members',
      'es': 'Miembros',
      'pt': 'Membros',
    },
    '5s0d776i': {
      'en': 'Messages',
      'es': 'Mensajes',
      'pt': 'Mensagens',
    },
    '01nu9cy0': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    'j1bmm3tm': {
      'en': 'Exit',
      'es': 'Salir',
      'pt': 'Sair',
    },
  },
  // command_palette
  {
    'jt9g5o8v': {
      'en': 'Search platform...',
      'es': 'Plataforma de búsqueda...',
      'pt': 'Plataforma de busca...',
    },
    'b3bd9y8w': {
      'en': 'Search',
      'es': 'Buscar',
      'pt': 'Procurar',
    },
    'pw6kvl1f': {
      'en': 'Quick Links',
      'es': 'Enlaces rápidos',
      'pt': 'Links rápidos',
    },
    'gckukxjv': {
      'en': 'Add Quiz',
      'es': 'Agregar cuestionario',
      'pt': 'Adicionar questionário',
    },
    'zsq8vj02': {
      'en': 'Find Customer',
      'es': 'Encontrar cliente',
      'pt': 'Encontrar cliente',
    },
    'iqxwv326': {
      'en': 'New Project',
      'es': 'Nuevo proyecto',
      'pt': 'Novo Projeto',
    },
    's60yfg0g': {
      'en': 'New Customer',
      'es': 'Nuevo cliente',
      'pt': 'Novo cliente',
    },
  },
  // edit_profile_photo
  {
    '6bnefz1c': {
      'en': 'Change Photo',
      'es': 'Cambiar foto',
      'pt': 'Alterar foto',
    },
    'yaxe7q8v': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'es':
          'Sube una nueva foto a continuación para cambiar tu avatar visto por otros.',
      'pt':
          'Carregue uma nova foto abaixo para alterar seu avatar visto por outros.',
    },
    're4x0sz7': {
      'en': 'Upload Image',
      'es': 'Subir imagen',
      'pt': 'Carregar imagem',
    },
    'sr54fsk6': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
  },
  // user_details_main
  {
    '918p9oc4': {
      'en': 'Customer Name',
      'es': 'Nombre del cliente',
      'pt': 'Nome do cliente',
    },
    'gs85nrf2': {
      'en': 'Randy Alcorn',
      'es': 'Randy Alcorn',
      'pt': 'Randy Alcorn',
    },
    '534e9fmv': {
      'en': 'High Profile',
      'es': 'Perfil alto',
      'pt': 'Alto Perfil',
    },
    'jindju5a': {
      'en': 'Title',
      'es': 'Título',
      'pt': 'Título',
    },
    'ouyjuyvf': {
      'en': 'Head of Procurement',
      'es': 'Jefe de Adquisiciones',
      'pt': 'Chefe de Compras',
    },
    '8viyn84n': {
      'en': 'Company',
      'es': 'Compañía',
      'pt': 'Empresa',
    },
    '7enxw4hk': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    'f6o8asym': {
      'en': 'Notes',
      'es': 'Notas',
      'pt': 'Notas',
    },
    'p41433bd': {
      'en': 'Alexandria Smith',
      'es': 'Alejandría Smith',
      'pt': 'Alexandria Smith',
    },
    'a3j3ejvp': {
      'en': '1m ago',
      'es': 'Hace 1m',
      'pt': '1m atrás',
    },
    'yqm004xu': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incidente ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comodo consequat.',
    },
    'v33uqxl2': {
      'en': '8',
      'es': '8',
      'pt': '8',
    },
    'cn1mi2rc': {
      'en': 'Notes',
      'es': 'Notas',
      'pt': 'Notas',
    },
    '01hso9ea': {
      'en': 'Randy Alcorn',
      'es': 'Randy Alcorn',
      'pt': 'Randy Alcorn',
    },
    'st5cr4ca': {
      'en':
          'I\'m not really sure about this section here aI think you should do soemthing cool!',
      'es':
          'No estoy muy seguro acerca de esta sección, ¡pero creo que deberías hacer algo interesante!',
      'pt':
          'Não tenho muita certeza sobre esta seção aqui, mas acho que você deveria fazer algo legal!',
    },
    '5h4d8i39': {
      'en': 'a min ago',
      'es': 'Hace un minuto',
      'pt': 'um minuto atrás',
    },
    '8rmeqctf': {
      'en': 'Generate Quote',
      'es': 'Generar cotización',
      'pt': 'Gerar Cotação',
    },
    'ougpd8b8': {
      'en': 'View Company',
      'es': 'Ver empresa',
      'pt': 'Ver empresa',
    },
  },
  // dropdown_user_edit
  {
    'vqk7im3j': {
      'en': 'Options',
      'es': 'Opciones',
      'pt': 'Opções',
    },
    'ufasy4ju': {
      'en': 'Edit',
      'es': 'Editar',
      'pt': 'Editar',
    },
    '6kc0o458': {
      'en': 'Assign',
      'es': 'Asignar',
      'pt': 'Atribuir',
    },
    'jqnyu0j6': {
      'en': 'Share',
      'es': 'Compartir',
      'pt': 'Compartilhar',
    },
    '9qkfsg85': {
      'en': 'Delete',
      'es': 'Borrar',
      'pt': 'Excluir',
    },
  },
  // project_details_alt
  {
    'zgyw4s95': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    'izuvtgws': {
      'en': 'Contracts for New Opportunities',
      'es': 'Contratos para nuevas oportunidades',
      'pt': 'Contratos para Novas Oportunidades',
    },
    'gamp8n19': {
      'en': 'Assigned To',
      'es': 'Asignado a',
      'pt': 'Atribuído a',
    },
    'obbewkqp': {
      'en': 'Randy Rudolph',
      'es': 'Randy Rudolph',
      'pt': 'Randy Rudolfo',
    },
    'ae8di6vv': {
      'en': 'name@domain.com',
      'es': 'nombre@dominio.com',
      'pt': 'nome@domínio.com',
    },
    'x6aorxwd': {
      'en': 'Next Action',
      'es': 'Próxima acción',
      'pt': 'Próxima ação',
    },
    '8sktau69': {
      'en': 'Tuesday, 10:00am',
      'es': 'Martes, 10:00 horas',
      'pt': 'Terça-feira, 10:00 da manhã',
    },
    'ck1j2u5s': {
      'en': 'In Progress',
      'es': 'En curso',
      'pt': 'Em andamento',
    },
    '3z7p2nt3': {
      'en': 'Activity',
      'es': 'Actividad',
      'pt': 'Atividade',
    },
    '4fs4d1ar': {
      'en': 'FlutterFlow CRM App:',
      'es': 'Aplicación FlutterFlow CRM:',
      'pt': 'Aplicativo FlutterFlow CRM:',
    },
    'n5ub587t': {
      'en': ' Begin Work',
      'es': 'Empezar a trabajar',
      'pt': 'Começar a trabalhar',
    },
    'y2yi7ro1': {
      'en': 'SOW Change Order',
      'es': 'Orden de cambio de SOW',
      'pt': 'Ordem de alteração do SOW',
    },
    'tyo3th3g': {
      'en': 'FlutterFlow CRM App',
      'es': 'Aplicación CRM FlutterFlow',
      'pt': 'Aplicativo FlutterFlow CRM',
    },
    't1shbmsx': {
      'en': 'Jul 8, at 4:31pm',
      'es': '8 de julio a las 16:31',
      'pt': '8 de julho, às 16h31',
    },
    'fjdirac9': {
      'en': 'Jeremiah Goldsten ',
      'es': 'Jeremías Goldsten',
      'pt': 'Jeremias Goldsten',
    },
    'g9h5nanl': {
      'en': 'accepted a request',
      'es': 'aceptó una solicitud',
      'pt': 'aceitou um pedido',
    },
    'ndvrf4a3': {
      'en': 'SOW Change Order',
      'es': 'Orden de cambio de SOW',
      'pt': 'Ordem de alteração do SOW',
    },
    'ruswj67g': {
      'en': 'FlutterFlow CRM App',
      'es': 'Aplicación CRM FlutterFlow',
      'pt': 'Aplicativo FlutterFlow CRM',
    },
    'cgdoty6v': {
      'en':
          '\"Notifications and reminders informing users about upcoming classes and training schedules will be sent to them via email, SMS or notifications within the application.\"',
      'es':
          '“Se enviarán notificaciones y recordatorios a los usuarios informando sobre las próximas clases y horarios de capacitación por correo electrónico, SMS o notificaciones dentro de la aplicación”.',
      'pt':
          '\"Notificações e lembretes informando os usuários sobre as próximas aulas e cronogramas de treinamento serão enviados a eles por e-mail, SMS ou notificações no aplicativo.\"',
    },
    'z3xab243': {
      'en': 'Jul 8, at 4:30pm',
      'es': '8 de julio, a las 16:30 horas',
      'pt': '8 de julho, às 16h30',
    },
    'a19jraal': {
      'en': 'Randy Rudolph ',
      'es': 'Randy Rudolph',
      'pt': 'Randy Rudolfo',
    },
    'b3k94yjl': {
      'en': 'sent a SOW Change Order for ',
      'es': 'envió una orden de cambio de SOW para',
      'pt': 'enviou uma Ordem de Alteração SOW para',
    },
    '9vhvqp6g': {
      'en': 'FlutterFlow CRM APP',
      'es': 'Aplicación CRM FlutterFlow',
      'pt': 'Aplicativo FlutterFlow CRM',
    },
    '7djk72um': {
      'en': 'SOW Change Order',
      'es': 'Orden de cambio de SOW',
      'pt': 'Ordem de alteração do SOW',
    },
    'qysyag2v': {
      'en': 'FlutterFlow CRM App',
      'es': 'Aplicación CRM FlutterFlow',
      'pt': 'Aplicativo FlutterFlow CRM',
    },
    'ur5udrbc': {
      'en':
          '\"Please review the updates to this document and get back with me.\"',
      'es':
          '\"Por favor revise las actualizaciones de este documento y contácteme nuevamente\".',
      'pt':
          '\"Por favor, revise as atualizações deste documento e entre em contato comigo.\"',
    },
    'm8scfp1r': {
      'en': 'Jul 8, at 2:20pm',
      'es': '8 de julio a las 14:20',
      'pt': '8 de julho, às 14h20',
    },
    'n251rti5': {
      'en': 'Contracts',
      'es': 'Contratos',
      'pt': 'Contratos',
    },
    'i8p8t5uw': {
      'en': 'Updates to Existing App',
      'es': 'Actualizaciones de la aplicación existente',
      'pt': 'Atualizações para o aplicativo existente',
    },
    'ks3nu6ra': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'es':
          '¡Detalles adicionales sobre este contrato y quién está trabajando en él en esta tarjeta!',
      'pt':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste card!',
    },
    'f3u7xqx4': {
      'en': 'Contract Details',
      'es': 'Detalles del contrato',
      'pt': 'Detalhes do contrato',
    },
    'r2ns8igs': {
      'en': '\$210,000',
      'es': '\$210.000',
      'pt': '\$ 210.000',
    },
    'y5zgyf1b': {
      'en': 'Mark as Complete',
      'es': 'Marcar como completo',
      'pt': 'Marcar como concluído',
    },
    'va0zdk6p': {
      'en': 'New FlutterFlow App',
      'es': 'Nueva aplicación FlutterFlow',
      'pt': 'Novo aplicativo FlutterFlow',
    },
    't24sfvud': {
      'en':
          'The user can browse through our extensive catalog of fitness classes by filtering based on class type, location, time, and instructor. Each class will have detailed descriptions of the program, instructors, timings, availability, and rates.',
      'es':
          'El usuario puede navegar por nuestro amplio catálogo de clases de fitness filtrando por tipo de clase, ubicación, horario e instructor. Cada clase tendrá descripciones detalladas del programa, instructores, horarios, disponibilidad y tarifas.',
      'pt':
          'O usuário pode navegar pelo nosso extenso catálogo de aulas de fitness filtrando com base no tipo de aula, local, horário e instrutor. Cada aula terá descrições detalhadas do programa, instrutores, horários, disponibilidade e taxas.',
    },
    'nzh0mhza': {
      'en': 'Contract Details',
      'es': 'Detalles del contrato',
      'pt': 'Detalhes do contrato',
    },
    'dmcqhebq': {
      'en': '\$67,000',
      'es': '\$67,000',
      'pt': '\$ 67.000',
    },
    'it7y6ia8': {
      'en': 'Mark as Complete',
      'es': 'Marcar como completo',
      'pt': 'Marcar como concluído',
    },
    'x8yfre0t': {
      'en': 'Project Details',
      'es': 'Detalles del proyecto',
      'pt': 'Detalhes do Projeto',
    },
  },
  // modal_invite_user
  {
    '2c6w1mkp': {
      'en': 'Edit User Details',
      'es': 'Editar detalles del usuario',
      'pt': 'Editar detalhes do usuário',
    },
    'nez3q1xc': {
      'en': 'Edit the details of the user below.',
      'es': 'Edite los detalles del usuario a continuación.',
      'pt': 'Edite os detalhes do usuário abaixo.',
    },
    'ea9pniln': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    'b99om96j': {
      'en': 'name@domainname.com',
      'es': 'nombre@nombrededominio.com',
      'pt': 'nome@nomedodomínio.com',
    },
    'ctfs7f6t': {
      'en': 'User Name',
      'es': 'Nombre de usuario',
      'pt': 'Nome de usuário',
    },
    'lz0vcvft': {
      'en': 'Bio',
      'es': 'Biografía',
      'pt': 'Biografia',
    },
    'os5lxui1': {
      'en': 'Admin',
      'es': 'Administración',
      'pt': 'Administrador',
    },
    'myproqvk': {
      'en': 'Manager',
      'es': 'Gerente',
      'pt': 'Gerente',
    },
    '84xcwa1n': {
      'en': 'Editor',
      'es': 'Editor',
      'pt': 'Editor',
    },
    'moe5j1zt': {
      'en': 'Viewer',
      'es': 'Espectador',
      'pt': 'Visualizador',
    },
    '5aaj4hsy': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'pt': 'Por favor selecione...',
    },
    '1eqtget4': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Pesquisar um item...',
    },
    'wl5lect6': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'j7urjwc8': {
      'en': 'Send Invites',
      'es': 'Enviar invitaciones',
      'pt': 'Enviar convites',
    },
  },
  // modal_enter_pin
  {
    'w63lhi44': {
      'en': 'Enter your PIN below',
      'es': 'Introduzca su PIN a continuación',
      'pt': 'Insira seu PIN abaixo',
    },
    'cesy0qbp': {
      'en': 'Your project has been created, now invite your team to continue.',
      'es': 'Tu proyecto ha sido creado, ahora invita a tu equipo a continuar.',
      'pt': 'Seu projeto foi criado, agora convide sua equipe para continuar.',
    },
    'yan3zik2': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'ia89k4mg': {
      'en': 'Verify Code',
      'es': 'Código de verificación',
      'pt': 'Verificar código',
    },
  },
  // modal_profile_details
  {
    'xt43uwzp': {
      'en': 'Profile Details',
      'es': 'Detalles del perfil',
      'pt': 'Detalhes do perfil',
    },
    '9ren6rbd': {
      'en': 'Below are your profile details',
      'es': 'A continuación se muestran los detalles de su perfil.',
      'pt': 'Abaixo estão os detalhes do seu perfil',
    },
    'izapnzh1': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    '17qiejhp': {
      'en': 'name@domainname.com',
      'es': 'nombre@nombrededominio.com',
      'pt': 'nome@nomedodomínio.com',
    },
    '5bzj3jf4': {
      'en': 'Manage your account',
      'es': 'Administra tu cuenta',
      'pt': 'Gerencie sua conta',
    },
    'x1e6b7y8': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'pt': 'Editar Perfil',
    },
    'nj27bwmg': {
      'en': 'Reset Password',
      'es': 'Restablecer contraseña',
      'pt': 'Redefinir senha',
    },
    'wbiu740t': {
      'en': 'Light Mode',
      'es': 'Modo claro',
      'pt': 'Modo de luz',
    },
    's5971e7s': {
      'en': 'Dark Mode',
      'es': 'Modo oscuro',
      'pt': 'Modo escuro',
    },
    'n3qmt0u6': {
      'en': 'Get in Touch',
      'es': 'Contáctenos',
      'pt': 'Entre em contato',
    },
    'xp11z0da': {
      'en': 'Help & Support',
      'es': 'Ayuda y soporte',
      'pt': 'Ajuda e Suporte',
    },
    'ufr3yhgk': {
      'en': 'Share [App Name]',
      'es': 'Compartir [Nombre de la aplicación]',
      'pt': 'Compartilhar [Nome do aplicativo]',
    },
    'riwckyhb': {
      'en': 'Close',
      'es': 'Cerca',
      'pt': 'Fechar',
    },
  },
  // modal_profile_edit
  {
    'qs8serr4': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'pt': 'Editar Perfil',
    },
    'bvy3fs93': {
      'en': 'Below are your profile details',
      'es': 'A continuación se muestran los detalles de su perfil.',
      'pt': 'Abaixo estão os detalhes do seu perfil',
    },
    'nx89dnuw': {
      'en': 'Change Photo',
      'es': 'Cambiar foto',
      'pt': 'Alterar foto',
    },
    '8gkrs3rw': {
      'en': 'Short Description',
      'es': 'Descripción breve',
      'pt': 'Descrição curta',
    },
    'r755roc4': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '5bl6mh8m': {
      'en': 'Admin',
      'es': 'Administración',
      'pt': 'Administrador',
    },
    'au9c3fpx': {
      'en': 'Admin',
      'es': 'Administración',
      'pt': 'Administrador',
    },
    '6qzm16cz': {
      'en': 'Manager',
      'es': 'Gerente',
      'pt': 'Gerente',
    },
    '6xjfeugp': {
      'en': 'Editor',
      'es': 'Editor',
      'pt': 'Editor',
    },
    '4ga29wxb': {
      'en': 'Viewer',
      'es': 'Espectador',
      'pt': 'Visualizador',
    },
    'r971lmjm': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'pt': 'Por favor selecione...',
    },
    '1c8v9uhp': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Pesquisar um item...',
    },
    'h1z1l2nl': {
      'en': 'Admin',
      'es': '',
      'pt': '',
    },
    'k5p34i5y': {
      'en': 'Admin',
      'es': '',
      'pt': '',
    },
    'lt6aqoc5': {
      'en': 'Manager',
      'es': '',
      'pt': '',
    },
    'sfqjnhm0': {
      'en': 'Editor',
      'es': '',
      'pt': '',
    },
    '9fbb5zid': {
      'en': 'Viewer',
      'es': '',
      'pt': '',
    },
    'yn2wm3dr': {
      'en': 'Please select...',
      'es': '',
      'pt': '',
    },
    'p740b6dm': {
      'en': 'Search for an item...',
      'es': '',
      'pt': '',
    },
    'p1lquhce': {
      'en': 'The email associated with this account is:',
      'es': 'El correo electrónico asociado a esta cuenta es:',
      'pt': 'O e-mail associado a esta conta é:',
    },
    'fyuvtufe': {
      'en': 'Created On:',
      'es': 'Creado el:',
      'pt': 'Criado em:',
    },
    'h4jwedag': {
      'en': 'Last Active:',
      'es': 'Última actividad:',
      'pt': 'Última atividade:',
    },
    '27w5o6gn': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'gz2xhplu': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
  },
  // modal_faccao_create
  {
    '5i7vrdwq': {
      'en': 'Add Faction',
      'es': 'Añadir facción',
      'pt': 'Adicionar Facção',
    },
    'ndzubj6c': {
      'en': 'Please enter the information below to add a project.',
      'es': '',
      'pt': '',
    },
    't6k190ot': {
      'en': 'Add Photo',
      'es': 'Añadir foto',
      'pt': 'Adicionar foto',
    },
    'eggnalls': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'jj979xf0': {
      'en': 'Project Name',
      'es': '',
      'pt': '',
    },
    'cjt13jln': {
      'en': 'Description',
      'es': 'Descripción',
      'pt': 'Descrição',
    },
    'kysprs44': {
      'en': 'Description here...',
      'es': '',
      'pt': '',
    },
    'popyb3h7': {
      'en': 'Create Faction',
      'es': 'Crear facción',
      'pt': 'Criar Facção',
    },
    'gxl81j2c': {
      'en': 'Please enter a project name...',
      'es': '',
      'pt': '',
    },
    'dqwsi4ob': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    '94ydbmto': {
      'en': 'Please enter a short description...',
      'es': '',
      'pt': '',
    },
    'm5sqni2q': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
  },
  // SideBarResponsiveRetract
  {
    'rpzqe9j2': {
      'en': 'My Account',
      'es': '',
      'pt': '',
    },
    'rjo8o241': {
      'en': 'Pedroh Olliveira',
      'es': '',
      'pt': '',
    },
    'a3kg2bz3': {
      'en': 'HomePage',
      'es': 'Página principal',
      'pt': 'Página inicial',
    },
    '8ffkp2rj': {
      'en': 'Clothes & Bags',
      'es': 'Ropa y bolsos',
      'pt': 'Roupas e Bolsas',
    },
    's2v4tn13': {
      'en': 'Films & Series',
      'es': 'Películas y series',
      'pt': 'Filmes e Séries',
    },
    'aqspchy4': {
      'en': 'Games & Consoles ',
      'es': 'Juegos y consolas',
      'pt': 'Jogos e Consoles',
    },
    'v7vib78n': {
      'en': 'SmartPhones ',
      'es': 'Teléfonos inteligentes',
      'pt': 'Smartphones',
    },
    'hnyilpwo': {
      'en': 'Computing',
      'es': 'Computación',
      'pt': 'Computação',
    },
    'hixdaie9': {
      'en': 'Books & Ebooks',
      'es': 'Libros y libros electrónicos',
      'pt': 'Livros e E-books',
    },
    'oxcf0vlj': {
      'en': 'Dark Mode',
      'es': '',
      'pt': '',
    },
    't6z1pz5k': {
      'en': 'Logout',
      'es': '',
      'pt': '',
    },
    'fivz15wv': {
      'en': 'Menu',
      'es': '',
      'pt': '',
    },
    'txjsby79': {
      'en': 'Home',
      'es': '',
      'pt': '',
    },
    '372mso7l': {
      'en': 'Search',
      'es': '',
      'pt': '',
    },
    'khvzziih': {
      'en': 'Favorites',
      'es': '',
      'pt': '',
    },
    '47srsg26': {
      'en': 'Settings',
      'es': '',
      'pt': '',
    },
    'x8mv7t3p': {
      'en': 'John Doe',
      'es': '',
      'pt': '',
    },
    'lrlltwzz': {
      'en': 'john.doe@example.com',
      'es': '',
      'pt': '',
    },
  },
  // edit_membro_photo
  {
    'tcswc723': {
      'en': 'Change Photo',
      'es': 'Cambiar foto',
      'pt': 'Alterar foto',
    },
    'dlf5b2vi': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'es':
          'Sube una nueva foto a continuación para cambiar tu avatar visto por otros.',
      'pt':
          'Carregue uma nova foto abaixo para alterar seu avatar visto por outros.',
    },
    '3zl6e5ln': {
      'en': 'Upload Image',
      'es': 'Subir imagen',
      'pt': 'Carregar imagem',
    },
    'odfnwlgx': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
  },
  // modal_faccao_edit
  {
    '6kpkufph': {
      'en': 'Edit Faction',
      'es': 'Editar facción',
      'pt': 'Editar Facção',
    },
    'j4r8cbw7': {
      'en': 'Please enter the information below to edita Faction.',
      'es': 'Ingrese la siguiente información para editar una facción.',
      'pt': 'Insira as informações abaixo para editar a Facção.',
    },
    '88bp0ssl': {
      'en': 'Add Photo',
      'es': 'Añadir foto',
      'pt': 'Adicionar foto',
    },
    'lw623n8z': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'vfvgol0e': {
      'en': 'Project Name',
      'es': '',
      'pt': '',
    },
    'kcxsvd9t': {
      'en': 'Description',
      'es': 'Descripción',
      'pt': 'Descrição',
    },
    '7qt3rcmx': {
      'en': 'Description here...',
      'es': '',
      'pt': '',
    },
    'ri4wg0yx': {
      'en': 'Create Faction',
      'es': 'Crear facción',
      'pt': 'Criar Facção',
    },
    'pavy0iyx': {
      'en': 'Please enter a project name...',
      'es': '',
      'pt': '',
    },
    'iwei9man': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
    '2lg69dy6': {
      'en': 'Please enter a short description...',
      'es': '',
      'pt': '',
    },
    'x1lc19e8': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'pt': '',
    },
  },
  // Miscellaneous
  {
    '0nwoj0kc': {
      'en': 'Email address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'upni203i': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'x5hsigqw': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    '9wy77t9v': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'woezzutp': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    '2bj20mi4': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'oztjr3ws': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'hc87g50d': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    '8ct6cr3a': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'e368pegn': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'yv65a6i5': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    '4r7kaahz': {
      'en': 'Calling',
      'es': 'Vocación',
      'pt': 'Chamando',
    },
    '9zk4wopm': {
      'en': 'Not Called',
      'es': 'No llamado',
      'pt': 'Não chamado',
    },
    'xn2fkope': {
      'en': 'Pending Review',
      'es': 'Pendiente de revisión',
      'pt': 'Revisão pendente',
    },
    'jv85czds': {
      'en': 'Closed',
      'es': 'Cerrado',
      'pt': 'Fechado',
    },
    'swt4x372': {
      'en': 'Completed',
      'es': 'Terminado',
      'pt': 'Concluído',
    },
    '5w6ne1dl': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'pt': 'Por favor selecione...',
    },
    'uhfmgei0': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Pesquisar um item...',
    },
    'lted0txl': {
      'en': 'All',
      'es': 'Todo',
      'pt': 'Todos',
    },
    'm6iqz668': {
      'en': 'Pending',
      'es': 'Pendiente',
      'pt': 'Pendente',
    },
    'x2pvxk5r': {
      'en': 'Completed',
      'es': 'Terminado',
      'pt': 'Concluído',
    },
    'txjoh349': {
      'en': 'Calling',
      'es': 'Vocación',
      'pt': 'Chamando',
    },
    'qube3xir': {
      'en': 'All',
      'es': 'Todo',
      'pt': 'Todos',
    },
    'mxalfkji': {
      'en': '50%',
      'es': '50%',
      'pt': '50%',
    },
    'z6o24u9q': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'poegde7v': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'v3vjad01': {
      'en': 'Turn on notifications',
      'es': 'Activar notificaciones',
      'pt': 'Ativar notificações',
    },
    'bqjgqich': {
      'en': 'Male',
      'es': 'Masculino',
      'pt': 'Macho',
    },
    'rzl2h9ar': {
      'en': 'Female',
      'es': 'Femenino',
      'pt': 'Fêmea',
    },
    'qtchqf19': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    '82a75t5n': {
      'en': 'Design',
      'es': 'Diseño',
      'pt': 'Projeto',
    },
    'w82xuklg': {
      'en': 'Marketing',
      'es': 'Marketing',
      'pt': 'Marketing',
    },
    '5uiyxwtk': {
      'en': 'Development',
      'es': 'Desarrollo',
      'pt': 'Desenvolvimento',
    },
    '3wjkerx7': {
      'en': 'Management',
      'es': 'Gestión',
      'pt': 'Gerenciamento',
    },
    'p6rgfj1v': {
      'en': 'Operations',
      'es': 'Operaciones',
      'pt': 'Operações',
    },
    'c8uww550': {
      'en': 'Customer Service',
      'es': 'Servicio al cliente',
      'pt': 'Atendimento ao Cliente',
    },
    '2rhm2suy': {
      'en': 'Design',
      'es': 'Diseño',
      'pt': 'Projeto',
    },
    'mf9eve3b': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'ameypp32': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    '89qgk51w': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'hxsxj681': {
      'en': '',
      'es':
          'Para tomar una fotografía o un vídeo, esta aplicación requiere permiso para acceder a la cámara.',
      'pt':
          'Para tirar uma foto ou gravar um vídeo, este aplicativo requer permissão para acessar a câmera.',
    },
    'e7agr7ys': {
      'en': '',
      'es':
          'Para cargar datos, esta aplicación requiere permiso para acceder a la biblioteca de fotos.',
      'pt':
          'Para carregar dados, este aplicativo requer permissão para acessar a biblioteca de fotos.',
    },
    '65e2tfs2': {
      'en': 'Error:[error]',
      'es': 'Error:[error]',
      'pt': 'Erro:[erro]',
    },
    'ddazihx4': {
      'en': 'Password reser email sent!',
      'es': '¡Correo electrónico de reserva de contraseña enviado!',
      'pt': 'E-mail de reserva de senha enviado!',
    },
    'db03cpjj': {
      'en': 'Email required!',
      'es': '¡Se requiere correo electrónico!',
      'pt': 'E-mail obrigatório!',
    },
    'fdb9078p': {
      'en': 'Phone Number required and has to start with +.',
      'es': 'Se requiere número de teléfono y debe comenzar con +.',
      'pt': 'Número de telefone obrigatório e deve começar com +.',
    },
    '80ouzj9q': {
      'en': 'Passwords don\'t match',
      'es': 'Las contraseñas no coinciden',
      'pt': 'As senhas não correspondem',
    },
    '6rzhptp9': {
      'en': 'Enter SMS verification code',
      'es': 'Introduzca el código de verificación por SMS',
      'pt': 'Insira o código de verificação SMS',
    },
    'ce8c4ty0': {
      'en':
          'Too long since most recent sign in. Sign in again befores deleting your email.',
      'es':
          'Ha pasado demasiado tiempo desde el último inicio de sesión. Inicie sesión nuevamente antes de eliminar su correo electrónico.',
      'pt':
          'Muito tempo desde o último login. Entre novamente antes de excluir seu e-mail.',
    },
    'fv6sk1t1': {
      'en':
          'Too long since most recent sign in. Sign in again befores updating your email.',
      'es':
          'Ha pasado demasiado tiempo desde el último inicio de sesión. Inicie sesión nuevamente antes de actualizar su correo electrónico.',
      'pt':
          'Muito tempo desde o último login. Entre novamente antes de atualizar seu e-mail.',
    },
    'ics1ahz4': {
      'en': 'Email change confirmation email sent!',
      'es':
          '¡Correo electrónico de confirmación de cambio de correo electrónico enviado!',
      'pt': 'E-mail de confirmação de alteração de e-mail enviado!',
    },
    'a454xjq7': {
      'en': 'Email already in use by another account',
      'es': 'Correo electrónico ya en uso por otra cuenta',
      'pt': 'E-mail já em uso por outra conta',
    },
    'ds8leobm': {
      'en':
          'The supplied auth credential is incorrect, malformed or has expired',
      'es':
          'La credencial de autenticación proporcionada es incorrecta, está mal formada o ha expirado',
      'pt':
          'A credencial de autenticação fornecida está incorreta, malformada ou expirou',
    },
    'kcvqa08x': {
      'en': 'Invalid file format',
      'es': 'Formato de archivo no válido',
      'pt': 'Formato de arquivo inválido',
    },
    'dqrzd6sq': {
      'en': 'Uploading file...',
      'es': 'Subiendo archivo...',
      'pt': 'Carregando arquivo...',
    },
    'dpqtohyf': {
      'en': 'Success!',
      'es': '¡Éxito!',
      'pt': 'Sucesso!',
    },
    'v01vf71s': {
      'en': 'Failed to upload data',
      'es': 'No se pudieron cargar los datos',
      'pt': 'Falha ao carregar dados',
    },
    'gcv6def1': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'um9es99m': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'o4enbz4j': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '8z4tvfh7': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '2ybzla8x': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'd1wdf5i1': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'f4rdu9en': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '2py80kgi': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'p6lsrh2a': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ne8cclp9': {
      'en': '',
      'es': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
