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
  // forgot_password
  {
    '3hcuc8v6': {
      'en': 'Forgot Password',
      'es': 'Has olvidado tu contraseña',
      'pt': 'Esqueceu sua senha',
    },
    'sjjd1jb9': {
      'en':
          'Don\'t remember your password? Enter the email associated with your account below and we will send you a new link.',
      'es':
          '¿No recuerdas tu contraseña? Introduce el email asociado a tu cuenta a continuación y te enviaremos un nuevo enlace.',
      'pt':
          'Não lembra da sua senha? Insira o e-mail associado à sua conta abaixo e nós lhe enviaremos um novo link.',
    },
    'tzm5opaa': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'uvsotzng': {
      'en': 'Please enter a valid email...',
      'es': 'Por favor ingrese un correo electrónico válido...',
      'pt': 'Insira um e-mail válido...',
    },
    '3sdzjivm': {
      'en': 'Send Reset Link',
      'es': 'Enviar enlace de restablecimiento',
      'pt': 'Enviar link de redefinição',
    },
    '8p6xd6cl': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
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
      'en': 'NewMem',
      'es': 'Nuevos clientes',
      'pt': 'Novos clientes',
    },
    'd0r4w3cc': {
      'en': '24',
      'es': '24',
      'pt': '24',
    },
    '8vot9bzj': {
      'en': 'New Contracts',
      'es': 'Nuevos contratos',
      'pt': 'Novos Contratos',
    },
    '463rfkem': {
      'en': '3,200',
      'es': '3.200',
      'pt': '3.200',
    },
    'saxskj92': {
      'en': 'Expired Contracts',
      'es': 'Contratos vencidos',
      'pt': 'Contratos expirados',
    },
    '2wlrr5lg': {
      'en': '4300',
      'es': '4300',
      'pt': '4300',
    },
    'kphqz3hi': {
      'en': 'Projects',
      'es': 'Proyectos',
      'pt': 'Projetos',
    },
    'xlzf8qqx': {
      'en': 'UI Design Team',
      'es': 'Equipo de diseño de UI',
      'pt': 'Equipe de design de interface do usuário',
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
  // main_membros_list
  {
    'n99lg1qh': {
      'en': 'Members',
      'es': 'Miembros',
      'pt': 'Membros',
    },
    'qf1tn1nr': {
      'en': 'Add Member',
      'es': 'Agregar Miembro',
      'pt': 'Adicionar Membro',
    },
    'lvnskphp': {
      'en': 'All',
      'es': 'Todo',
      'pt': 'Todos',
    },
    'haes0r2l': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    '5rmzx51f': {
      'en': 'Title',
      'es': 'Título',
      'pt': 'Título',
    },
    'z0huz1sz': {
      'en': 'Company',
      'es': 'Compañía',
      'pt': 'Empresa',
    },
    '04vrv62j': {
      'en': 'Company',
      'es': 'Compañía',
      'pt': 'Empresa',
    },
    '4zc3d2m8': {
      'en': 'Status',
      'es': 'Estado',
      'pt': 'Status',
    },
    '2su72evi': {
      'en': 'Randy Alcorn',
      'es': 'Randy Alcorn',
      'pt': 'Randy Alcorn',
    },
    '0zsa579c': {
      'en': 'Head of Procurement',
      'es': 'Jefe de Adquisiciones',
      'pt': 'Chefe de Compras',
    },
    'w3raz1jn': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    'z4lsfg10': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    '1a4k6aks': {
      'en': 'New',
      'es': 'Nuevo',
      'pt': 'Novo',
    },
    'o16mxq71': {
      'en': 'James Wiseman',
      'es': 'James Wiseman',
      'pt': 'James Sábio',
    },
    'fpsevdzf': {
      'en': 'Account Manager',
      'es': 'Gerente de cuentas',
      'pt': 'Gerente de contas',
    },
    'h14ifi7k': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    'uqhvoiij': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    'tm49glmo': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'kq55jaoh': {
      'en': 'Ignacious Rodriguez',
      'es': 'Ignacio Rodríguez',
      'pt': 'Ignacious Rodriguez',
    },
    '4h0nuu5i': {
      'en': 'Sales Manager',
      'es': 'Gerente de ventas',
      'pt': 'Gerente de vendas',
    },
    'lzbcvfiy': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    '6fndz1gh': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    '3fvjfyjw': {
      'en': 'New',
      'es': 'Nuevo',
      'pt': 'Novo',
    },
    '2pc5v8a4': {
      'en': 'Elena Williams',
      'es': 'Elena Williams',
      'pt': 'Elena Williams',
    },
    'ceml7ft3': {
      'en': 'Head of Product & Innovation',
      'es': 'Jefe de Producto e Innovación',
      'pt': 'Chefe de Produto e Inovação',
    },
    '2e1z6z1m': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'em2rmo6j': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'mg1pcn8r': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'insuv9nt': {
      'en': 'Greg Brown',
      'es': 'Greg Brown',
      'pt': 'Greg Brown',
    },
    '6dyu1l9r': {
      'en': 'Account Manager',
      'es': 'Gerente de cuentas',
      'pt': 'Gerente de contas',
    },
    '4sq50suq': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'xf3hji30': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'ucyrtltt': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'zafe89jw': {
      'en': 'June Williamson',
      'es': 'Junio Williamson',
      'pt': 'Junho Williamson',
    },
    'fp7rggxx': {
      'en': 'Sr. Account Manager',
      'es': 'Gerente de Cuentas Senior',
      'pt': 'Gerente de contas sênior',
    },
    'mn5dgpf3': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    'r1qj36m1': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    'orrd5fa4': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'eim454pd': {
      'en': 'June Williamson',
      'es': 'Junio Williamson',
      'pt': 'Junho Williamson',
    },
    'a0bkf424': {
      'en': 'Sr. Account Manager',
      'es': 'Gerente de Cuentas Senior',
      'pt': 'Gerente de contas sênior',
    },
    'u9ywidy9': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    'v8935cf8': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    'yoeqeivb': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'qh2ock0d': {
      'en': 'New Calls',
      'es': 'Nuevas llamadas',
      'pt': 'Novas Chamadas',
    },
    'g7av4tqg': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'xffgkt7t': {
      'en': 'Title',
      'es': 'Título',
      'pt': 'Título',
    },
    'vxppadlg': {
      'en': 'Company',
      'es': 'Compañía',
      'pt': 'Empresa',
    },
    'p4xvpvgf': {
      'en': 'Company',
      'es': 'Compañía',
      'pt': 'Empresa',
    },
    'm8o2psfk': {
      'en': 'Status',
      'es': 'Estado',
      'pt': 'Status',
    },
    '4sgc04rh': {
      'en': 'Randy Alcorn',
      'es': 'Randy Alcorn',
      'pt': 'Randy Alcorn',
    },
    'np65t22e': {
      'en': 'Head of Procurement',
      'es': 'Jefe de Adquisiciones',
      'pt': 'Chefe de Compras',
    },
    'qpkca13g': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    '3tctrgig': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    'fyrppt8y': {
      'en': 'New',
      'es': 'Nuevo',
      'pt': 'Novo',
    },
    '2bby4175': {
      'en': 'Ignacious Rodriguez',
      'es': 'Ignacio Rodríguez',
      'pt': 'Ignacious Rodriguez',
    },
    '4wembrbp': {
      'en': 'Sales Manager',
      'es': 'Gerente de ventas',
      'pt': 'Gerente de vendas',
    },
    'p2txrfk0': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    '9re9difn': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'ym5de2ey': {
      'en': 'New',
      'es': 'Nuevo',
      'pt': 'Novo',
    },
    's7xebw09': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'dhrxhg83': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    '4494sdp5': {
      'en': 'Title',
      'es': 'Título',
      'pt': 'Título',
    },
    't6erxmdi': {
      'en': 'Company',
      'es': 'Compañía',
      'pt': 'Empresa',
    },
    'a2sv9lv3': {
      'en': 'Company',
      'es': 'Compañía',
      'pt': 'Empresa',
    },
    'vc59gy2z': {
      'en': 'Status',
      'es': 'Estado',
      'pt': 'Status',
    },
    'v5iv0hjb': {
      'en': 'James Wiseman',
      'es': 'James Wiseman',
      'pt': 'James Sábio',
    },
    '7o5zylri': {
      'en': 'Account Manager',
      'es': 'Gerente de cuentas',
      'pt': 'Gerente de contas',
    },
    'rvw10tmv': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    's4uvjsw7': {
      'en': 'ACME Co.',
      'es': 'Compañía ACME',
      'pt': 'Empresa ACME',
    },
    'w83ub0yw': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    '4yjpkz0n': {
      'en': 'Elena Williams',
      'es': 'Elena Williams',
      'pt': 'Elena Williams',
    },
    'l4xjfp78': {
      'en': 'Head of Product & Innovation',
      'es': 'Jefe de Producto e Innovación',
      'pt': 'Chefe de Produto e Inovação',
    },
    'anfz0t9o': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'cz0219wa': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'uf38k81m': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'evh01zxl': {
      'en': 'Greg Brown',
      'es': 'Greg Brown',
      'pt': 'Greg Brown',
    },
    '6h3e5pnw': {
      'en': 'Account Manager',
      'es': 'Gerente de cuentas',
      'pt': 'Gerente de contas',
    },
    '1n18qv7i': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'yca9mthr': {
      'en': 'Robin HQ',
      'es': 'Cuartel general de Robin',
      'pt': 'Quartel General de Robin',
    },
    'o17d2quf': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'd0z8df2i': {
      'en': 'June Williamson',
      'es': 'Junio Williamson',
      'pt': 'Junho Williamson',
    },
    '14oiknrw': {
      'en': 'Sr. Account Manager',
      'es': 'Gerente de Cuentas Senior',
      'pt': 'Gerente de contas sênior',
    },
    'y3upyxdi': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    'ymf5axsy': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    '60qa1l5k': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'mootyc3i': {
      'en': 'June Williamson',
      'es': 'Junio Williamson',
      'pt': 'Junho Williamson',
    },
    'gun8gz5b': {
      'en': 'Sr. Account Manager',
      'es': 'Gerente de Cuentas Senior',
      'pt': 'Gerente de contas sênior',
    },
    'sbiuhbrx': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    'q28hkdoo': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    '4qxa4kwr': {
      'en': 'Contacted',
      'es': 'Contactado',
      'pt': 'Contatado',
    },
    'fcyoodds': {
      'en': 'Customers',
      'es': 'Clientes',
      'pt': 'Clientes',
    },
    '3ourv2w9': {
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
    't967eizl': {
      'en': 'Projects',
      'es': 'Proyectos',
      'pt': 'Projetos',
    },
    '2a7y5e2w': {
      'en': 'Design Team Docs',
      'es': 'Documentos del equipo de diseño',
      'pt': 'Documentação da equipe de design',
    },
    'dlt46loo': {
      'en': 'Contracts',
      'es': 'Contratos',
      'pt': 'Contratos',
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
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    'sen48p1q': {
      'en': 'Client Acquisition for Q3',
      'es': 'Adquisición de clientes para el tercer trimestre',
      'pt': 'Aquisição de clientes para o terceiro trimestre',
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
  // user_details
  {
    '9t913b44': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // edit_profile
  {
    'mk8nnw94': {
      'en': 'Change Photo',
      'es': 'Cambiar foto',
      'pt': 'Alterar foto',
    },
    '2rqce1pj': {
      'en': 'The email associated with this account is:',
      'es': 'El correo electrónico asociado a esta cuenta es:',
      'pt': 'O e-mail associado a esta conta é:',
    },
    'y680yxcf': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'dmbxoaz6': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    '2wl1lv9o': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'a3qnnd4d': {
      'en': 'Select one Agency ',
      'es': 'Seleccione una Agencia',
      'pt': 'Selecione uma agência',
    },
    'mg5okl99': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    '4no7ue4a': {
      'en': 'Your Name',
      'es': 'Su nombre',
      'pt': 'Seu nome',
    },
    'bj7cfa5q': {
      'en': 'Your Name',
      'es': '',
      'pt': '',
    },
    'rr8ksatz': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    '20uycztj': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'pt': 'Editar Perfil',
    },
  },
  // project_details_health_ai
  {
    'mxf4vrjw': {
      'en': 'HealthAi',
      'es': 'SaludAi',
      'pt': 'SaúdeAi',
    },
    'wsgonkz2': {
      'en': 'Client Acquisition for Q3',
      'es': 'Adquisición de clientes para el tercer trimestre',
      'pt': 'Aquisição de clientes para o terceiro trimestre',
    },
    'ynyuwhqo': {
      'en': 'Next Action',
      'es': 'Próxima acción',
      'pt': 'Próxima ação',
    },
    'zk7z07v0': {
      'en': 'Tuesday, 10:00am',
      'es': 'Martes, 10:00 horas',
      'pt': 'Terça-feira, 10:00 da manhã',
    },
    'xmahzs1v': {
      'en': 'In Progress',
      'es': 'En curso',
      'pt': 'Em andamento',
    },
    'ry6jvd0g': {
      'en': 'Contract Details',
      'es': 'Detalles del contrato',
      'pt': 'Detalhes do contrato',
    },
    'hu32scl5': {
      'en': '\$125,000',
      'es': '\$125,000',
      'pt': '\$ 125.000',
    },
    'sfu6o269': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'es':
          '¡Detalles adicionales sobre este contrato y quién está trabajando en él en esta tarjeta!',
      'pt':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste card!',
    },
    '5sv9a4ka': {
      'en': 'Mark as Complete',
      'es': 'Marcar como completo',
      'pt': 'Marcar como concluído',
    },
    'rrgcwkj1': {
      'en': 'Contract Details',
      'es': 'Detalles del contrato',
      'pt': 'Detalhes do contrato',
    },
    '8bwk4oui': {
      'en': '\$67,000',
      'es': '\$67,000',
      'pt': '\$ 67.000',
    },
    'p2hoxaq9': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'es':
          '¡Detalles adicionales sobre este contrato y quién está trabajando en él en esta tarjeta!',
      'pt':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste card!',
    },
    'ww95wm3k': {
      'en': 'Mark as Complete',
      'es': 'Marcar como completo',
      'pt': 'Marcar como concluído',
    },
    '54l7ivhw': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // project_details
  {
    'c0s3jdsy': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // search_page
  {
    'ao46xsuv': {
      'en': 'Add Members',
      'es': 'Agregar miembros',
      'pt': 'Adicionar membros',
    },
    'g8rv8zhr': {
      'en': 'Search members...',
      'es': 'Buscar miembros...',
      'pt': 'Pesquisar membros...',
    },
    'm4ytuko9': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'op7ngmsb': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    '5x8u4g0u': {
      'en': 'All Members',
      'es': 'Todos los miembros',
      'pt': 'Todos os membros',
    },
    '4cek35uo': {
      'en': 'View',
      'es': 'Vista',
      'pt': 'Visualizar',
    },
    'mvx2sb5k': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
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
  // auth_login
  {
    'tzm2gn5e': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'pt': 'Entrar',
    },
    'ssmdesvy': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos rellenando el formulario a continuación.',
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
    },
    'bqvjzpge': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'sltzyh98': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'ufqw0h0a': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'pt': 'Entrar',
    },
    '8l7e2xqq': {
      'en': 'Forgot Password',
      'es': 'Has olvidado tu contraseña',
      'pt': 'Esqueceu sua senha',
    },
    'eitkx3bc': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'pt': 'Cadastrar-se',
    },
    '7w1voiyg': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos llenando el formulario a continuación.',
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
    },
    'x9n98tl7': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    '0elh6q8n': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'za9rr007': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'h4i4bwp7': {
      'en': 'Select...',
      'es': 'Seleccionar...',
      'pt': 'Selecione...',
    },
    'ak53f3yr': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'rxvn7x0x': {
      'en': 'Full name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'nyrv8tm0': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'xi8bszk0': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'ffom99vq': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
      'pt': 'Confirme sua senha',
    },
    '22cyhqvr': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'pt': 'Criar uma conta',
    },
    'rnyra7iu': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // add_membros
  {
    'luy0t7h2': {
      'en': 'Add Members',
      'es': 'Agregar miembros',
      'pt': 'Adicionar membros',
    },
    'ocp718jh': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    'x8axg494': {
      'en': 'Create Company Profile',
      'es': 'Crear perfil de empresa',
      'pt': 'Criar Perfil da Empresa',
    },
    'swf1sew5': {
      'en':
          'Upload images about your company and fill out the information below.',
      'es':
          'Sube imágenes sobre tu empresa y completa la información a continuación.',
      'pt':
          'Carregue imagens sobre sua empresa e preencha as informações abaixo.',
    },
    'kovjx5qk': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'zftdg7ng': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'bjyl96v1': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    '812357rd': {
      'en': 'Select...',
      'es': 'Seleccionar...',
      'pt': 'Selecione...',
    },
    'rel4cqhn': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    '5fqmijio': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    '1ddlajdn': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'gdhq0dq6': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'ohs1bq4j': {
      'en': 'Select...',
      'es': 'Seleccionar...',
      'pt': 'Selecione...',
    },
    'm99af805': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    '4zstb8xf': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'iy19h9i4': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'by8u8kmd': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    '2rro117l': {
      'en': 'Select...',
      'es': 'Seleccionar...',
      'pt': 'Selecione...',
    },
    'ucwqr3c3': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    'm88zhnhm': {
      'en': 'Full Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    '3x41wc8c': {
      'en': 'Website',
      'es': '',
      'pt': '',
    },
    'ak3nmiz7': {
      'en': 'Enter in your website without \"https://\"...',
      'es': '',
      'pt': '',
    },
    '6zw9yxni': {
      'en': 'Company City',
      'es': '',
      'pt': '',
    },
    'gfs5j60m': {
      'en': 'Company City',
      'es': '',
      'pt': '',
    },
    '0nignr1c': {
      'en': 'Company City',
      'es': '',
      'pt': '',
    },
    '3jjwznx5': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'lwkne6wn': {
      'en': 'Create Company',
      'es': 'Crear empresa',
      'pt': 'Criar empresa',
    },
    'gti2knng': {
      'en': 'History',
      'es': 'Historia',
      'pt': 'História',
    },
    'o6n478zo': {
      'en': 'Procedures',
      'es': 'Procedimientos',
      'pt': 'Procedimentos',
    },
    'bg2b0nj3': {
      'en': 'Faction',
      'es': 'Facción',
      'pt': 'Facção',
    },
    'c7ica2jp': {
      'en': 'Crime Action',
      'es': 'Acción criminal',
      'pt': 'Ação Criminal',
    },
    'be0xptn9': {
      'en': 'Alert',
      'es': 'Alerta',
      'pt': 'Alerta',
    },
    '5lwbh8mj': {
      'en': 'Relations',
      'es': 'Relaciones',
      'pt': 'Relações',
    },
    '1bduu4ux': {
      'en': 'Groups',
      'es': 'Grupos',
      'pt': 'Grupos',
    },
    'j0nfxam4': {
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
  // modal_Welcome
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
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    'lbojdpxg': {
      'en': 'Factions',
      'es': 'Facciones',
      'pt': 'Facções',
    },
    '9pjba90p': {
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
  // modal_create_faccao
  {
    '5tdm3cpv': {
      'en': 'Create Project',
      'es': 'Crear proyecto',
      'pt': 'Criar Projeto',
    },
    'vlg015ed': {
      'en': 'Please enter the information below to add a project.',
      'es': 'Ingrese la información a continuación para agregar un proyecto.',
      'pt': 'Insira as informações abaixo para adicionar um projeto.',
    },
    'dqo5yhdb': {
      'en': 'Add Photo',
      'es': 'Añadir foto',
      'pt': 'Adicionar foto',
    },
    '426hn69e': {
      'en': 'Project Name',
      'es': 'Nombre del proyecto',
      'pt': 'Nome do Projeto',
    },
    'uqziqhmg': {
      'en': 'Description here...',
      'es': 'Descripción aquí...',
      'pt': 'Descrição aqui...',
    },
    '2g54ptaj': {
      'en': 'Create Project',
      'es': 'Crear proyecto',
      'pt': 'Criar Projeto',
    },
    '4spmowtt': {
      'en': 'Please enter a project name...',
      'es': 'Por favor, introduzca un nombre de proyecto...',
      'pt': 'Por favor, insira um nome de projeto...',
    },
    '32kj9709': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
      'pt': 'Selecione uma opção no menu suspenso',
    },
    'wfu6up0n': {
      'en': 'Please enter a short description...',
      'es': 'Por favor, introduzca una breve descripción...',
      'pt': 'Insira uma breve descrição...',
    },
    'qt5dp4ez': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable.',
      'pt': 'Selecione uma opção no menu suspenso',
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
  // modal_create_membro
  {
    'bt6jsbq9': {
      'en': 'Perfil',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    '5t2bls76': {
      'en': 'Create Company Profile',
      'es': 'Crear perfil de empresa',
      'pt': 'Criar Perfil da Empresa',
    },
    '7nsssfbj': {
      'en':
          'Upload images about your company and fill out the information below.',
      'es':
          'Sube imágenes sobre tu empresa y completa la información a continuación.',
      'pt':
          'Carregue imagens sobre sua empresa e preencha as informações abaixo.',
    },
    'a2s25fps': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'gbz3v7ur': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'v14qjfqu': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'j5big6km': {
      'en': 'Select...',
      'es': '',
      'pt': '',
    },
    'kaifbwcf': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    '8n9qfdds': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'epq3ap40': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'hsunuxhj': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    '9dtosz1e': {
      'en': 'Select...',
      'es': '',
      'pt': '',
    },
    'tmw2dvqn': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    'a5lnd2aw': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'jqx2u1mz': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'c6daz893': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    'w2k44c9e': {
      'en': 'Select...',
      'es': '',
      'pt': '',
    },
    '8a0dmgjl': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    'nfxjbhv0': {
      'en': 'Company Name',
      'es': '',
      'pt': '',
    },
    'btop4x1f': {
      'en': 'Company City',
      'es': '',
      'pt': '',
    },
    '44rj6s2m': {
      'en': 'Website',
      'es': '',
      'pt': '',
    },
    'fctbm3d6': {
      'en': 'Enter in your website without \"https://\"...',
      'es': '',
      'pt': '',
    },
    'eov80o61': {
      'en': 'Cancel',
      'es': '',
      'pt': '',
    },
    '89edh2j5': {
      'en': 'Create Company',
      'es': '',
      'pt': '',
    },
    'mzhif3it': {
      'en': 'Tab 2',
      'es': 'Pestaña 2',
      'pt': 'Aba 2',
    },
    '79jiynqs': {
      'en': 'Tab 3',
      'es': 'Pestaña 3',
      'pt': 'Aba 3',
    },
    'hv1m2z3k': {
      'en': 'Relations',
      'es': '',
      'pt': '',
    },
    'cg2bu50g': {
      'en': 'Groups',
      'es': '',
      'pt': '',
    },
  },
  // modal_inviteUser
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
    '7f4dqnt8': {
      'en': 'Admin',
      'es': 'Administración',
      'pt': 'Administrador',
    },
    'tzetnwcj': {
      'en': 'Manager',
      'es': 'Gerente',
      'pt': 'Gerente',
    },
    'r8pq5puc': {
      'en': 'Editor',
      'es': 'Editor',
      'pt': 'Editor',
    },
    'by2vigrp': {
      'en': 'Viewer',
      'es': 'Espectador',
      'pt': 'Visualizador',
    },
    'qyv4qkb0': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'pt': 'Por favor selecione...',
    },
    'o72x1n1t': {
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
  // modal_enterPin
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
  // modal_share_project
  {
    '4tx2ru39': {
      'en': 'Share your project',
      'es': 'Comparte tu proyecto',
      'pt': 'Compartilhe seu projeto',
    },
    'u6t74zsp': {
      'en': 'Your project has been created, now invite your team to continue.',
      'es': 'Tu proyecto ha sido creado, ahora invita a tu equipo a continuar.',
      'pt': 'Seu projeto foi criado, agora convide sua equipe para continuar.',
    },
    'a5x5r8z2': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    '0hlgten0': {
      'en': 'name@domainname.com',
      'es': 'nombre@nombrededominio.com',
      'pt': 'nome@nomedodomínio.com',
    },
    'wfv5m0m2': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    'z4rocyop': {
      'en': 'name@domainname.com',
      'es': 'nombre@nombrededominio.com',
      'pt': 'nome@nomedodomínio.com',
    },
    'f9bgnoni': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    'bthcky9u': {
      'en': 'name@domainname.com',
      'es': 'nombre@nombrededominio.com',
      'pt': 'nome@nomedodomínio.com',
    },
    'pgq1r8ah': {
      'en': 'Add User',
      'es': 'Agregar usuario',
      'pt': 'Adicionar usuário',
    },
    'x8i2mu80': {
      'en': 'Project Link',
      'es': 'Enlace del proyecto',
      'pt': 'Link do Projeto',
    },
    'jzdr6k9x': {
      'en': 'https://project.flutterflow.io/?quizRef=T7c8mXvkYFFCWjqyhxKe',
      'es': 'https://project.flutterflow.io/?quizRef=T7c8mXvkYFFCWjqyhxKe',
      'pt': 'https://project.flutterflow.io/?quizRef=T7c8mXvkYFFCWjqyhxKe',
    },
    'jz45d8an': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'ubopypxm': {
      'en': 'Send Invites',
      'es': 'Enviar invitaciones',
      'pt': 'Enviar convites',
    },
  },
  // modal_add_users_list
  {
    'u8eoldhj': {
      'en': 'Invite your Team',
      'es': 'Invita a tu equipo',
      'pt': 'Convide sua equipe',
    },
    'z2uzep65': {
      'en': 'Your project has been created, now invite your team to continue.',
      'es': 'Tu proyecto ha sido creado, ahora invita a tu equipo a continuar.',
      'pt': 'Seu projeto foi criado, agora convide sua equipe para continuar.',
    },
    'dlpajrga': {
      'en': 'Email address...',
      'es': 'Dirección de correo electrónico...',
      'pt': 'Endereço de email...',
    },
    'timt0a9e': {
      'en': 'email@domainname.com',
      'es': 'correo electrónico@nombrededominio.com',
      'pt': 'email@nomedodomínio.com',
    },
    'haz2ntfz': {
      'en': 'email@domainname.com',
      'es': 'correo electrónico@nombrededominio.com',
      'pt': 'email@nomedodomínio.com',
    },
    'd9dnbwow': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'wezgwiac': {
      'en': 'Send Invites',
      'es': 'Enviar invitaciones',
      'pt': 'Enviar convites',
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
  // modal_profile_Edit
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
    '99oumm34': {
      'en': 'Your Name',
      'es': 'Su nombre',
      'pt': 'Seu nome',
    },
    '8gkrs3rw': {
      'en': 'Short Description',
      'es': 'Descripción breve',
      'pt': 'Descrição curta',
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
    'p1lquhce': {
      'en': 'The email associated with this account is:',
      'es': 'El correo electrónico asociado a esta cuenta es:',
      'pt': 'O e-mail associado a esta conta é:',
    },
    'i6iuebkd': {
      'en': 'casper@ghostbusters.com',
      'es': 'casper@cazafantasmas.com',
      'pt': 'casper@ghostbusters.com',
    },
    'fyuvtufe': {
      'en': 'Created On:',
      'es': 'Creado el:',
      'pt': 'Criado em:',
    },
    'jk8us6c6': {
      'en': 'July 12th, 2023',
      'es': '12 de julio de 2023',
      'pt': '12 de julho de 2023',
    },
    'h4jwedag': {
      'en': 'Last Active:',
      'es': 'Última actividad:',
      'pt': 'Última atividade:',
    },
    'iakkv8eq': {
      'en': 'Just Now',
      'es': 'En este momento',
      'pt': 'Agora mesmo',
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
    'r7nbw4y6': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'pog1sboe': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'lrdd3chp': {
      'en': 'Button',
      'es': 'Botón',
      'pt': 'Botão',
    },
    'hxsxj681': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'e7agr7ys': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '65e2tfs2': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ddazihx4': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'db03cpjj': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'fdb9078p': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '80ouzj9q': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '6rzhptp9': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ce8c4ty0': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ehb9j2eu': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '91bvb462': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'hirpbigs': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'wj8451yf': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'kcvqa08x': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'dqrzd6sq': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'dpqtohyf': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'v01vf71s': {
      'en': '',
      'es': '',
      'pt': '',
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
