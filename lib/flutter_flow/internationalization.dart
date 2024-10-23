import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt'];

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
  }) =>
      [enText, ptText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // forgot_password
  {
    '3hcuc8v6': {
      'en': 'Forgot Password',
      'pt': 'Esqueceu sua senha',
    },
    'sjjd1jb9': {
      'en':
          'Don\'t remember your password? Enter the email associated with your account below and we will send you a new link.',
      'pt':
          'Não lembra da sua senha? Insira o e-mail associado à sua conta abaixo e nós lhe enviaremos um novo link.',
    },
    'tzm5opaa': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'uvsotzng': {
      'en': 'Please enter a valid email...',
      'pt': 'Insira um e-mail válido...',
    },
    '3sdzjivm': {
      'en': 'Send Reset Link',
      'pt': 'Enviar link de redefinição',
    },
    '8p6xd6cl': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // main_home
  {
    '3bi54x5g': {
      'en': 'Dashboard',
      'pt': 'Painel',
    },
    'nnv46x35': {
      'en': 'Below is a summary of your teams activity.',
      'pt': 'Abaixo está um resumo das atividades da sua equipe.',
    },
    'jqevo63s': {
      'en': 'New Members',
      'pt': 'Novos Membros',
    },
    'd0r4w3cc': {
      'en': '24',
      'pt': '24',
    },
    '8vot9bzj': {
      'en': 'New Factions',
      'pt': 'Novas Facções',
    },
    '463rfkem': {
      'en': '3,200',
      'pt': '3.200',
    },
    'saxskj92': {
      'en': 'Add in the Map',
      'pt': 'Adicionados no mapa',
    },
    '2wlrr5lg': {
      'en': '4300',
      'pt': '4300',
    },
    'kphqz3hi': {
      'en': 'Projects',
      'pt': 'Projetos',
    },
    'xlzf8qqx': {
      'en': 'Users in  adding registers',
      'pt': 'Atualizações de registros por usuários',
    },
    'zt3s5l2s': {
      'en': '4 Members',
      'pt': '4 membros',
    },
    'puy8obok': {
      'en': 'Activity de Factions',
      'pt': 'Atividade de Facções',
    },
    'zlovh0zt': {
      'en': 'Below is an a summary of activity.',
      'pt': 'Abaixo está um resumo da atividade.',
    },
    'g1uaaovn': {
      'en': 'Update Activity in the all',
      'pt': 'Atividade de atualização em todos os dados',
    },
    'e5q3ows1': {
      'en': 'Below is an a summary of activity.',
      'pt': 'Abaixo está um resumo da atividade.',
    },
    'uj7jsxmo': {
      'en': 'Contract Activity',
      'pt': 'Atividade de contrato',
    },
    'hkk2zmjw': {
      'en': 'Below is an a summary of activity.',
      'pt': 'Abaixo está um resumo da atividade.',
    },
    'jkgae0vc': {
      'en': 'Customer Activity',
      'pt': 'Atividade do cliente',
    },
    'g4os7kcp': {
      'en': 'Below is an a summary of activity.',
      'pt': 'Abaixo está um resumo da atividade.',
    },
    'y24lcr13': {
      'en': 'Dashboard',
      'pt': 'Painel',
    },
    'xdxbdj20': {
      'en': '__',
      'pt': '__',
    },
  },
  // main_membros
  {
    'n99lg1qh': {
      'en': 'Members',
      'pt': 'Membros',
    },
    'qf1tn1nr': {
      'en': 'Add Member',
      'pt': 'Adicionar membro',
    },
    'lvnskphp': {
      'en': 'All',
      'pt': 'Todos',
    },
    'haes0r2l': {
      'en': 'Full Name',
      'pt': 'Nome completo',
    },
    '5rmzx51f': {
      'en': 'Funcioton',
      'pt': 'Função',
    },
    'z0huz1sz': {
      'en': 'Faction',
      'pt': 'Facção',
    },
    '04vrv62j': {
      'en': 'Simple Name',
      'pt': 'Nome Simples',
    },
    '4zc3d2m8': {
      'en': 'CPF',
      'pt': 'CPF',
    },
    '3g7tqfgx': {
      'en': 'For Faction',
      'pt': 'Para Facção',
    },
    '2gdeafbk': {
      'en': 'For Functions',
      'pt': 'Para funções',
    },
    'fcyoodds': {
      'en': 'Customers',
      'pt': 'Clientes',
    },
    '3ourv2w9': {
      'en': '__',
      'pt': '__',
    },
  },
  // main_faccao_old
  {
    '4h88trkp': {
      'en': 'Contracts',
      'pt': 'Contratos',
    },
    'smh1o93d': {
      'en': 'Factions',
      'pt': 'Facções',
    },
    '0qpozsrf': {
      'en': 'Add Faction',
      'pt': 'Adicionar Facção',
    },
    't967eizl': {
      'en': 'Factions',
      'pt': 'Facções',
    },
    'dlt46loo': {
      'en': 'Factions List',
      'pt': 'Lista de Facções',
    },
    '0xsigbyq': {
      'en': 'Faction Name',
      'pt': 'Nome da Facção',
    },
    'cltnbu58': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'ffcoxk91': {
      'en': 'Founders',
      'pt': 'Fundadores',
    },
    '06kkqenf': {
      'en': 'Create date',
      'pt': 'Data de criação',
    },
    '3gykazkx': {
      'en': 'Number of members',
      'pt': 'Número de membros',
    },
    'j08eiorc': {
      'en': '__',
      'pt': '__',
    },
  },
  // main_messages
  {
    '8jlklje5': {
      'en': 'Messages',
      'pt': 'Mensagens',
    },
    '13b6p0ri': {
      'en': 'Search messages here...',
      'pt': 'Pesquisar mensagens aqui...',
    },
    'm6h1ci8o': {
      'en': 'Randy Mcdonald',
      'pt': 'Randy McDonald - O que é isso?',
    },
    '375pqg6v': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'pt':
          'Isso foi realmente ótimo, estou muito feliz que pudemos nos encontrar neste fim de semana.',
    },
    'cbtg39kg': {
      'en': 'Mon. July 3rd - 4:12pm',
      'pt': 'Seg. 3 de julho - 16h12',
    },
    'yjl2z0ye': {
      'en': 'Randy Mcdonald',
      'pt': 'Randy McDonald - O que é isso?',
    },
    'uyqeyj1w': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'pt':
          'Isso foi realmente ótimo, estou muito feliz que pudemos nos encontrar neste fim de semana.',
    },
    'qdtk1psh': {
      'en': 'Mon. July 3rd - 4:12pm',
      'pt': 'Seg. 3 de julho - 16h12',
    },
    'udrcsj9r': {
      'en': 'Randy Mcdonald',
      'pt': 'Randy McDonald - O que é isso?',
    },
    'ugrrfw8l': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'pt':
          'Isso foi realmente ótimo, estou muito feliz que pudemos nos encontrar neste fim de semana.',
    },
    'ib4p9em6': {
      'en': 'Mon. July 3rd - 4:12pm',
      'pt': 'Seg. 3 de julho - 16h12',
    },
    'r0cqh4ec': {
      'en':
          'I am a freelancer and I need help writing content for a proposal for a project. Can I give you some context for the projecct I need to write a proposal for?',
      'pt':
          'Sou freelancer e preciso de ajuda para escrever conteúdo para uma proposta de projeto. Posso dar algum contexto para o projeto para o qual preciso escrever uma proposta?',
    },
    'cu0iov54': {
      'en': 'Just Now',
      'pt': 'Agora mesmo',
    },
    'it69akbs': {
      'en': 'Hey really love what you are doing!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'pu94epux': {
      'en': 'a few moments ago',
      'pt': 'alguns momentos atrás',
    },
    'yny0f2zl': {
      'en': 'This is my intro video',
      'pt': 'Este é meu vídeo de introdução',
    },
    'q2bmh3xq': {
      'en': 'Just Now',
      'pt': 'Agora mesmo',
    },
    '4lc34hro': {
      'en': 'Hey really love what you are doing!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'rv9g1zmc': {
      'en': 'Just Now',
      'pt': 'Agora mesmo',
    },
    'bbpyr9q4': {
      'en': 'Hey really love what you are doing!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'jkyrunx9': {
      'en': 'Just Now',
      'pt': 'Agora mesmo',
    },
    'p20c60zu': {
      'en': 'Start typing here...',
      'pt': 'Comece a digitar aqui...',
    },
    'ym579y79': {
      'en': 'Dashboard',
      'pt': 'Painel',
    },
    'smtxdnbn': {
      'en': '__',
      'pt': '__',
    },
  },
  // main_profile_page
  {
    'qrxn5crt': {
      'en': 'My Profile',
      'pt': 'Meu Perfil',
    },
    'fyxsf6vn': {
      'en': 'Account Settings',
      'pt': 'Configurações de Conta',
    },
    'h43llaan': {
      'en': 'Change Password',
      'pt': 'Alterar a senha',
    },
    'b1lw0hfu': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'clf3bzn3': {
      'en': 'Update Theme',
      'pt': 'Atualizar tema',
    },
    'dujofvd2': {
      'en':
          'Update the theme of your application from seleccting one of the options below.',
      'pt':
          'Atualize o tema do seu aplicativo selecionando uma das opções abaixo.',
    },
    'zohqypc2': {
      'en': 'Dark Mode',
      'pt': 'Modo escuro',
    },
    't3a5lo8r': {
      'en': 'Light Mode',
      'pt': 'Modo de luz',
    },
    'abqf147c': {
      'en': 'Log Out',
      'pt': 'Sair',
    },
    'o3dp9tss': {
      'en': '__',
      'pt': '__',
    },
  },
  // user_details
  {
    '9t913b44': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // edit_profile
  {
    'mk8nnw94': {
      'en': 'Change Photo',
      'pt': 'Alterar foto',
    },
    '2rqce1pj': {
      'en': 'The email associated with this account is:',
      'pt': 'O e-mail associado a esta conta é:',
    },
    'y680yxcf': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'dmbxoaz6': {
      'en': 'Option 2',
      'pt': 'Opção 2',
    },
    '2wl1lv9o': {
      'en': 'Option 3',
      'pt': 'Opção 3',
    },
    'a3qnnd4d': {
      'en': 'Select one Agency ',
      'pt': 'Selecione uma agência',
    },
    'mg5okl99': {
      'en': 'Search...',
      'pt': 'Procurar...',
    },
    '4no7ue4a': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    'bj7cfa5q': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    'rr8ksatz': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
    '20uycztj': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
  },
  // project_details_health_ai
  {
    'mxf4vrjw': {
      'en': 'HealthAi',
      'pt': 'SaúdeAi',
    },
    'wsgonkz2': {
      'en': 'Client Acquisition for Q3',
      'pt': 'Aquisição de clientes para o terceiro trimestre',
    },
    'ynyuwhqo': {
      'en': 'Next Action',
      'pt': 'Próxima ação',
    },
    'zk7z07v0': {
      'en': 'Tuesday, 10:00am',
      'pt': 'Terça-feira, 10:00 da manhã',
    },
    'xmahzs1v': {
      'en': 'In Progress',
      'pt': 'Em andamento',
    },
    'ry6jvd0g': {
      'en': 'Contract Details',
      'pt': 'Detalhes do contrato',
    },
    'hu32scl5': {
      'en': '\$125,000',
      'pt': '\$ 125.000',
    },
    'sfu6o269': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'pt':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste card!',
    },
    '5sv9a4ka': {
      'en': 'Mark as Complete',
      'pt': 'Marcar como concluído',
    },
    'rrgcwkj1': {
      'en': 'Contract Details',
      'pt': 'Detalhes do contrato',
    },
    '8bwk4oui': {
      'en': '\$67,000',
      'pt': '\$ 67.000',
    },
    'p2hoxaq9': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'pt':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste card!',
    },
    'ww95wm3k': {
      'en': 'Mark as Complete',
      'pt': 'Marcar como concluído',
    },
    '54l7ivhw': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // project_details
  {
    'c0s3jdsy': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // search_page
  {
    'ao46xsuv': {
      'en': 'Add Members',
      'pt': 'Adicionar membros',
    },
    'g8rv8zhr': {
      'en': 'Search members...',
      'pt': 'Pesquisar membros...',
    },
    'm4ytuko9': {
      'en': '',
      'pt': '',
    },
    'op7ngmsb': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    '5x8u4g0u': {
      'en': 'All Members',
      'pt': 'Todos os membros',
    },
    'aw6pd4xm': {
      'en': 'user@domainname.com',
      'pt': 'usuário@nomedodomínio.com',
    },
    '4cek35uo': {
      'en': 'View',
      'pt': 'Visualizar',
    },
    'mvx2sb5k': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // messages_details
  {
    '67tv84ak': {
      'en':
          'I am a freelancer and I need help writing content for a proposal for a project. Can I give you some context for the projecct I need to write a proposal for?',
      'pt':
          'Sou freelancer e preciso de ajuda para escrever conteúdo para uma proposta de projeto. Posso dar algum contexto para o projeto para o qual preciso escrever uma proposta?',
    },
    'ldze800m': {
      'en': 'Just Now',
      'pt': 'Agora mesmo',
    },
    '3yldlfk9': {
      'en': 'Hey really love what you are doing!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'ozghv9ta': {
      'en': 'a few moments ago',
      'pt': 'alguns momentos atrás',
    },
    '4b943uzi': {
      'en': 'This is my intro video',
      'pt': 'Este é meu vídeo de introdução',
    },
    'j5burt0n': {
      'en': 'Just Now',
      'pt': 'Agora mesmo',
    },
    'nve1gr7c': {
      'en': 'Hey really love what you are doing!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'ttxn3h0c': {
      'en': 'Just Now',
      'pt': 'Agora mesmo',
    },
    'sj32bx47': {
      'en': 'Hey really love what you are doing!',
      'pt': 'Olá, eu realmente adoro o que você faz!',
    },
    'mwdx1wqh': {
      'en': 'Just Now',
      'pt': 'Agora mesmo',
    },
    'buzhmfr6': {
      'en': 'Start typing here...',
      'pt': 'Comece a digitar aqui...',
    },
    '34fjbl14': {
      'en': 'Chat Details',
      'pt': 'Detalhes do bate-papo',
    },
    'pjym5jdv': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // auth_login
  {
    'tzm2gn5e': {
      'en': 'Sign In',
      'pt': 'Entrar',
    },
    'ssmdesvy': {
      'en': 'Let\'s get started by filling out the form below.',
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
    },
    'bqvjzpge': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    'sltzyh98': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'ufqw0h0a': {
      'en': 'Sign In',
      'pt': 'Entrar',
    },
    '8l7e2xqq': {
      'en': 'Forgot Password',
      'pt': 'Esqueceu sua senha',
    },
    'eitkx3bc': {
      'en': 'Sign Up',
      'pt': 'Inscrever-se',
    },
    '7w1voiyg': {
      'en': 'Let\'s get started by filling out the form below.',
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
    },
    'x9n98tl7': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    '0elh6q8n': {
      'en': 'Option 2',
      'pt': 'Opção 2',
    },
    'za9rr007': {
      'en': 'Option 3',
      'pt': 'Opção 3',
    },
    'h4i4bwp7': {
      'en': 'Select...',
      'pt': 'Selecione...',
    },
    'ak53f3yr': {
      'en': 'Search agency...',
      'pt': 'Agência de busca...',
    },
    'rxvn7x0x': {
      'en': 'Full name',
      'pt': 'Nome completo',
    },
    'nyrv8tm0': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    'xi8bszk0': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'ffom99vq': {
      'en': 'Confirm Password',
      'pt': 'Confirme sua senha',
    },
    '22cyhqvr': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'rnyra7iu': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // add_membros
  {
    'luy0t7h2': {
      'en': 'Add Members',
      'pt': 'Adicionar membros',
    },
    'ocp718jh': {
      'en': 'Profile',
      'pt': 'Perfil',
    },
    'x8axg494': {
      'en': 'Create Company Profile',
      'pt': 'Criar Perfil da Empresa',
    },
    'swf1sew5': {
      'en':
          'Upload images about your company and fill out the information below.',
      'pt':
          'Carregue imagens sobre sua empresa e preencha as informações abaixo.',
    },
    'kovjx5qk': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'zftdg7ng': {
      'en': 'Option 2',
      'pt': 'Opção 2',
    },
    'bjyl96v1': {
      'en': 'Option 3',
      'pt': 'Opção 3',
    },
    '812357rd': {
      'en': 'Select...',
      'pt': 'Selecione...',
    },
    'rel4cqhn': {
      'en': 'Search...',
      'pt': 'Procurar...',
    },
    '5fqmijio': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    '1ddlajdn': {
      'en': 'Option 2',
      'pt': 'Opção 2',
    },
    'gdhq0dq6': {
      'en': 'Option 3',
      'pt': 'Opção 3',
    },
    'ohs1bq4j': {
      'en': 'Select...',
      'pt': 'Selecione...',
    },
    'm99af805': {
      'en': 'Search...',
      'pt': 'Procurar...',
    },
    '4zstb8xf': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'iy19h9i4': {
      'en': 'Option 2',
      'pt': 'Opção 2',
    },
    'by8u8kmd': {
      'en': 'Option 3',
      'pt': 'Opção 3',
    },
    '2rro117l': {
      'en': 'Select...',
      'pt': 'Selecione...',
    },
    'ucwqr3c3': {
      'en': 'Search...',
      'pt': 'Procurar...',
    },
    'm88zhnhm': {
      'en': 'Full Name',
      'pt': 'Nome completo',
    },
    '3x41wc8c': {
      'en': 'Website',
      'pt': 'Site',
    },
    'ak3nmiz7': {
      'en': 'Enter in your website without \"https://\"...',
      'pt': 'Entre no seu site sem \"https://\"...',
    },
    '6zw9yxni': {
      'en': 'Company City',
      'pt': 'Cidade da empresa',
    },
    'gfs5j60m': {
      'en': 'Company City',
      'pt': 'Cidade da empresa',
    },
    '0nignr1c': {
      'en': 'Company City',
      'pt': 'Cidade da empresa',
    },
    '3jjwznx5': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'lwkne6wn': {
      'en': 'Create Company',
      'pt': 'Criar empresa',
    },
    'gti2knng': {
      'en': 'History',
      'pt': 'História',
    },
    'o6n478zo': {
      'en': 'Procedures',
      'pt': 'Procedimentos',
    },
    'bg2b0nj3': {
      'en': 'Faction',
      'pt': 'Facção',
    },
    'c7ica2jp': {
      'en': 'Crime Action',
      'pt': 'Ação Criminal',
    },
    'be0xptn9': {
      'en': 'Alert',
      'pt': 'Alerta',
    },
    '5lwbh8mj': {
      'en': 'Relations',
      'pt': 'Relações',
    },
    '1bduu4ux': {
      'en': 'Groups',
      'pt': 'Grupos',
    },
    'j0nfxam4': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // main_admin
  {
    'xdubtp8a': {
      'en': 'Customers',
      'pt': 'Clientes',
    },
    'qkmq9xej': {
      'en': 'Adminitration',
      'pt': 'Administração',
    },
    'r8vl0ce9': {
      'en': 'Add Profile',
      'pt': 'Adicionar perfil',
    },
    'i6puusi7': {
      'en': 'All',
      'pt': 'Todos',
    },
    '5ei4gaxd': {
      'en': 'Full Name',
      'pt': 'Nome completo',
    },
    'knvrskhd': {
      'en': 'Agency',
      'pt': 'Agência',
    },
    'q5s6eda3': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'rd2ba3as': {
      'en': 'email',
      'pt': 'e-mail',
    },
    '5cijyycp': {
      'en': 'User Type',
      'pt': 'Tipo de usuário',
    },
    'ppz66xjm': {
      'en': 'Agency',
      'pt': 'Agência',
    },
    'cl0g3enm': {
      'en': '__',
      'pt': '__',
    },
  },
  // main_faccoes
  {
    'r8ltzsy4': {
      'en': 'Customers',
      'pt': 'Clientes',
    },
    '4j8vce4m': {
      'en': 'Factions',
      'pt': 'Facções',
    },
    'zt1zsn3q': {
      'en': 'Add Faction',
      'pt': 'Adicionar Facção',
    },
    'a5ixac3k': {
      'en': 'All',
      'pt': 'Todos',
    },
    '222dkjfs': {
      'en': 'Name',
      'pt': 'Nome',
    },
    'qyq0ek8t': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'mtyn0hp2': {
      'en': 'Faction Creation Date',
      'pt': 'Data de criação da facção',
    },
    'h9ronhq6': {
      'en': 'Last modified',
      'pt': 'Última modificação',
    },
    '8xlnl6av': {
      'en': '__',
      'pt': '__',
    },
  },
  // modal_success
  {
    'kred63vb': {
      'en': 'Send Contract Confirmation',
      'pt': 'Enviar confirmação do contrato',
    },
    'hywgg8eu': {
      'en': 'A new contract has been generated for:',
      'pt': 'Um novo contrato foi gerado para:',
    },
    'kmp2gbpy': {
      'en': 'Randy Alcorn',
      'pt': 'Randy Alcorn',
    },
    'a7nc1dt4': {
      'en': 'Head of Procurement',
      'pt': 'Chefe de Compras',
    },
    '2f2nxucv': {
      'en': 'ACME Co.',
      'pt': 'Empresa ACME',
    },
    'vcm4fijj': {
      'en': 'Next Steps',
      'pt': 'Próximos passos',
    },
    '60n0fqw5': {
      'en':
          'Send the information below. And we will send an email with details to the customer and allow you to manage it in your dashboard.',
      'pt':
          'Envie as informações abaixo. E nós enviaremos um e-mail com detalhes para o cliente e permitiremos que você gerencie isso no seu painel.',
    },
    'e408bhw6': {
      'en': 'Send Information',
      'pt': 'Enviar informações',
    },
    'wo1onxhi': {
      'en': 'Never Mind',
      'pt': 'Deixa para lá',
    },
  },
  // modal_message
  {
    'wa4vkne2': {
      'en': 'Congratulations!',
      'pt': 'Parabéns!',
    },
    '3hf2ocig': {
      'en':
          'Now that a contract has been generated for this customer please contact them with the date you will send the signed agreement.',
      'pt':
          'Agora que um contrato foi gerado para este cliente, entre em contato com ele para informar a data em que você enviará o acordo assinado.',
    },
    'q0jvi1lp': {
      'en': 'Okay',
      'pt': 'OK',
    },
    'oo4y13nf': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
  },
  // modal_welcome
  {
    '00flvi93': {
      'en': 'Congratulations!',
      'pt': 'Parabéns!',
    },
    'fmzceh74': {
      'en': 'A new contract has been generated for:',
      'pt': 'Um novo contrato foi gerado para:',
    },
    'g8q2u55w': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
  },
  // modal_add_comment
  {
    'l2jlnhye': {
      'en': 'Create Note',
      'pt': 'Criar nota',
    },
    'd6yfe8tj': {
      'en': 'Find members by searching below',
      'pt': 'Encontre membros pesquisando abaixo',
    },
    'p3rj5ra0': {
      'en': 'Ricky Rodriguez',
      'pt': 'Ricky Rodríguez',
    },
    '9gf6o5ss': {
      'en': 'Enter your note here...',
      'pt': 'Insira sua nota aqui...',
    },
    'farrki57': {
      'en': 'Create Note',
      'pt': 'Criar nota',
    },
  },
  // mobile_nav
  {
    'sy0pxvma': {
      'en': 'Dashboard',
      'pt': 'Painel',
    },
    't5c3aiuy': {
      'en': 'My Team',
      'pt': 'Minha equipe',
    },
    'nkz3c58a': {
      'en': 'Customers',
      'pt': 'Clientes',
    },
    '1mkyyjwj': {
      'en': 'Contracts',
      'pt': 'Contratos',
    },
    'eg79coc6': {
      'en': 'Profile',
      'pt': 'Perfil',
    },
  },
  // web_nav
  {
    'xai8ocja': {
      'en': 'Search',
      'pt': 'Procurar',
    },
    'yg07zi4c': {
      'en': 'Dashboard',
      'pt': 'Painel',
    },
    'lbojdpxg': {
      'en': 'Factions',
      'pt': 'Facções',
    },
    '9pjba90p': {
      'en': 'Members',
      'pt': 'Membros',
    },
    '5s0d776i': {
      'en': 'Messages',
      'pt': 'Mensagens',
    },
    'kfrv5rp5': {
      'en': 'Administration',
      'pt': 'Administração',
    },
    '01nu9cy0': {
      'en': 'Profile',
      'pt': 'Perfil',
    },
    'uiv9sien': {
      'en': 'Logout',
      'pt': 'Sair',
    },
  },
  // modal_command_palette
  {
    '8m0o3yfd': {
      'en': 'Search platform...',
      'pt': 'Plataforma de busca...',
    },
    'r2yl8d9a': {
      'en': 'Search',
      'pt': 'Procurar',
    },
    'cb7yd65n': {
      'en': 'Quick Links',
      'pt': 'Links rápidos',
    },
    'aehlyped': {
      'en': 'Find Member',
      'pt': 'Encontrar Membro',
    },
    'danyvope': {
      'en': 'Find Faction',
      'pt': 'Encontrar Facção',
    },
    'bngj5l7i': {
      'en': 'User Habilit',
      'pt': 'Habilidade do usuário',
    },
    'aong5an6': {
      'en': 'New member',
      'pt': 'Novo membro',
    },
  },
  // modal_profile_edit_photo
  {
    '6bnefz1c': {
      'en': 'Change Photo',
      'pt': 'Alterar foto',
    },
    'yaxe7q8v': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'pt':
          'Carregue uma nova foto abaixo para alterar seu avatar visto por outros.',
    },
    're4x0sz7': {
      'en': 'Upload Image',
      'pt': 'Carregar imagem',
    },
    'sr54fsk6': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
  },
  // user_details_main
  {
    '918p9oc4': {
      'en': 'Customer Name',
      'pt': 'Nome do cliente',
    },
    'gs85nrf2': {
      'en': 'Randy Alcorn',
      'pt': 'Randy Alcorn',
    },
    '534e9fmv': {
      'en': 'High Profile',
      'pt': 'Alto Perfil',
    },
    'jindju5a': {
      'en': 'Title',
      'pt': 'Título',
    },
    'ouyjuyvf': {
      'en': 'Head of Procurement',
      'pt': 'Chefe de Compras',
    },
    '8viyn84n': {
      'en': 'Company',
      'pt': 'Empresa',
    },
    '7enxw4hk': {
      'en': 'ACME Co.',
      'pt': 'Empresa ACME',
    },
    'f6o8asym': {
      'en': 'Notes',
      'pt': 'Notas',
    },
    'p41433bd': {
      'en': 'Alexandria Smith',
      'pt': 'Alexandria Smith',
    },
    'a3j3ejvp': {
      'en': '1m ago',
      'pt': '1m atrás',
    },
    'yqm004xu': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incidente ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comodo consequat.',
    },
    'v33uqxl2': {
      'en': '8',
      'pt': '8',
    },
    'cn1mi2rc': {
      'en': 'Notes',
      'pt': 'Notas',
    },
    '01hso9ea': {
      'en': 'Randy Alcorn',
      'pt': 'Randy Alcorn',
    },
    'st5cr4ca': {
      'en':
          'I\'m not really sure about this section here aI think you should do soemthing cool!',
      'pt':
          'Não tenho muita certeza sobre esta seção aqui, mas acho que você deveria fazer algo legal!',
    },
    '5h4d8i39': {
      'en': 'a min ago',
      'pt': 'um minuto atrás',
    },
    '8rmeqctf': {
      'en': 'Generate Quote',
      'pt': 'Gerar Cotação',
    },
    'ougpd8b8': {
      'en': 'View Company',
      'pt': 'Ver empresa',
    },
  },
  // dropdown_user_edit
  {
    'pnpighuj': {
      'en': 'Atribuir acessos',
      'pt': 'Atribuir acessos',
    },
    '6kc0o458': {
      'en': ' Básico',
      'pt': 'Básico',
    },
    '9v90iv59': {
      'en': 'Análise',
      'pt': 'Análise',
    },
    'kwwbdpwg': {
      'en': 'Gestor',
      'pt': 'Gestor',
    },
    '08tfqij4': {
      'en': 'Desenvolvedor',
      'pt': 'Desenvolvedor',
    },
    'nkugovnf': {
      'en': 'Administrador',
      'pt': 'Administrador',
    },
    'vqk7im3j': {
      'en': 'Options',
      'pt': 'Opções',
    },
    'ufasy4ju': {
      'en': 'Edit',
      'pt': 'Editar',
    },
    'w1jtn19u': {
      'en': 'View',
      'pt': 'Visualizar',
    },
    '9qkfsg85': {
      'en': 'Delete',
      'pt': 'Excluir',
    },
  },
  // modal_faccao_add
  {
    '5tdm3cpv': {
      'en': 'Add Faction',
      'pt': 'Adicionar Facção',
    },
    'vlg015ed': {
      'en': 'Please enter the information below to add a Faction.',
      'pt': 'Insira as informações abaixo para adicionar uma facção.',
    },
    'dqo5yhdb': {
      'en': 'Add Photo',
      'pt': 'Adicionar foto',
    },
    '426hn69e': {
      'en': 'Faction Name',
      'pt': 'Nome da Facção',
    },
    'cxlzs5tl': {
      'en': 'Nome da facção',
      'pt': 'Nome da facção',
    },
    'gvgwcy4p': {
      'en': 'Descrição ou Biografia',
      'pt': 'Descrição ou Biografia',
    },
    'uqziqhmg': {
      'en': 'Description ',
      'pt': 'Descrição',
    },
    '2g54ptaj': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    '4spmowtt': {
      'en': 'Please enter a project name...',
      'pt': 'Por favor, insira um nome de projeto...',
    },
    '32kj9709': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Selecione uma opção no menu suspenso',
    },
    'wfu6up0n': {
      'en': 'Please enter a short description...',
      'pt': 'Insira uma breve descrição...',
    },
    'qt5dp4ez': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Selecione uma opção no menu suspenso',
    },
  },
  // project_details_alt
  {
    'zgyw4s95': {
      'en': 'ACME Co.',
      'pt': 'Empresa ACME',
    },
    'izuvtgws': {
      'en': 'Contracts for New Opportunities',
      'pt': 'Contratos para Novas Oportunidades',
    },
    'gamp8n19': {
      'en': 'Assigned To',
      'pt': 'Atribuído a',
    },
    'obbewkqp': {
      'en': 'Randy Rudolph',
      'pt': 'Randy Rudolfo',
    },
    'ae8di6vv': {
      'en': 'name@domain.com',
      'pt': 'nome@domínio.com',
    },
    'x6aorxwd': {
      'en': 'Next Action',
      'pt': 'Próxima ação',
    },
    '8sktau69': {
      'en': 'Tuesday, 10:00am',
      'pt': 'Terça-feira, 10:00 da manhã',
    },
    'ck1j2u5s': {
      'en': 'In Progress',
      'pt': 'Em andamento',
    },
    '3z7p2nt3': {
      'en': 'Activity',
      'pt': 'Atividade',
    },
    '4fs4d1ar': {
      'en': 'FlutterFlow CRM App:',
      'pt': 'Aplicativo FlutterFlow CRM:',
    },
    'n5ub587t': {
      'en': ' Begin Work',
      'pt': 'Começar a trabalhar',
    },
    'y2yi7ro1': {
      'en': 'SOW Change Order',
      'pt': 'Ordem de alteração do SOW',
    },
    'tyo3th3g': {
      'en': 'FlutterFlow CRM App',
      'pt': 'Aplicativo FlutterFlow CRM',
    },
    't1shbmsx': {
      'en': 'Jul 8, at 4:31pm',
      'pt': '8 de julho, às 16h31',
    },
    'fjdirac9': {
      'en': 'Jeremiah Goldsten ',
      'pt': 'Jeremias Goldsten',
    },
    'g9h5nanl': {
      'en': 'accepted a request',
      'pt': 'aceitou um pedido',
    },
    'ndvrf4a3': {
      'en': 'SOW Change Order',
      'pt': 'Ordem de alteração do SOW',
    },
    'ruswj67g': {
      'en': 'FlutterFlow CRM App',
      'pt': 'Aplicativo FlutterFlow CRM',
    },
    'cgdoty6v': {
      'en':
          '\"Notifications and reminders informing users about upcoming classes and training schedules will be sent to them via email, SMS or notifications within the application.\"',
      'pt':
          '\"Notificações e lembretes informando os usuários sobre as próximas aulas e cronogramas de treinamento serão enviados a eles por e-mail, SMS ou notificações no aplicativo.\"',
    },
    'z3xab243': {
      'en': 'Jul 8, at 4:30pm',
      'pt': '8 de julho, às 16h30',
    },
    'a19jraal': {
      'en': 'Randy Rudolph ',
      'pt': 'Randy Rudolfo',
    },
    'b3k94yjl': {
      'en': 'sent a SOW Change Order for ',
      'pt': 'enviou uma Ordem de Alteração SOW para',
    },
    '9vhvqp6g': {
      'en': 'FlutterFlow CRM APP',
      'pt': 'Aplicativo FlutterFlow CRM',
    },
    '7djk72um': {
      'en': 'SOW Change Order',
      'pt': 'Ordem de alteração do SOW',
    },
    'qysyag2v': {
      'en': 'FlutterFlow CRM App',
      'pt': 'Aplicativo FlutterFlow CRM',
    },
    'ur5udrbc': {
      'en':
          '\"Please review the updates to this document and get back with me.\"',
      'pt':
          '\"Por favor, revise as atualizações deste documento e entre em contato comigo.\"',
    },
    'm8scfp1r': {
      'en': 'Jul 8, at 2:20pm',
      'pt': '8 de julho, às 14h20',
    },
    'n251rti5': {
      'en': 'Contracts',
      'pt': 'Contratos',
    },
    'i8p8t5uw': {
      'en': 'Updates to Existing App',
      'pt': 'Atualizações para o aplicativo existente',
    },
    'ks3nu6ra': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'pt':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste card!',
    },
    'f3u7xqx4': {
      'en': 'Contract Details',
      'pt': 'Detalhes do contrato',
    },
    'r2ns8igs': {
      'en': '\$210,000',
      'pt': '\$ 210.000',
    },
    'y5zgyf1b': {
      'en': 'Mark as Complete',
      'pt': 'Marcar como concluído',
    },
    'va0zdk6p': {
      'en': 'New FlutterFlow App',
      'pt': 'Novo aplicativo FlutterFlow',
    },
    't24sfvud': {
      'en':
          'The user can browse through our extensive catalog of fitness classes by filtering based on class type, location, time, and instructor. Each class will have detailed descriptions of the program, instructors, timings, availability, and rates.',
      'pt':
          'O usuário pode navegar pelo nosso extenso catálogo de aulas de fitness filtrando com base no tipo de aula, local, horário e instrutor. Cada aula terá descrições detalhadas do programa, instrutores, horários, disponibilidade e taxas.',
    },
    'nzh0mhza': {
      'en': 'Contract Details',
      'pt': 'Detalhes do contrato',
    },
    'dmcqhebq': {
      'en': '\$67,000',
      'pt': '\$ 67.000',
    },
    'it7y6ia8': {
      'en': 'Mark as Complete',
      'pt': 'Marcar como concluído',
    },
    'x8yfre0t': {
      'en': 'Project Details',
      'pt': 'Detalhes do Projeto',
    },
  },
  // modal_membros_add
  {
    'ioxmm05s': {
      'en': 'Add Member',
      'pt': 'Adicionar membro',
    },
    'ap8ub3ro': {
      'en': 'Profile',
      'pt': 'Perfil',
    },
    'fuw255xv': {
      'en':
          'Upload images about the  member and fill out the information below.',
      'pt': 'Carregue imagens sobre o membro e preencha as informações abaixo.',
    },
    'n7bo970y': {
      'en': 'Add Photos',
      'pt': 'Adicionar fotos',
    },
    'szzdveit': {
      'en': 'Apagar Fotos',
      'pt': 'Apagar Fotos',
    },
    'npcbcpl9': {
      'en': 'Nome completo',
      'pt': 'Nome completo',
    },
    'eyhgaf81': {
      'en': 'Nome completo',
      'pt': 'Nome completo',
    },
    'ikt0h50o': {
      'en': 'Alcunha',
      'pt': 'Alcunha',
    },
    'jna6z2zu': {
      'en': 'Alcunha',
      'pt': 'Alcunha',
    },
    'deg0fdow': {
      'en': 'Naturalidade',
      'pt': 'Naturalidade',
    },
    'o99a5cgx': {
      'en': 'Naturalidade',
      'pt': 'Naturalidade',
    },
    't9eza7j1': {
      'en': 'Solteiro',
      'pt': 'Solteiro',
    },
    'l63dv3dx': {
      'en': 'Casado',
      'pt': 'Casado',
    },
    'e2udnh0l': {
      'en': 'DIvorciado',
      'pt': 'DIvorciado',
    },
    'ggvr9869': {
      'en': 'Viúvo(a)',
      'pt': 'Viúvo(a)',
    },
    'dq3xw3uc': {
      'en': 'Separados legalmente',
      'pt': 'Separados legalmente',
    },
    'bm6cnl7l': {
      'en': 'União estável',
      'pt': 'União estável',
    },
    '75eegesr': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    'ievjy8qu': {
      'en': 'Estado civil',
      'pt': 'Estado civil',
    },
    'tfn53ft8': {
      'en': 'Estado civil',
      'pt': 'Estado civil',
    },
    '2opj9i3o': {
      'en': 'Identidade',
      'pt': 'Identidade',
    },
    'v4bdomyi': {
      'en': 'Identidade',
      'pt': 'Identidade',
    },
    'kuvmd4lw': {
      'en': 'SSP-AL',
      'pt': 'SSP-AL',
    },
    'i0p55l2k': {
      'en': 'SSP-SE',
      'pt': 'SSP-SE',
    },
    'q0egmn1z': {
      'en': 'SSP-CE',
      'pt': 'SSP-CE',
    },
    'yoj8hn6v': {
      'en': 'SSP-PE',
      'pt': 'SSP-PE',
    },
    'vuc1hntf': {
      'en': 'SSP-BA',
      'pt': 'SSP-BA',
    },
    'lhjvkfqm': {
      'en': 'SSP-RN',
      'pt': 'SSP-RN',
    },
    'ryqcnfe0': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    'ia9zkanc': {
      'en': 'Órgão expedidor',
      'pt': 'Órgão expedidor',
    },
    'h3ykxfak': {
      'en': 'Órgão expedidor',
      'pt': 'Órgão expedidor',
    },
    'k3o15zmt': {
      'en': 'CPF',
      'pt': 'CPF',
    },
    '1rai7wkj': {
      'en': 'CPF',
      'pt': 'CPF',
    },
    'f434de4i': {
      'en': 'Cadastro Infopen',
      'pt': 'Cadastro Infopen',
    },
    '1yyjhbj8': {
      'en': 'Cadastro Infopen',
      'pt': 'Cadastro Infopen',
    },
    'cjy846zr': {
      'en': 'Nome da mãe',
      'pt': 'Nome da mãe',
    },
    '7g88w199': {
      'en': 'Nome da mãe',
      'pt': 'Nome da mãe',
    },
    '4ebn7u9d': {
      'en': 'Viva',
      'pt': 'Viva',
    },
    'vte6onee': {
      'en': 'Falecida',
      'pt': 'Falecida',
    },
    '188nb78m': {
      'en': 'Cadeirante',
      'pt': 'Cadeirante',
    },
    'aw1z7gel': {
      'en': 'Sem informação',
      'pt': 'Sem informação',
    },
    'gc3vbmj4': {
      'en': 'Situação da Mãe',
      'pt': 'Situação da Mãe',
    },
    'bj72hiw8': {
      'en': 'Situação da Mãe',
      'pt': 'Situação da Mãe',
    },
    'lbcdz337': {
      'en': 'Nome do pai',
      'pt': 'Nome do pai',
    },
    '35jyk488': {
      'en': 'Nome do pai',
      'pt': 'Nome do pai',
    },
    'l5vrftgu': {
      'en': '',
      'pt': '',
    },
    'qyc8q0st': {
      'en': 'Vivo',
      'pt': 'Vivo',
    },
    '7ygxf6rh': {
      'en': 'Falecido',
      'pt': 'Falecido',
    },
    'wmbvp74d': {
      'en': 'Cadeirante',
      'pt': 'Cadeirante',
    },
    'r9rah6gc': {
      'en': 'Sem informação',
      'pt': 'Sem informação',
    },
    'cnn9tddw': {
      'en': 'Situação do Pai',
      'pt': 'Situação do Pai',
    },
    'bsvzf3cx': {
      'en': 'Father\'s Situation',
      'pt': 'Situação do Pai',
    },
    'r2g2yo2p': {
      'en': 'Alfabetizado',
      'pt': 'Alfabetizado',
    },
    'y7i4eicy': {
      'en': 'Não alfabetizado',
      'pt': 'Não alfabetizado',
    },
    'xmduvdwh': {
      'en': 'Ensino fundamental completo',
      'pt': 'Ensino fundamental completo',
    },
    'lvynt86i': {
      'en': 'Ensino médiio completo',
      'pt': 'Ensino médiio completo',
    },
    'eur8h0kh': {
      'en': 'Ensino superior completo',
      'pt': 'Ensino superior completo',
    },
    'm10ha0nj': {
      'en': 'Ensino fundamental incompleto',
      'pt': 'Ensino fundamental incompleto',
    },
    'csrvq6pn': {
      'en': 'Ensino médio incompleto',
      'pt': 'Ensino médio incompleto',
    },
    'tb0j8o1f': {
      'en': 'Ensino superior incompleto',
      'pt': 'Ensino superior incompleto',
    },
    'm23r6x4v': {
      'en': 'Sem informação',
      'pt': 'Sem informação',
    },
    '0wrilaus': {
      'en': 'Grau ou Nível de instruição',
      'pt': 'Grau ou Nível de instruição',
    },
    '4thgagtf': {
      'en': 'Father\'s Situation',
      'pt': '',
    },
    'qjj69k8u': {
      'en': 'Field is required',
      'pt': '',
    },
    'o5on3ke1': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'ym3akpkn': {
      'en': 'Field is required',
      'pt': '',
    },
    'n2o48na0': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'v395se51': {
      'en': 'Field is required',
      'pt': '',
    },
    'ig5z8pao': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'wb25vyk9': {
      'en': 'Field is required',
      'pt': '',
    },
    'swo0b7np': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'nfcv23yd': {
      'en': 'Field is required',
      'pt': '',
    },
    'm3wl1tny': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'hmz6g9kq': {
      'en': 'Field is required',
      'pt': '',
    },
    'dl0iqn1k': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'aajuf6zo': {
      'en': 'Field is required',
      'pt': '',
    },
    'kb47qv7h': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    '2wgvagjr': {
      'en': 'Field is required',
      'pt': '',
    },
    'f7drazjt': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'nvxntirq': {
      'en': 'History',
      'pt': 'História',
    },
    'uw8i01r5': {
      'en': 'Endereço Completo',
      'pt': 'Endereço Completo',
    },
    '97izofel': {
      'en': 'Endereço Completo',
      'pt': 'Endereço Completo',
    },
    '8j1rka5p': {
      'en': 'Option 1',
      'pt': '',
    },
    'ob87x68k': {
      'en': 'Nascido no Brasil',
      'pt': 'Nascido no Brasil',
    },
    '7tegc2gd': {
      'en': 'Nascido no Brasil',
      'pt': 'Nascido no Brasil',
    },
    'j7uzqdk2': {
      'en': 'Naturalizado Brasileiro',
      'pt': 'Naturalizado Brasileiro',
    },
    'usfossjo': {
      'en': 'Estrangeiro',
      'pt': 'Estrangeiro',
    },
    'baq5xyzk': {
      'en': 'Estado',
      'pt': 'Estado',
    },
    '8h8sdizg': {
      'en': 'Search...',
      'pt': '',
    },
    'l7659gs2': {
      'en': 'Municipio',
      'pt': 'Município',
    },
    'd6sdnxoa': {
      'en': 'Search...',
      'pt': '',
    },
    'awnrzzus': {
      'en': 'Histórico',
      'pt': 'Histórico',
    },
    'o7r2rdc8': {
      'en': 'Histórico',
      'pt': 'Histórico',
    },
    'lz0njodx': {
      'en': 'Option 1',
      'pt': '',
    },
    'zo5mhuuq': {
      'en': 'Facção',
      'pt': 'Facção',
    },
    '4z7rsy3e': {
      'en':
          'Informe os dados sobre o membro e a facção na qual o mesmo pertecem.',
      'pt':
          'Informe os dados sobre o membro e a facção na qual o mesmo pertecem.',
    },
    'wym31ngo': {
      'en': 'Option 1',
      'pt': '',
    },
    'dn03i4b5': {
      'en': 'Option 2',
      'pt': '',
    },
    'kuqoapto': {
      'en': 'Option 3',
      'pt': '',
    },
    'qrs0yx4b': {
      'en': 'Facções',
      'pt': 'Facções',
    },
    'xcc9fckm': {
      'en': 'Search...',
      'pt': '',
    },
    'wkak4lxs': {
      'en': 'Batismo',
      'pt': 'Batismo',
    },
    'pm0rvser': {
      'en': 'Batismo',
      'pt': 'Batismo',
    },
    'buogb0wh': {
      'en': 'Option 1',
      'pt': '',
    },
    'v5ktssho': {
      'en': 'Local do Batismo',
      'pt': 'Local do Batismo',
    },
    '344g39wc': {
      'en': 'Local do Batismo',
      'pt': 'Local do Batismo',
    },
    'cteddjhn': {
      'en': 'Padrinho',
      'pt': 'Padrinho',
    },
    'zntstdx4': {
      'en': 'Padrinho',
      'pt': 'Padrinho',
    },
    'uylgtxfb': {
      'en': 'Senha',
      'pt': 'Senha',
    },
    'h7acv992': {
      'en': 'Senha',
      'pt': 'Senha',
    },
    '5xrtyank': {
      'en': 'Cargo atual',
      'pt': 'Cargo atual',
    },
    'u231jvsq': {
      'en': 'Marital status',
      'pt': '',
    },
    'uhi29t9v': {
      'en': 'Cargo anterior',
      'pt': 'Cargo anterior',
    },
    'bfv93uyj': {
      'en': 'Marital status',
      'pt': '',
    },
    '0c8h6wz9': {
      'en': 'Função atual',
      'pt': 'Função atual',
    },
    'qc1gohjk': {
      'en': 'Mother\'s Situation',
      'pt': '',
    },
    '8c2yoabs': {
      'en': 'Função anterior',
      'pt': 'Função anterior',
    },
    'xtghmnhj': {
      'en': 'Função anterior',
      'pt': 'Função anterior',
    },
    'm25toomj': {
      'en': 'Três últimos locais onde esteve preso',
      'pt': 'Três últimos locais onde esteve preso',
    },
    'xroteapo': {
      'en': 'Três últimos locais onde esteve preso',
      'pt': 'Três últimos locais onde esteve preso',
    },
    '8uf1jitv': {
      'en': 'Facção que integrou',
      'pt': 'Facção que integrou',
    },
    'fzkhhi3x': {
      'en': 'Facção que integrou',
      'pt': 'Facção que integrou',
    },
    '4i6g2oa6': {
      'en': 'Facção aliada',
      'pt': 'Facção aliada',
    },
    'rnawpmov': {
      'en': 'Father\'s Situation',
      'pt': '',
    },
    '2rfuge4k': {
      'en': 'Facção Inimiga',
      'pt': 'Facção Inimiga',
    },
    '03pc9yaz': {
      'en': 'Facção Inimiga',
      'pt': 'Facção Inimiga',
    },
    'xeeiaebp': {
      'en': 'Procedimentos',
      'pt': 'Procedimentos',
    },
    '4trmbq2b': {
      'en':
          'Informe os dados sobre os Procedimentos que foram realizados contra esse membro.',
      'pt':
          'Informe os dados sobre os Procedimentos que foram realizados contra esse membro.',
    },
    'ehpi1bdt': {
      'en': 'Procedimento',
      'pt': 'Procedimento',
    },
    'cqb8a5yu': {
      'en': 'Procedimento',
      'pt': 'Procedimento',
    },
    'a1mq04vz': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    'ptm9fsnl': {
      'en': 'Delegacia Local',
      'pt': 'Delegacia Local',
    },
    'ewv0wp4u': {
      'en': 'Delegacia Especializada',
      'pt': 'Delegacia Especializada',
    },
    'tfba3ok1': {
      'en': 'Delegacia Regional',
      'pt': 'Delegacia Regional',
    },
    'p4l0yjdk': {
      'en': 'Unidade',
      'pt': 'Unidade',
    },
    'ugrmtsta': {
      'en': 'Search...',
      'pt': 'Procurar...',
    },
    '2oi2gd2o': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    'fqtt5evw': {
      'en': 'IPL. Portaria',
      'pt': 'IPL. Portaria',
    },
    'nlsyfr82': {
      'en': 'IPL. Flagrante',
      'pt': 'IPL. Flagrante',
    },
    '1sk13k9j': {
      'en': 'T.C.O',
      'pt': 'T.C.O',
    },
    'z4wg64u9': {
      'en': 'Tipo do procedimento',
      'pt': 'Tipo do procedimento',
    },
    'cd6xrkst': {
      'en': 'Search...',
      'pt': '',
    },
    'sgflhc8f': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    '6pi3pms7': {
      'en': 'Tráfico de drogas',
      'pt': 'Tráfico de drogas',
    },
    '5zqnvie0': {
      'en': 'Roubo Qualificado',
      'pt': 'Roubo Qualificado',
    },
    'ohxl9bc7': {
      'en': 'Lesão Corporal',
      'pt': 'Lesão Corporal',
    },
    '1zj80s5y': {
      'en': 'Homicídio',
      'pt': 'Homicídio',
    },
    '86bdc01p': {
      'en': 'Crime',
      'pt': 'Crime',
    },
    'bqng7ebw': {
      'en': 'Search...',
      'pt': '',
    },
    'kkjjfns6': {
      'en': 'Data do Procedimento',
      'pt': 'Data do Procedimento',
    },
    'y539pnv4': {
      'en': 'Data do Procedimento',
      'pt': 'Data do Procedimento',
    },
    '5mm0nr5l': {
      'en': 'Limpar procedimentos abaixo',
      'pt': 'Limpar',
    },
    '8pxnhql5': {
      'en': 'Adicionar',
      'pt': 'Adicionar',
    },
    'i2sj5hwa': {
      'en': 'Field is required',
      'pt': '',
    },
    'lerrd27b': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'jgdeykjo': {
      'en': 'Field is required',
      'pt': '',
    },
    'wkwcrq40': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'g3vpoxn0': {
      'en': 'Procedimento',
      'pt': 'Procedimento',
    },
    '6vsm4hcv': {
      'en': 'Unidade',
      'pt': 'Unidade',
    },
    '1rnrt2ya': {
      'en': 'Tipo de Procedimento:',
      'pt': 'Tipo de Procedimento:',
    },
    '7esylq1a': {
      'en': 'Crime',
      'pt': 'Crime',
    },
    '8m6o6goq': {
      'en': 'Data',
      'pt': 'Data',
    },
    '0v0s6s8e': {
      'en': 'Processos',
      'pt': 'Processos',
    },
    '50bd7mi1': {
      'en':
          'Informe os dados sobre os Processo que foram realizados contra esse membro.',
      'pt':
          'Informe os dados sobre os Processo que foram realizados contra esse membro.',
    },
    'ig1tpcu8': {
      'en': 'Nº da ação Penal',
      'pt': 'Nº da ação Penal',
    },
    'on8d1j5b': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    '3y3arw03': {
      'en': '1ª VARA PENAL',
      'pt': '1ª VARA PENAL',
    },
    '2ad97h60': {
      'en': '2ª VARA PENAL',
      'pt': '2ª VARA PENAL',
    },
    '62uy1ula': {
      'en': '3ª VARA PENAL',
      'pt': '3ª VARA PENAL',
    },
    '52tqxh7t': {
      'en': 'Vara',
      'pt': 'Vara',
    },
    'f81efpi5': {
      'en': 'Search ...',
      'pt': 'Pesquisa ...',
    },
    '9ntgj4nz': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    '9krzgpyy': {
      'en': 'Condenado',
      'pt': 'Condenado',
    },
    'veeirmiy': {
      'en': 'Provisório',
      'pt': 'Provisório',
    },
    '85dco8ds': {
      'en': 'Aguardando Sentença',
      'pt': 'Aguardando Sentença',
    },
    'njzw806d': {
      'en': 'Situação jurídica',
      'pt': 'Situação jurídica',
    },
    'p7i3qgzk': {
      'en': 'Search...',
      'pt': '',
    },
    'eskukxtn': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    '3ucnkzsn': {
      'en': 'Fechado',
      'pt': 'Fechado',
    },
    '9ogzdq4x': {
      'en': 'Semi-aberto',
      'pt': 'Semi-aberto',
    },
    'gjnab6i2': {
      'en': 'Regime',
      'pt': 'Regime',
    },
    'zgtd0ndz': {
      'en': 'Search...',
      'pt': '',
    },
    'qoe55ylu': {
      'en': '',
      'pt': '',
    },
    'tn9os876': {
      'en': 'Nenhuma das opções',
      'pt': 'Nenhuma das opções',
    },
    '6f4ajcmk': {
      'en': 'Preso',
      'pt': 'Preso',
    },
    'wjr32pf6': {
      'en': 'Solto',
      'pt': 'Solto',
    },
    'whrvcs43': {
      'en': 'Situação réu',
      'pt': 'Situação réu',
    },
    'dquf2f18': {
      'en': 'Search...',
      'pt': '',
    },
    'tveo07et': {
      'en': 'Limpar',
      'pt': 'Limpar',
    },
    'vm7t0n6u': {
      'en': 'Adicionar',
      'pt': 'Adicionar',
    },
    'noufgwqe': {
      'en': 'Nº da ação Penal',
      'pt': 'Nº da ação Penal',
    },
    'xeuwwqlt': {
      'en': 'Vara',
      'pt': 'Vara',
    },
    '9t25cx0m': {
      'en': 'Situação jurídica',
      'pt': 'Situação jurídica',
    },
    'ptv8ms3l': {
      'en': 'Regime',
      'pt': 'Regime',
    },
    '670xv14p': {
      'en': 'Situação réu',
      'pt': 'Situação réu',
    },
    'xaeljp2r': {
      'en': 'Atuação',
      'pt': 'Atuação',
    },
    '7v3qtjj2': {
      'en': 'Faça um resumo das principais atuações criminais deste membro.',
      'pt': 'Faça um resumo das principais atuações criminais deste membro.',
    },
    'ssjp267b': {
      'en': 'Atuação no Crime',
      'pt': 'Atuação no Crime',
    },
    'dak0lg3s': {
      'en': 'Atuação no Crime',
      'pt': 'Atuação no Crime',
    },
    '18a7a4fk': {
      'en': 'Option 1',
      'pt': '',
    },
    '8slh1eth': {
      'en': 'Alerta',
      'pt': 'Alerta',
    },
    '3etmnyzt': {
      'en': 'Ativar alerta',
      'pt': 'Ativar alerta',
    },
    '29530mgy': {
      'en': 'Alerta',
      'pt': 'Alerta',
    },
    'kx61gjir': {
      'en': 'Alerta',
      'pt': 'Alerta',
    },
    'taqpyut0': {
      'en': 'Option 1',
      'pt': '',
    },
    '2rc41m6r': {
      'en': 'Validação',
      'pt': 'Validação',
    },
    'hg8tsf0e': {
      'en': 'Percentual  de validações dos dados',
      'pt': 'Percentual  de validações dos dados',
    },
    'z911x2kd': {
      'en': 'Como foram validados os dados e informações ?',
      'pt': 'Como foram validados os dados e informações ?',
    },
    'udriebg5': {
      'en': 'Validação Local ou área de atuação',
      'pt': 'Validação Local ou área de atuação',
    },
    'ekk2ybut': {
      'en': 'Apenas  atráves de fontes abertas',
      'pt': 'Apenas  atráves de fontes abertas',
    },
    'jq3rovfo': {
      'en': 'Apenas através de fontes restristas',
      'pt': 'Apenas através de fontes restristas',
    },
    'si112iv5': {
      'en': 'Através de outra(s) agência de  inteligência',
      'pt': 'Através de outra(s) agência de  inteligência',
    },
    'ucqyj1ot': {
      'en': 'Atráves de  outro(s) órgãos como : PP, MP e etc.',
      'pt': 'Atráves de  outro(s) órgãos como : PP, MP e etc.',
    },
    'qd88nb62': {
      'en': 'Apenas  através de informe(s) ',
      'pt': 'Apenas  através de informe(s) ',
    },
    'gq42kahm': {
      'en': 'Dentro de um Estabelecimento Prisional Estadual',
      'pt': 'Dentro de um Estabelecimento Prisional Estadual',
    },
    'ma9rbpmx': {
      'en': 'Dentro de um Estabelecimento Prisional Federal',
      'pt': 'Dentro de um Estabelecimento Prisional Federal',
    },
    '1i2vccnc': {
      'en': 'Apenas através de informante(s)',
      'pt': 'Apenas através de informante(s)',
    },
    'zcj6hpny': {
      'en': 'Apenas através de Coolaborador(es)',
      'pt': 'Apenas através de Coolaborador(es)',
    },
    'v0fvpqeq': {
      'en': '',
      'pt': '',
    },
    'hu7rwf8m': {
      'en': 'Observação(ões)',
      'pt': 'Observação(ões)',
    },
    '0a8jmcbn': {
      'en': 'Observação(ões)',
      'pt': 'Observação(ões)',
    },
    'e34igmbj': {
      'en': 'Option 1',
      'pt': '',
    },
    'ld0rt7j2': {
      'en': 'Relations',
      'pt': 'Relações',
    },
    'hikp6nbx': {
      'en': 'Groups',
      'pt': 'Grupos',
    },
    'qziqype9': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'xkcg34s5': {
      'en': 'Save Member',
      'pt': 'Salvar Membro',
    },
  },
  // modal_invite_user
  {
    '2c6w1mkp': {
      'en': 'Edit User Details',
      'pt': 'Editar detalhes do usuário',
    },
    'nez3q1xc': {
      'en': 'Edit the details of the user below.',
      'pt': 'Edite os detalhes do usuário abaixo.',
    },
    'ea9pniln': {
      'en': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    'b99om96j': {
      'en': 'name@domainname.com',
      'pt': 'nome@nomedodomínio.com',
    },
    'ctfs7f6t': {
      'en': 'User Name',
      'pt': 'Nome de usuário',
    },
    'lz0vcvft': {
      'en': 'Bio',
      'pt': 'Biografia',
    },
    '7f4dqnt8': {
      'en': 'Admin',
      'pt': 'Administrador',
    },
    'tzetnwcj': {
      'en': 'Manager',
      'pt': 'Gerente',
    },
    'r8pq5puc': {
      'en': 'Editor',
      'pt': 'Editor',
    },
    'by2vigrp': {
      'en': 'Viewer',
      'pt': 'Visualizador',
    },
    '7g5fvtiv': {
      'en': 'Please select...',
      'pt': 'Por favor selecione...',
    },
    'yszzomxi': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'wl5lect6': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'j7urjwc8': {
      'en': 'Send Invites',
      'pt': 'Enviar convites',
    },
  },
  // modal_enter_pin
  {
    'w63lhi44': {
      'en': 'Enter your PIN below',
      'pt': 'Insira seu PIN abaixo',
    },
    'cesy0qbp': {
      'en': 'Your project has been created, now invite your team to continue.',
      'pt': 'Seu projeto foi criado, agora convide sua equipe para continuar.',
    },
    'yan3zik2': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'ia89k4mg': {
      'en': 'Verify Code',
      'pt': 'Verificar código',
    },
  },
  // modal_share_project
  {
    '4tx2ru39': {
      'en': 'Share your project',
      'pt': 'Compartilhe seu projeto',
    },
    'u6t74zsp': {
      'en': 'Your project has been created, now invite your team to continue.',
      'pt': 'Seu projeto foi criado, agora convide sua equipe para continuar.',
    },
    'a5x5r8z2': {
      'en': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    '0hlgten0': {
      'en': 'name@domainname.com',
      'pt': 'nome@nomedodomínio.com',
    },
    'wfv5m0m2': {
      'en': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    'z4rocyop': {
      'en': 'name@domainname.com',
      'pt': 'nome@nomedodomínio.com',
    },
    'f9bgnoni': {
      'en': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    'bthcky9u': {
      'en': 'name@domainname.com',
      'pt': 'nome@nomedodomínio.com',
    },
    'pgq1r8ah': {
      'en': 'Add User',
      'pt': 'Adicionar usuário',
    },
    'x8i2mu80': {
      'en': 'Project Link',
      'pt': 'Link do Projeto',
    },
    'jzdr6k9x': {
      'en': 'https://project.flutterflow.io/?quizRef=T7c8mXvkYFFCWjqyhxKe',
      'pt': 'https://project.flutterflow.io/?quizRef=T7c8mXvkYFFCWjqyhxKe',
    },
    'jz45d8an': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'ubopypxm': {
      'en': 'Send Invites',
      'pt': 'Enviar convites',
    },
  },
  // modal_add_users_list
  {
    'u8eoldhj': {
      'en': 'Invite your Team',
      'pt': 'Convide sua equipe',
    },
    'z2uzep65': {
      'en': 'Your project has been created, now invite your team to continue.',
      'pt': 'Seu projeto foi criado, agora convide sua equipe para continuar.',
    },
    'dlpajrga': {
      'en': 'Email address...',
      'pt': 'Endereço de email...',
    },
    'timt0a9e': {
      'en': 'email@domainname.com',
      'pt': 'email@nomedodomínio.com',
    },
    'haz2ntfz': {
      'en': 'email@domainname.com',
      'pt': 'email@nomedodomínio.com',
    },
    'd9dnbwow': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'wezgwiac': {
      'en': 'Send Invites',
      'pt': 'Enviar convites',
    },
  },
  // modal_profile_details
  {
    'xt43uwzp': {
      'en': 'Profile Details',
      'pt': 'Detalhes do perfil',
    },
    '9ren6rbd': {
      'en': 'Below are your profile details',
      'pt': 'Abaixo estão os detalhes do seu perfil',
    },
    'izapnzh1': {
      'en': 'Randy Peterson',
      'pt': 'Randy Peterson',
    },
    '17qiejhp': {
      'en': 'name@domainname.com',
      'pt': 'nome@nomedodomínio.com',
    },
    '5bzj3jf4': {
      'en': 'Manage your account',
      'pt': 'Gerencie sua conta',
    },
    'x1e6b7y8': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'nj27bwmg': {
      'en': 'Reset Password',
      'pt': 'Redefinir senha',
    },
    'wbiu740t': {
      'en': 'Light Mode',
      'pt': 'Modo de luz',
    },
    's5971e7s': {
      'en': 'Dark Mode',
      'pt': 'Modo escuro',
    },
    'n3qmt0u6': {
      'en': 'Get in Touch',
      'pt': 'Entre em contato',
    },
    'xp11z0da': {
      'en': 'Help & Support',
      'pt': 'Ajuda e Suporte',
    },
    'ufr3yhgk': {
      'en': 'Share [App Name]',
      'pt': 'Compartilhar [Nome do aplicativo]',
    },
    'riwckyhb': {
      'en': 'Close',
      'pt': 'Fechar',
    },
  },
  // modal_profile_edit
  {
    'qs8serr4': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'bvy3fs93': {
      'en': 'Below are your profile details',
      'pt': 'Abaixo estão os detalhes do seu perfil',
    },
    'nx89dnuw': {
      'en': 'Change Photo',
      'pt': 'Alterar foto',
    },
    '99oumm34': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    '8gkrs3rw': {
      'en': 'Short Description',
      'pt': 'Descrição curta',
    },
    'p1lquhce': {
      'en': 'The email associated with this account is:',
      'pt': 'O e-mail associado a esta conta é:',
    },
    'fyuvtufe': {
      'en': 'Created On:',
      'pt': 'Criado em:',
    },
    'h4jwedag': {
      'en': 'Last Active:',
      'pt': 'Última atividade:',
    },
    '27w5o6gn': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'gz2xhplu': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
  },
  // modal_faccao_edit
  {
    'ze3l1q4r': {
      'en': 'Edit Faction',
      'pt': 'Editar Facção',
    },
    '7tuc4kk2': {
      'en': 'Please enter the information below to edit a Faction.',
      'pt': 'Insira as informações abaixo para editar uma Facção.',
    },
    'xscprapi': {
      'en': 'Update foto',
      'pt': 'Atararr foto',
    },
    'rq3zqf7i': {
      'en': 'Nome da facção',
      'pt': 'Nome da facção',
    },
    '2huj2jzx': {
      'en': 'Faction Name',
      'pt': 'Nome da Facção',
    },
    '0lr3g0go': {
      'en': 'Descrição ou Biografia',
      'pt': 'Descrição ou Biografia',
    },
    'krgsdp6s': {
      'en': 'Description here...',
      'pt': 'Descrição aqui...',
    },
    'ntyay3mi': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'yg28k56i': {
      'en': 'Please enter a project name...',
      'pt': 'Por favor, insira um nome de projeto...',
    },
    '59ol7bwt': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Selecione uma opção no menu suspenso',
    },
    'fwvtuuff': {
      'en': 'Please enter a short description...',
      'pt': 'Insira uma breve descrição...',
    },
    '9bj3lmc0': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Selecione uma opção no menu suspenso',
    },
  },
  // dropdown_member_edit
  {
    'u54lnftd': {
      'en': 'Options',
      'pt': 'Opções',
    },
    '3mts0ojl': {
      'en': 'Edit',
      'pt': 'Editar',
    },
    'bxwf45ar': {
      'en': 'View',
      'pt': 'Visualizar',
    },
    '9sla7wvn': {
      'en': 'Share',
      'pt': 'Compartilhar',
    },
    '4nzsvalr': {
      'en': 'Delete',
      'pt': 'Excluir',
    },
  },
  // dropdown_faccao_edit
  {
    '0rwad3cv': {
      'en': 'Options',
      'pt': 'Opções',
    },
    'vh5aos42': {
      'en': 'Edit',
      'pt': 'Editar',
    },
    '27xaiak4': {
      'en': 'Viewe',
      'pt': 'Ver',
    },
    'kp1omh4j': {
      'en': 'Share',
      'pt': 'Compartilhar',
    },
    'vu30hinr': {
      'en': 'Delete',
      'pt': 'Excluir',
    },
  },
  // modal_app_bar
  {
    'qxwj6eeq': {
      'en': 'Add Member',
      'pt': 'Adicionar membro',
    },
  },
  // Miscellaneous
  {
    '0nwoj0kc': {
      'en': 'Email address',
      'pt': 'Endereço de email',
    },
    'upni203i': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'x5hsigqw': {
      'en': 'Button',
      'pt': 'Botão',
    },
    '9wy77t9v': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'woezzutp': {
      'en': 'Button',
      'pt': 'Botão',
    },
    '2bj20mi4': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'oztjr3ws': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'hc87g50d': {
      'en': 'Button',
      'pt': 'Botão',
    },
    '8ct6cr3a': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'e368pegn': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'yv65a6i5': {
      'en': 'Button',
      'pt': 'Botão',
    },
    '4r7kaahz': {
      'en': 'Calling',
      'pt': 'Chamando',
    },
    '9zk4wopm': {
      'en': 'Not Called',
      'pt': 'Não chamado',
    },
    'xn2fkope': {
      'en': 'Pending Review',
      'pt': 'Revisão pendente',
    },
    'jv85czds': {
      'en': 'Closed',
      'pt': 'Fechado',
    },
    'swt4x372': {
      'en': 'Completed',
      'pt': 'Concluído',
    },
    '5w6ne1dl': {
      'en': 'Please select...',
      'pt': 'Por favor selecione...',
    },
    'uhfmgei0': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'lted0txl': {
      'en': 'All',
      'pt': 'Todos',
    },
    'm6iqz668': {
      'en': 'Pending',
      'pt': 'Pendente',
    },
    'x2pvxk5r': {
      'en': 'Completed',
      'pt': 'Concluído',
    },
    'txjoh349': {
      'en': 'Calling',
      'pt': 'Chamando',
    },
    'qube3xir': {
      'en': 'All',
      'pt': 'Todos',
    },
    'mxalfkji': {
      'en': '50%',
      'pt': '50%',
    },
    'z6o24u9q': {
      'en': 'Notifications',
      'pt': 'Notificações',
    },
    'poegde7v': {
      'en': 'Notifications',
      'pt': 'Notificações',
    },
    'v3vjad01': {
      'en': 'Turn on notifications',
      'pt': 'Ativar notificações',
    },
    'bqjgqich': {
      'en': 'Male',
      'pt': 'Macho',
    },
    'rzl2h9ar': {
      'en': 'Female',
      'pt': 'Fêmea',
    },
    'qtchqf19': {
      'en': 'Other',
      'pt': 'Outro',
    },
    '82a75t5n': {
      'en': 'Design',
      'pt': 'Projeto',
    },
    'w82xuklg': {
      'en': 'Marketing',
      'pt': 'Marketing',
    },
    '5uiyxwtk': {
      'en': 'Development',
      'pt': 'Desenvolvimento',
    },
    '3wjkerx7': {
      'en': 'Management',
      'pt': 'Gerenciamento',
    },
    'p6rgfj1v': {
      'en': 'Operations',
      'pt': 'Operações',
    },
    'c8uww550': {
      'en': 'Customer Service',
      'pt': 'Atendimento ao Cliente',
    },
    '2rhm2suy': {
      'en': 'Design',
      'pt': 'Projeto',
    },
    'r7nbw4y6': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'pog1sboe': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'lrdd3chp': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'hxsxj681': {
      'en': '',
      'pt': '',
    },
    'e7agr7ys': {
      'en': '',
      'pt': '',
    },
    '65e2tfs2': {
      'en': '',
      'pt': '',
    },
    'ddazihx4': {
      'en': '',
      'pt': '',
    },
    'db03cpjj': {
      'en': '',
      'pt': '',
    },
    'fdb9078p': {
      'en': '',
      'pt': '',
    },
    '80ouzj9q': {
      'en': '',
      'pt': '',
    },
    '6rzhptp9': {
      'en': '',
      'pt': '',
    },
    'ce8c4ty0': {
      'en': '',
      'pt': '',
    },
    'ehb9j2eu': {
      'en': '',
      'pt': '',
    },
    '91bvb462': {
      'en': '',
      'pt': '',
    },
    'hirpbigs': {
      'en': '',
      'pt': '',
    },
    'wj8451yf': {
      'en': '',
      'pt': '',
    },
    'kcvqa08x': {
      'en': '',
      'pt': '',
    },
    'dqrzd6sq': {
      'en': '',
      'pt': '',
    },
    'dpqtohyf': {
      'en': '',
      'pt': '',
    },
    'v01vf71s': {
      'en': '',
      'pt': '',
    },
    'gcv6def1': {
      'en': '',
      'pt': '',
    },
    'um9es99m': {
      'en': '',
      'pt': '',
    },
    'o4enbz4j': {
      'en': '',
      'pt': '',
    },
    '8z4tvfh7': {
      'en': '',
      'pt': '',
    },
    '2ybzla8x': {
      'en': '',
      'pt': '',
    },
    'd1wdf5i1': {
      'en': '',
      'pt': '',
    },
    'f4rdu9en': {
      'en': '',
      'pt': '',
    },
    '2py80kgi': {
      'en': '',
      'pt': '',
    },
    'p6lsrh2a': {
      'en': '',
      'pt': '',
    },
    'ne8cclp9': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
