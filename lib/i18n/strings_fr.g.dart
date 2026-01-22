///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String get app_name => 'Atomic Blend';
	@override String get app_name_saas => 'Atomic Blend Cloud';
	@override late final _TranslationsAuthFr auth = _TranslationsAuthFr._(_root);
	@override late final _TranslationsTagsFr tags = _TranslationsTagsFr._(_root);
	@override late final _TranslationsAccountFr account = _TranslationsAccountFr._(_root);
	@override late final _TranslationsUnderConstructionFr under_construction = _TranslationsUnderConstructionFr._(_root);
	@override late final _TranslationsMoreFr more = _TranslationsMoreFr._(_root);
	@override late final _TranslationsActionsFr actions = _TranslationsActionsFr._(_root);
	@override late final _TranslationsLoadingFr loading = _TranslationsLoadingFr._(_root);
	@override late final _TranslationsValidationFr validation = _TranslationsValidationFr._(_root);
	@override Map<String, String> get errors => {
		'wrong_email_password': 'Adresse e-mail ou mot de passe incorrect',
		'email_malformed': 'Adresse e-mail invalide',
		'unknown_error': 'Une erreur inconnue s\'est produite',
	};
	@override late final _TranslationsNameGeneratorFr name_generator = _TranslationsNameGeneratorFr._(_root);
	@override late final _TranslationsPaywallFr paywall = _TranslationsPaywallFr._(_root);
	@override late final _TranslationsMyNotesFr my_notes = _TranslationsMyNotesFr._(_root);
	@override late final _TranslationsRecentlyDeletedFr recently_deleted = _TranslationsRecentlyDeletedFr._(_root);
	@override late final _TranslationsOrganizeFr organize = _TranslationsOrganizeFr._(_root);
	@override late final _TranslationsFoldersFr folders = _TranslationsFoldersFr._(_root);
	@override late final _TranslationsSearchFr search = _TranslationsSearchFr._(_root);
	@override late final _TranslationsDatesFr dates = _TranslationsDatesFr._(_root);
	@override late final _TranslationsTimeUnitsFr time_units = _TranslationsTimeUnitsFr._(_root);
	@override late final _TranslationsSyncFr sync = _TranslationsSyncFr._(_root);
	@override late final _TranslationsConflictDetectedModalFr conflict_detected_modal = _TranslationsConflictDetectedModalFr._(_root);
}

// Path: auth
class _TranslationsAuthFr implements TranslationsAuthEn {
	_TranslationsAuthFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthNotLoggedInFr not_logged_in = _TranslationsAuthNotLoggedInFr._(_root);
	@override late final _TranslationsAuthLoginOrRegisterFr login_or_register = _TranslationsAuthLoginOrRegisterFr._(_root);
	@override late final _TranslationsAuthLoginFr login = _TranslationsAuthLoginFr._(_root);
	@override late final _TranslationsAuthRegisterFr register = _TranslationsAuthRegisterFr._(_root);
	@override late final _TranslationsAuthDeleteAccountFr delete_account = _TranslationsAuthDeleteAccountFr._(_root);
	@override late final _TranslationsAuthMnemonicKeyFr mnemonic_key = _TranslationsAuthMnemonicKeyFr._(_root);
	@override late final _TranslationsAuthResetPasswordFr reset_password = _TranslationsAuthResetPasswordFr._(_root);
}

// Path: tags
class _TranslationsTagsFr implements TranslationsTagsEn {
	_TranslationsTagsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tags';
	@override late final _TranslationsTagsAddModalFr add_modal = _TranslationsTagsAddModalFr._(_root);
	@override late final _TranslationsTagsDeleteFr delete = _TranslationsTagsDeleteFr._(_root);
}

// Path: account
class _TranslationsAccountFr implements TranslationsAccountEn {
	_TranslationsAccountFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get edit_profile => 'Modifier le profil';
	@override late final _TranslationsAccountSectionsFr sections = _TranslationsAccountSectionsFr._(_root);
	@override late final _TranslationsAccountActionsFr actions = _TranslationsAccountActionsFr._(_root);
	@override late final _TranslationsAccountSubscriptionPaymentsFr subscription_payments = _TranslationsAccountSubscriptionPaymentsFr._(_root);
	@override late final _TranslationsAccountProfileFr profile = _TranslationsAccountProfileFr._(_root);
	@override late final _TranslationsAccountSecurityAndPrivacyFr security_and_privacy = _TranslationsAccountSecurityAndPrivacyFr._(_root);
}

// Path: under_construction
class _TranslationsUnderConstructionFr implements TranslationsUnderConstructionEn {
	_TranslationsUnderConstructionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'On travaille dessus !';
	@override String get description => 'Cette fonctionnalité est en cours de développement.\n\nRevenez bientôt pour découvrir les dernières mises à jour !';
}

// Path: more
class _TranslationsMoreFr implements TranslationsMoreEn {
	_TranslationsMoreFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plus';
}

// Path: actions
class _TranslationsActionsFr implements TranslationsActionsEn {
	_TranslationsActionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get save => 'Enregistrer';
	@override String get cancel => 'Annuler';
	@override String get next => 'Suivant';
	@override String get back => 'Retour';
	@override String get delete => 'Supprimer';
	@override String get add => 'Ajouter';
	@override String get edit => 'Modifier';
	@override String get clear => 'Effacer';
	@override String get close => 'Fermer';
	@override String get subscribe => 'S\'abonner';
}

// Path: loading
class _TranslationsLoadingFr implements TranslationsLoadingEn {
	_TranslationsLoadingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get simple => 'Chargement en cours...';
}

// Path: validation
class _TranslationsValidationFr implements TranslationsValidationEn {
	_TranslationsValidationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get required => 'Ce champ est obligatoire';
	@override String get invalid_url => 'URL invalide';
}

// Path: name_generator
class _TranslationsNameGeneratorFr implements TranslationsNameGeneratorEn {
	_TranslationsNameGeneratorFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override List<String> get animals => [
		'hibou',
		'renard',
		'lapin',
		'loutre',
		'pingouin',
		'panda',
		'écureuil',
		'koala',
		'tigre',
		'girafe',
		'singe',
		'raton-laveur',
		'zèbre',
		'kangourou',
		'perroquet',
		'dauphin',
		'paresseux',
		'loup',
		'lion',
		'ours',
		'aigle',
		'éléphant',
		'léopard',
		'guépard',
		'hippopotame',
		'lemurien',
		'grenouille',
		'caméléon',
		'lynx',
		'macareux',
		'phoque',
		'faucon',
		'orque',
		'suricate',
		'hérisson',
		'belette',
		'tatou',
		'wombat',
		'ornithorynque',
		'blaireau',
		'yak',
		'lézard',
		'scarabée',
		'chenille',
		'jaguar',
		'buffle',
		'raie',
		'taupe',
		'âne',
		'toucan',
		'flamant',
		'chèvre',
		'alpaga',
		'orignal',
		'paon',
		'rhinocéros',
		'gecko',
		'dinde',
		'hamster',
		'loutre',
		'gorille',
		'morse',
		'vautour',
		'raie',
		'triton',
		'iguane',
		'porc-épic',
		'python',
		'antilope',
		'gibbon',
		'sanglier',
		'grue',
		'émeu',
		'pélican',
		'hyène',
		'héron',
		'agneau',
		'tortue',
		'crevette',
		'homard',
		'papillon de nuit',
		'palourde',
		'poisson-globe',
		'étoile de mer',
		'pie-grièche',
		'rouge-gorge',
		'caille',
		'koala',
		'escargot',
		'limace',
		'hibou',
		'vipère',
		'canard',
		'hirondelle',
		'crabe',
		'lama',
		'mangouste',
		'chaton',
	];
	@override List<String> get adjectives => [
		'joyeux',
		'courageux',
		'rigolo',
		'jovial',
		'espiègle',
		'brillant',
		'farfelu',
		'curieux',
		'rapide',
		'audacieux',
		'puissant',
		'malin',
		'rusé',
		'doux',
		'pelucheux',
		'excentrique',
		'rebondissant',
		'étincelant',
		'vif',
		'chantant',
		'lustré',
		'claquant',
		'brillant',
		'rêveur',
		'frétillant',
		'ensoleillé',
		'dingue',
		'sauvage',
		'funky',
		'intrépide',
		'confortable',
		'croquant',
		'vivant',
		'coquin',
		'spirituel',
		'dynamique',
		'pétillant',
		'astucieux',
		'élégant',
		'souriant',
		'chanceux',
		'plein d\'énergie',
		'chouette',
		'soigné',
		'frisquet',
		'venté',
		'gai',
		'gracieux',
		'courageux',
		'étourdi',
		'agile',
		'fantasque',
		'habile',
		'chanteur',
		'sautillant',
		'bizarre',
		'épicé',
		'énergique',
		'rapide',
		'pratique',
		'vacillant',
		'croustillant',
		'grognon',
		'chic',
		'plein d\'entrain',
		'bouillonnant',
		'éclaboussant',
		'venté',
		'rebondissant',
		'étincelant',
		'joyeux',
		'moelleux',
		'loufoque',
		'vivifiant',
		'claquant',
		'joyeux',
		'plumé',
		'piquant',
		'rapide',
		'vif',
		'moustachu',
		'tacheté',
		'rayé',
		'fougueux',
		'bavard',
		'distingué',
		'serpentin',
		'rigolo',
		'élégant',
		'sautillant',
		'dynamique',
		'skippy',
		'duveteux',
		'rondelet',
		'gonflé',
		'déjanté',
		'rose',
		'exubérant',
		'raffiné',
	];
}

// Path: paywall
class _TranslationsPaywallFr implements TranslationsPaywallEn {
	_TranslationsPaywallFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obtenez AtomicBlend Cloud';
	@override String get subtitle => 'Profitez d\'Atomic Blend sans restrictions et aidez l\'initiative open source.';
	@override late final _TranslationsPaywallAdvantagesFr advantages = _TranslationsPaywallAdvantagesFr._(_root);
	@override Map<String, dynamic> get pricing => {
		'\$rc_annual': _TranslationsPaywallPricing$rcAnnualFr._(_root),
		'\$rc_monthly': _TranslationsPaywallPricing$rcMonthlyFr._(_root),
		'cloud_yearly': _TranslationsPaywallPricingCloudYearlyFr._(_root),
		'cloud_monthly': _TranslationsPaywallPricingCloudMonthlyFr._(_root),
	};
	@override String get no_package_selected => 'Aucun package sélectionné';
	@override String get purchase_failed => 'Échec de l\'achat';
	@override String get restore_purchase => 'Restaurer l\'achat';
	@override String get terms => 'Conditions d\'utilisation';
	@override String get privacy_policy => 'Politique de confidentialité';
	@override String get success => 'Achat réussi !';
	@override String get payment_in_progress => 'Paiement en cours';
	@override String get payment_in_progress_description => 'Veuillez patienter pendant que nous traitons votre paiement.';
	@override String get validation_failed => 'Échec de la validation';
	@override String get validation_failed_description => 'Veuillez vérifier votre connexion Internet et redémarrer l\'application.';
	@override String get mobile_app_required => 'Application mobile requise';
	@override String get payment_on_mobile_for_better_xp => 'Pour vous offrir la meilleure expérience possible, le paiement et la configuration du compte ne sont disponibles que sur l\'application mobile.';
	@override String get ios => 'iOS';
	@override String get android => 'Android';
}

// Path: my_notes
class _TranslationsMyNotesFr implements TranslationsMyNotesEn {
	_TranslationsMyNotesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mes Notes';
	@override String get untitled => 'Sans titre';
	@override String get no_content => 'Aucun contenu';
	@override late final _TranslationsMyNotesDeleteNoteFr delete_note = _TranslationsMyNotesDeleteNoteFr._(_root);
}

// Path: recently_deleted
class _TranslationsRecentlyDeletedFr implements TranslationsRecentlyDeletedEn {
	_TranslationsRecentlyDeletedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Récemment supprimées';
	@override String get no_notes => 'Aucune note récemment supprimée';
}

// Path: organize
class _TranslationsOrganizeFr implements TranslationsOrganizeEn {
	_TranslationsOrganizeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Organiser';
	@override String get latest_items => 'Derniers éléments';
}

// Path: folders
class _TranslationsFoldersFr implements TranslationsFoldersEn {
	_TranslationsFoldersFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dossiers';
	@override String get add_folder => 'Ajouter un dossier';
	@override String get edit_folder => 'Modifier le dossier';
	@override String get name => 'Nom du dossier';
	@override String get name_hint => 'Travail';
	@override String get name_description => 'Définissez un nom pour votre dossier, il sera affiché dans le tableau de bord et dans les notifications.';
	@override String get name_required => 'Le nom du dossier est requis';
	@override String get color => 'Couleur du dossier';
	@override String get color_description => 'Choisissez une couleur pour votre dossier, cela vous aidera à le distinguer des autres.';
	@override String get primary => 'Primaire';
	@override String get accent => 'Accent';
	@override String get no_folders => 'Aucun dossier pour le moment';
	@override String get wheel => 'Roue';
	@override String get search_emoji_hint => 'Rechercher un emoji';
	@override late final _TranslationsFoldersDeleteFr delete = _TranslationsFoldersDeleteFr._(_root);
}

// Path: search
class _TranslationsSearchFr implements TranslationsSearchEn {
	_TranslationsSearchFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rechercher';
}

// Path: dates
class _TranslationsDatesFr implements TranslationsDatesEn {
	_TranslationsDatesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get today => 'Aujourd\'hui';
	@override String get tomorrow => 'Demain';
}

// Path: time_units
class _TranslationsTimeUnitsFr implements TranslationsTimeUnitsEn {
	_TranslationsTimeUnitsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsTimeUnitsShortFr short = _TranslationsTimeUnitsShortFr._(_root);
	@override late final _TranslationsTimeUnitsLongFr long = _TranslationsTimeUnitsLongFr._(_root);
}

// Path: sync
class _TranslationsSyncFr implements TranslationsSyncEn {
	_TranslationsSyncFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronisation';
	@override String get description => 'Gardez vos données à jour sur tous vos appareils';
	@override String get status => 'État';
	@override String get loading => 'Chargement...';
	@override String get up_to_date => 'À jour';
	@override String get conflicts => 'Conflits';
	@override String x_items_have_conflicts({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		zero: 'Aucun élément n\'a de conflits',
		one: '1 élément a des conflits',
		other: '${n} éléments ont des conflits',
	);
	@override late final _TranslationsSyncDetailsFr details = _TranslationsSyncDetailsFr._(_root);
	@override String get sync_now => 'Synchroniser maintenant';
	@override late final _TranslationsSyncConflictResolverFr conflict_resolver = _TranslationsSyncConflictResolverFr._(_root);
}

// Path: conflict_detected_modal
class _TranslationsConflictDetectedModalFr implements TranslationsConflictDetectedModalEn {
	_TranslationsConflictDetectedModalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conflit détecté';
	@override String get description => 'Les modifications précédentes de cette tâche effectuées hors ligne entrent en conflit avec la version actuelle de la tâche.';
	@override String get warning => 'Vous pouvez soit résoudre les conflits maintenant, soit revenir plus tard pour les résoudre.';
	@override String get resolve_now => 'Résoudre';
	@override String get later => 'Plus tard';
}

// Path: auth.not_logged_in
class _TranslationsAuthNotLoggedInFr implements TranslationsAuthNotLoggedInEn {
	_TranslationsAuthNotLoggedInFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Bienvenue sur Atomic Blend';
	@override String get description_start => 'Atomic Blend est la première';
	@override String get e2e_app => 'application chiffrée de bout en bout';
	@override String get description_middle => 'qui regroupe tous les outils dont vous avez besoin pour gérer à la fois votre travail et votre vie personnelle en un seul endroit.\n\nDe la gestion des tâches à la prise de notes, en passant par la rédaction de documents, le suivi du temps, le suivi des films, le suivi de l\'alimentation, tout reste';
	@override String get description_middle_bold => 'sécurisé et fluide.';
	@override String get description_end => 'Fini de jongler entre plusieurs applications—Atomic Blend rassemble tout avec la confidentialité au cœur de son fonctionnement, pour que vous puissiez vous concentrer sur l’essentiel.';
	@override String get time_to_set_things_up => 'À vous de jouer !';
	@override String get set_up_start => 'Pour utiliser Atomic Blend et synchroniser vos données sur tous vos appareils, vous pouvez choisir entre la version cloud ou une installation auto-hébergée.\n\nDans les deux cas, vos données sont';
	@override String get set_up_middle => 'chiffrées de bout en bout';
	@override String get set_up_end => ', garantissant que vous seul avez accès à votre clé de chiffrement —';
	@override String get set_up_end_bold => 'ni nous, ni personne d\'autre.';
	@override String get description => 'LifeOS est une application de gestion de la vie personnelle qui vous aide à organiser votre vie, à atteindre vos objectifs et à améliorer votre bien-être.';
}

// Path: auth.login_or_register
class _TranslationsAuthLoginOrRegisterFr implements TranslationsAuthLoginOrRegisterEn {
	_TranslationsAuthLoginOrRegisterFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get login => 'Se connecter';
	@override String get register => 'S\'inscrire';
	@override String get connecting_to => 'Connexion à : ';
}

// Path: auth.login
class _TranslationsAuthLoginFr implements TranslationsAuthLoginEn {
	_TranslationsAuthLoginFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '👋 Bon retour parmis nous !';
	@override String get description => 'Utilisez votre adresse e-mail et votre mot de passe pour vous reconnecter et accéder à vos données.';
	@override String get email => 'Adresse e-mail';
	@override String get login => 'Se connecter';
}

// Path: auth.register
class _TranslationsAuthRegisterFr implements TranslationsAuthRegisterEn {
	_TranslationsAuthRegisterFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get email => 'Quelle est votre adresse e-mail ?';
	@override String get email_description => 'Votre e-mail est utilisé uniquement a des fins de connexion et de récupération de mot de passe.';
	@override String get we_never_sell => 'Nous ne vendrons jamais vos données à des tiers.';
	@override String get password => 'Choisissez un mot de passe';
	@override String get password_hint => 'SuperSecure123!';
	@override String get confirmation_hint => 'Confirmez votre mot de passe';
	@override String get password_mismatch => 'Les mots de passe ne correspondent pas';
}

// Path: auth.delete_account
class _TranslationsAuthDeleteAccountFr implements TranslationsAuthDeleteAccountEn {
	_TranslationsAuthDeleteAccountFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer mon compte';
	@override String get description => 'Etes-vous sûr de vouloir supprimer votre compte ?';
	@override String get cannot_be_undone => 'Cette action est irréversible et toutes vos données seront perdues.';
}

// Path: auth.mnemonic_key
class _TranslationsAuthMnemonicKeyFr implements TranslationsAuthMnemonicKeyEn {
	_TranslationsAuthMnemonicKeyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Clé de récupération';
	@override String get description_start => 'Ceci est votre clé de récupération';
	@override String get description_mid => 'Écrivez-la sur un papier et gardez-la en sécurité.';
	@override String get description_end => 'Vous en aurez besoin pour récupérer l\'accès à vos données si vous perdez votre mot de passe.';
	@override String get mnemonic_hint => 'Entrez votre clé de récupération';
	@override String get mnemonic_error => 'Clé de récupération invalide';
	@override String get copy_success => 'Clé copiée dans le presse-papiers';
}

// Path: auth.reset_password
class _TranslationsAuthResetPasswordFr implements TranslationsAuthResetPasswordEn {
	_TranslationsAuthResetPasswordFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reset your password';
	@override String get subtitle => 'Vous ne vous souvenez pas de votre mot de passe ?';
	@override String get warning => 'Vous allez recevoir un code par email pour réinitialiser votre mot de passe, puis vous devrez entrer votre clé de récupération pour accéder à vos données.';
	@override String get no_mnemonic_data_loss => 'Si vous ne vous rappelez pas de votre clé de récupération, vous perdrez accès à toutes vos précédentes données.';
	@override String get email => 'Email';
	@override String get email_description => 'L\'adresse e-mail utilisée pour vous inscrire.';
	@override String get email_hint => 'atomicblend@gmail.com';
	@override String get email_required => 'L\'adresse e-mail est requise';
	@override String get confirmation_code => 'Code de confirmation';
	@override String get confirmation_code_description => 'Entrez le code que vous avez reçu par e-mail.';
	@override String get confirmation_code_hint => 'a1b5c3d4';
	@override String get confirmation_code_required => 'Le code de confirmation est requis';
	@override String get enter_the_confirmation_code => 'Entrez le code de confirmation';
	@override String get confirmation_code_sent => 'Un code de confirmation a été envoyé à votre adresse e-mail.';
	@override String get confirmation_code_sent_description => 'Vérifiez votre boîte de réception et entrez le code ci-dessous.';
	@override String get do_you_have_your_mnemonic_key => 'Avez-vous votre clé de récupération ?';
	@override String get backup_key_description => 'C\'est une phrase de 12 mots qui vous a été fournie lors de votre inscription. Vous en aurez besoin pour récupérer vos données.';
	@override String get yes_i_have => 'Oui, je l\'ai et je veux récupérer mes données';
	@override String get no_i_dont => 'Non, je ne l\'ai pas et je veux supprimer mes données';
	@override String get reset_data_warning => 'Je suis conscient qu\'en sélectionnant cette option, toutes mes données seront éffacées sans aucune possibilité de récupération.';
	@override String get mnemonic_key => 'Clé de récupération';
	@override String get mnemonic_key_description => 'Saisis votre clé de récupération pour accéder à vos données.';
	@override String get mnemonic_key_hint => 'business theme rotate together surprise wisdom powder knee view border local runway';
	@override String get mnemonic_key_required => 'La clé de récupération est requise';
	@override String get select_your_new_password => 'Sélectionnez votre nouveau mot de passe';
	@override String get select_your_new_password_description => 'Entrez un mot de passe fort pour protéger votre compte.';
	@override String get new_password => 'Nouveau mot de passe';
	@override String get new_password_description => 'Entrez un nouveau mot de passe pour votre compte.';
	@override String get new_password_hint => 'SuperSecure123!';
	@override String get new_password_required => 'Nouveau mot de passe requis';
	@override String get confirm_new_password => 'Confirmer le mot de passe';
	@override String get confirm_new_password_description => 'Entrez à nouveau votre mot de passe pour le confirmer.';
	@override String get confirm_new_password_required => 'Confirmer le mot de passe requis';
	@override String get password_mismatch => 'Les mots de passe ne correspondent pas';
	@override String get password_missing => 'Mot de passe manquant';
	@override String get password_too_short => 'Le mot de passe doit contenir au moins 8 caractères';
	@override String get recap_subtitle => 'Récapitulatif de la réinitialisation';
	@override String get yes => 'Oui';
	@override String get no => 'Non';
	@override String get confirm_reset => 'Confirmer la réinitialisation';
}

// Path: tags.add_modal
class _TranslationsTagsAddModalFr implements TranslationsTagsAddModalEn {
	_TranslationsTagsAddModalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajouter un nouveau tag';
	@override String get edit_title => 'Modifier le tag';
	@override String get name => 'Nom du tag';
	@override String get name_hint => 'Travail';
	@override String get name_description => 'Définissez un nom pour votre tag, cela sera affiché dans le tableau de bord et dans les notifications.';
	@override String get name_required => 'Le nom du tag est requis';
	@override String get color => 'Couleur du tag';
	@override String get color_description => 'Choisissez une couleur pour votre tag, cela vous aidera à le distinguer des autres.';
	@override String get primary => 'Primaire';
	@override String get accent => 'Accent';
	@override String get wheel => 'Roue';
}

// Path: tags.delete
class _TranslationsTagsDeleteFr implements TranslationsTagsDeleteEn {
	_TranslationsTagsDeleteFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer le tag';
	@override String get description => 'Êtes-vous sûr de vouloir supprimer ce tag ?';
	@override String get warning => 'Cette action est irréversible et le tag sera supprimé de tous les éléments associés.';
}

// Path: account.sections
class _TranslationsAccountSectionsFr implements TranslationsAccountSectionsEn {
	_TranslationsAccountSectionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get account => 'Compte';
}

// Path: account.actions
class _TranslationsAccountActionsFr implements TranslationsAccountActionsEn {
	_TranslationsAccountActionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get security => 'Sécurité et confidentialité';
	@override String get delete_account => 'Supprimer mon compte';
}

// Path: account.subscription_payments
class _TranslationsAccountSubscriptionPaymentsFr implements TranslationsAccountSubscriptionPaymentsEn {
	_TranslationsAccountSubscriptionPaymentsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abonnement & Paiements';
	@override String subscription({required Object subName}) => 'Abonnement ${subName}';
	@override String get latest_subscription => 'Ceci est votre abonnement avec la date de facturation la plus récente.';
	@override String get billing_cycle => 'Cycle de facturation';
	@override String get current_price => 'Prix actuel';
	@override String get next_billing_date => 'Prochaine date de facturation';
	@override String get payment_history => 'Historique des paiements';
	@override String get no_payments => 'Aucun paiement trouvé';
	@override String get manage_my_subscription => 'Gérer mon abonnement';
	@override String get management_url_only_mobile => 'Vous ne pouvez gérer votre abonnement que depuis l\'application iOS ou Android.';
}

// Path: account.profile
class _TranslationsAccountProfileFr implements TranslationsAccountProfileEn {
	_TranslationsAccountProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get my_profile => 'Mon profil';
	@override String get email => 'Adresse e-mail';
	@override String get undefined => 'Non défini';
	@override String get email_missing => 'Adresse e-mail manquante';
	@override String get email_same => 'L\'adresse e-mail doit être différente de l\'adresse e-mail actuelle';
}

// Path: account.security_and_privacy
class _TranslationsAccountSecurityAndPrivacyFr implements TranslationsAccountSecurityAndPrivacyEn {
	_TranslationsAccountSecurityAndPrivacyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sécurité et confidentialité';
	@override late final _TranslationsAccountSecurityAndPrivacyChangePasswordFr change_password = _TranslationsAccountSecurityAndPrivacyChangePasswordFr._(_root);
}

// Path: paywall.advantages
class _TranslationsPaywallAdvantagesFr implements TranslationsPaywallAdvantagesEn {
	_TranslationsPaywallAdvantagesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaywallAdvantagesAllAppsOfTheSuiteFr all_apps_of_the_suite = _TranslationsPaywallAdvantagesAllAppsOfTheSuiteFr._(_root);
	@override late final _TranslationsPaywallAdvantagesEndToEndEncryptedFr end_to_end_encrypted = _TranslationsPaywallAdvantagesEndToEndEncryptedFr._(_root);
	@override late final _TranslationsPaywallAdvantagesUnlimitedTasksFr unlimited_tasks = _TranslationsPaywallAdvantagesUnlimitedTasksFr._(_root);
	@override late final _TranslationsPaywallAdvantagesUnlimitedHabitsFr unlimited_habits = _TranslationsPaywallAdvantagesUnlimitedHabitsFr._(_root);
	@override late final _TranslationsPaywallAdvantagesUnlimitedTagsFr unlimited_tags = _TranslationsPaywallAdvantagesUnlimitedTagsFr._(_root);
	@override late final _TranslationsPaywallAdvantagesSyncAcrossDevicesFr sync_across_devices = _TranslationsPaywallAdvantagesSyncAcrossDevicesFr._(_root);
	@override late final _TranslationsPaywallAdvantagesCommunityBackedFr community_backed = _TranslationsPaywallAdvantagesCommunityBackedFr._(_root);
}

// Path: paywall.pricing.\$rc_annual
class _TranslationsPaywallPricing$rcAnnualFr implements TranslationsPaywallPricing$rcAnnualEn {
	_TranslationsPaywallPricing$rcAnnualFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Annuel';
	@override String get price => '3.33€/mo';
	@override String get billed => 'facturé à 39.99€/an';
	@override String get discount => '16% off';
}

// Path: paywall.pricing.\$rc_monthly
class _TranslationsPaywallPricing$rcMonthlyFr implements TranslationsPaywallPricing$rcMonthlyEn {
	_TranslationsPaywallPricing$rcMonthlyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mensuel';
	@override String get price => '3.99€/mo';
	@override String get billed => 'facturé à 3.99€/mois';
	@override String get discount => '';
}

// Path: paywall.pricing.cloud_yearly
class _TranslationsPaywallPricingCloudYearlyFr implements TranslationsPaywallPricingCloudYearlyEn {
	_TranslationsPaywallPricingCloudYearlyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Annuel';
	@override String get price => '3.33€/mo';
	@override String get billed => 'facturé à 39.99€/an';
	@override String get discount => '16% off';
}

// Path: paywall.pricing.cloud_monthly
class _TranslationsPaywallPricingCloudMonthlyFr implements TranslationsPaywallPricingCloudMonthlyEn {
	_TranslationsPaywallPricingCloudMonthlyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mensuel';
	@override String get price => '3.99€/mo';
	@override String get billed => 'facturé à 3.99€/mois';
	@override String get discount => '';
}

// Path: my_notes.delete_note
class _TranslationsMyNotesDeleteNoteFr implements TranslationsMyNotesDeleteNoteEn {
	_TranslationsMyNotesDeleteNoteFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer la note';
	@override String get description => 'Êtes-vous sûr de vouloir supprimer cette note ?';
	@override String get warning => 'Cette action ne peut pas être annulée.';
}

// Path: folders.delete
class _TranslationsFoldersDeleteFr implements TranslationsFoldersDeleteEn {
	_TranslationsFoldersDeleteFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer le dossier';
	@override String get description => 'Êtes-vous sûr de vouloir supprimer ce dossier ?';
	@override String get warning => 'Cette action est irréversible et le dossier sera supprimé de tous les éléments associés.';
}

// Path: time_units.short
class _TranslationsTimeUnitsShortFr implements TranslationsTimeUnitsShortEn {
	_TranslationsTimeUnitsShortFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get day => 'j';
	@override String get hour => 'h';
	@override String get minute => 'm';
}

// Path: time_units.long
class _TranslationsTimeUnitsLongFr implements TranslationsTimeUnitsLongEn {
	_TranslationsTimeUnitsLongFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		zero: 'jour',
		one: 'jour',
		other: 'jours',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		zero: 'heure',
		one: 'heure',
		other: 'heures',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		zero: 'minute',
		one: 'minute',
		other: 'minutes',
	);
}

// Path: sync.details
class _TranslationsSyncDetailsFr implements TranslationsSyncDetailsEn {
	_TranslationsSyncDetailsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Détails';
	@override String get tasks => 'Tâches';
	@override String get notes => 'Notes';
	@override String task_items({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		zero: 'Aucune tâche',
		one: '1 tâche',
		other: '${n} tâches',
	);
	@override String notes_items({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		zero: 'Aucune note',
		one: '1 note',
		other: '${n} notes',
	);
}

// Path: sync.conflict_resolver
class _TranslationsSyncConflictResolverFr implements TranslationsSyncConflictResolverEn {
	_TranslationsSyncConflictResolverFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Résolveur de Conflits';
	@override String patch_date({required Object date}) => 'Date de mise à jour : ${date}';
	@override Map<String, String> get item_type => {
		'task': 'Tâche',
		'note': 'Note',
	};
	@override String get choose_between => 'Choisissez entre accepter ou refuser les modifications';
	@override String get refuse => 'Refuser';
	@override String get accept => 'Accepter';
	@override String get upcoming => 'À venir';
	@override String get in_app_version => 'Dans l\'application';
	@override String get apply_to_all => 'Appliquer la décision à tous les conflits';
	@override String get changes_to_apply => 'Modifications à appliquer';
	@override Map<String, dynamic> get fields => {
		'title': 'Titre',
		'end_date': 'Date de fin',
		'description': 'Notes',
		'undefined': 'Non défini',
		'start_date': 'Date de début',
		'reminders_title': 'Rappels',
		'reminders': ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
			zero: 'Aucun rappel',
			one: '1 rappel',
			other: '${n} rappels',
		),
		'priority': 'Priorité',
		'folder': 'Dossier',
		'tags': ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
			zero: 'Aucun tag',
			one: '1 tag',
			other: '${n} tags',
		),
	};
	@override String get progress => 'Progression';
}

// Path: account.security_and_privacy.change_password
class _TranslationsAccountSecurityAndPrivacyChangePasswordFr implements TranslationsAccountSecurityAndPrivacyChangePasswordEn {
	_TranslationsAccountSecurityAndPrivacyChangePasswordFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Changer le mot de passe';
	@override String get old_password => 'Ancien mot de passe';
	@override String get new_password => 'Nouveau mot de passe';
	@override String get confirm_password => 'Confirmer le mot de passe';
	@override String get old_password_required => 'Ancien mot de passe requis';
	@override String get new_password_required => 'Nouveau mot de passe requis';
	@override String get confirm_password_required => 'Confirmer le mot de passe requis';
	@override String get password_mismatch => 'Les mots de passe ne correspondent pas';
	@override String get password_hint => 'SuperSecure123!';
	@override String get warning_changing_pws_will_log_you_out => 'Changer le mot de passe vous déconnectera de l\'application.';
}

// Path: paywall.advantages.all_apps_of_the_suite
class _TranslationsPaywallAdvantagesAllAppsOfTheSuiteFr implements TranslationsPaywallAdvantagesAllAppsOfTheSuiteEn {
	_TranslationsPaywallAdvantagesAllAppsOfTheSuiteFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Toutes les applications de la suite';
	@override String get description => 'Accédez à toutes les applications de la suite, y compris Tâches, Habitudes, Calendrier, Notes, et plus encore.';
}

// Path: paywall.advantages.end_to_end_encrypted
class _TranslationsPaywallAdvantagesEndToEndEncryptedFr implements TranslationsPaywallAdvantagesEndToEndEncryptedEn {
	_TranslationsPaywallAdvantagesEndToEndEncryptedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chiffrement de bout en bout';
	@override String get description => 'Vos données sont à vous, pour toujours.';
}

// Path: paywall.advantages.unlimited_tasks
class _TranslationsPaywallAdvantagesUnlimitedTasksFr implements TranslationsPaywallAdvantagesUnlimitedTasksEn {
	_TranslationsPaywallAdvantagesUnlimitedTasksFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tâches Illimitées';
	@override String get description => 'Créez autant de tâches que vous le souhaitez, sans limites.';
}

// Path: paywall.advantages.unlimited_habits
class _TranslationsPaywallAdvantagesUnlimitedHabitsFr implements TranslationsPaywallAdvantagesUnlimitedHabitsEn {
	_TranslationsPaywallAdvantagesUnlimitedHabitsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Habitudes Illimitées';
	@override String get description => 'Faites un pas vers une vie plus saine avec des habitudes illimitées.';
}

// Path: paywall.advantages.unlimited_tags
class _TranslationsPaywallAdvantagesUnlimitedTagsFr implements TranslationsPaywallAdvantagesUnlimitedTagsEn {
	_TranslationsPaywallAdvantagesUnlimitedTagsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tags / Dossiers Illimités';
	@override String get description => 'Utilisez autant de tags et de dossiers que nécessaire pour organiser votre vie.';
}

// Path: paywall.advantages.sync_across_devices
class _TranslationsPaywallAdvantagesSyncAcrossDevicesFr implements TranslationsPaywallAdvantagesSyncAcrossDevicesEn {
	_TranslationsPaywallAdvantagesSyncAcrossDevicesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronisation entre appareils';
	@override String get description => 'Accédez à vos données depuis n\'importe quel appareil, n\'importe où.';
}

// Path: paywall.advantages.community_backed
class _TranslationsPaywallAdvantagesCommunityBackedFr implements TranslationsPaywallAdvantagesCommunityBackedEn {
	_TranslationsPaywallAdvantagesCommunityBackedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Soutien de la communauté';
	@override String get description => '100% opensource : rejoignez une communauté d\'utilisateurs qui soutiennent le projet.';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app_name' => 'Atomic Blend',
			'app_name_saas' => 'Atomic Blend Cloud',
			'auth.not_logged_in.welcome' => 'Bienvenue sur Atomic Blend',
			'auth.not_logged_in.description_start' => 'Atomic Blend est la première',
			'auth.not_logged_in.e2e_app' => 'application chiffrée de bout en bout',
			'auth.not_logged_in.description_middle' => 'qui regroupe tous les outils dont vous avez besoin pour gérer à la fois votre travail et votre vie personnelle en un seul endroit.\n\nDe la gestion des tâches à la prise de notes, en passant par la rédaction de documents, le suivi du temps, le suivi des films, le suivi de l\'alimentation, tout reste',
			'auth.not_logged_in.description_middle_bold' => 'sécurisé et fluide.',
			'auth.not_logged_in.description_end' => 'Fini de jongler entre plusieurs applications—Atomic Blend rassemble tout avec la confidentialité au cœur de son fonctionnement, pour que vous puissiez vous concentrer sur l’essentiel.',
			'auth.not_logged_in.time_to_set_things_up' => 'À vous de jouer !',
			'auth.not_logged_in.set_up_start' => 'Pour utiliser Atomic Blend et synchroniser vos données sur tous vos appareils, vous pouvez choisir entre la version cloud ou une installation auto-hébergée.\n\nDans les deux cas, vos données sont',
			'auth.not_logged_in.set_up_middle' => 'chiffrées de bout en bout',
			'auth.not_logged_in.set_up_end' => ', garantissant que vous seul avez accès à votre clé de chiffrement —',
			'auth.not_logged_in.set_up_end_bold' => 'ni nous, ni personne d\'autre.',
			'auth.not_logged_in.description' => 'LifeOS est une application de gestion de la vie personnelle qui vous aide à organiser votre vie, à atteindre vos objectifs et à améliorer votre bien-être.',
			'auth.login_or_register.login' => 'Se connecter',
			'auth.login_or_register.register' => 'S\'inscrire',
			'auth.login_or_register.connecting_to' => 'Connexion à : ',
			'auth.login.title' => '👋 Bon retour parmis nous !',
			'auth.login.description' => 'Utilisez votre adresse e-mail et votre mot de passe pour vous reconnecter et accéder à vos données.',
			'auth.login.email' => 'Adresse e-mail',
			'auth.login.login' => 'Se connecter',
			'auth.register.email' => 'Quelle est votre adresse e-mail ?',
			'auth.register.email_description' => 'Votre e-mail est utilisé uniquement a des fins de connexion et de récupération de mot de passe.',
			'auth.register.we_never_sell' => 'Nous ne vendrons jamais vos données à des tiers.',
			'auth.register.password' => 'Choisissez un mot de passe',
			'auth.register.password_hint' => 'SuperSecure123!',
			'auth.register.confirmation_hint' => 'Confirmez votre mot de passe',
			'auth.register.password_mismatch' => 'Les mots de passe ne correspondent pas',
			'auth.delete_account.title' => 'Supprimer mon compte',
			'auth.delete_account.description' => 'Etes-vous sûr de vouloir supprimer votre compte ?',
			'auth.delete_account.cannot_be_undone' => 'Cette action est irréversible et toutes vos données seront perdues.',
			'auth.mnemonic_key.title' => 'Clé de récupération',
			'auth.mnemonic_key.description_start' => 'Ceci est votre clé de récupération',
			'auth.mnemonic_key.description_mid' => 'Écrivez-la sur un papier et gardez-la en sécurité.',
			'auth.mnemonic_key.description_end' => 'Vous en aurez besoin pour récupérer l\'accès à vos données si vous perdez votre mot de passe.',
			'auth.mnemonic_key.mnemonic_hint' => 'Entrez votre clé de récupération',
			'auth.mnemonic_key.mnemonic_error' => 'Clé de récupération invalide',
			'auth.mnemonic_key.copy_success' => 'Clé copiée dans le presse-papiers',
			'auth.reset_password.title' => 'Reset your password',
			'auth.reset_password.subtitle' => 'Vous ne vous souvenez pas de votre mot de passe ?',
			'auth.reset_password.warning' => 'Vous allez recevoir un code par email pour réinitialiser votre mot de passe, puis vous devrez entrer votre clé de récupération pour accéder à vos données.',
			'auth.reset_password.no_mnemonic_data_loss' => 'Si vous ne vous rappelez pas de votre clé de récupération, vous perdrez accès à toutes vos précédentes données.',
			'auth.reset_password.email' => 'Email',
			'auth.reset_password.email_description' => 'L\'adresse e-mail utilisée pour vous inscrire.',
			'auth.reset_password.email_hint' => 'atomicblend@gmail.com',
			'auth.reset_password.email_required' => 'L\'adresse e-mail est requise',
			'auth.reset_password.confirmation_code' => 'Code de confirmation',
			'auth.reset_password.confirmation_code_description' => 'Entrez le code que vous avez reçu par e-mail.',
			'auth.reset_password.confirmation_code_hint' => 'a1b5c3d4',
			'auth.reset_password.confirmation_code_required' => 'Le code de confirmation est requis',
			'auth.reset_password.enter_the_confirmation_code' => 'Entrez le code de confirmation',
			'auth.reset_password.confirmation_code_sent' => 'Un code de confirmation a été envoyé à votre adresse e-mail.',
			'auth.reset_password.confirmation_code_sent_description' => 'Vérifiez votre boîte de réception et entrez le code ci-dessous.',
			'auth.reset_password.do_you_have_your_mnemonic_key' => 'Avez-vous votre clé de récupération ?',
			'auth.reset_password.backup_key_description' => 'C\'est une phrase de 12 mots qui vous a été fournie lors de votre inscription. Vous en aurez besoin pour récupérer vos données.',
			'auth.reset_password.yes_i_have' => 'Oui, je l\'ai et je veux récupérer mes données',
			'auth.reset_password.no_i_dont' => 'Non, je ne l\'ai pas et je veux supprimer mes données',
			'auth.reset_password.reset_data_warning' => 'Je suis conscient qu\'en sélectionnant cette option, toutes mes données seront éffacées sans aucune possibilité de récupération.',
			'auth.reset_password.mnemonic_key' => 'Clé de récupération',
			'auth.reset_password.mnemonic_key_description' => 'Saisis votre clé de récupération pour accéder à vos données.',
			'auth.reset_password.mnemonic_key_hint' => 'business theme rotate together surprise wisdom powder knee view border local runway',
			'auth.reset_password.mnemonic_key_required' => 'La clé de récupération est requise',
			'auth.reset_password.select_your_new_password' => 'Sélectionnez votre nouveau mot de passe',
			'auth.reset_password.select_your_new_password_description' => 'Entrez un mot de passe fort pour protéger votre compte.',
			'auth.reset_password.new_password' => 'Nouveau mot de passe',
			'auth.reset_password.new_password_description' => 'Entrez un nouveau mot de passe pour votre compte.',
			'auth.reset_password.new_password_hint' => 'SuperSecure123!',
			'auth.reset_password.new_password_required' => 'Nouveau mot de passe requis',
			'auth.reset_password.confirm_new_password' => 'Confirmer le mot de passe',
			'auth.reset_password.confirm_new_password_description' => 'Entrez à nouveau votre mot de passe pour le confirmer.',
			'auth.reset_password.confirm_new_password_required' => 'Confirmer le mot de passe requis',
			'auth.reset_password.password_mismatch' => 'Les mots de passe ne correspondent pas',
			'auth.reset_password.password_missing' => 'Mot de passe manquant',
			'auth.reset_password.password_too_short' => 'Le mot de passe doit contenir au moins 8 caractères',
			'auth.reset_password.recap_subtitle' => 'Récapitulatif de la réinitialisation',
			'auth.reset_password.yes' => 'Oui',
			'auth.reset_password.no' => 'Non',
			'auth.reset_password.confirm_reset' => 'Confirmer la réinitialisation',
			'tags.title' => 'Tags',
			'tags.add_modal.title' => 'Ajouter un nouveau tag',
			'tags.add_modal.edit_title' => 'Modifier le tag',
			'tags.add_modal.name' => 'Nom du tag',
			'tags.add_modal.name_hint' => 'Travail',
			'tags.add_modal.name_description' => 'Définissez un nom pour votre tag, cela sera affiché dans le tableau de bord et dans les notifications.',
			'tags.add_modal.name_required' => 'Le nom du tag est requis',
			'tags.add_modal.color' => 'Couleur du tag',
			'tags.add_modal.color_description' => 'Choisissez une couleur pour votre tag, cela vous aidera à le distinguer des autres.',
			'tags.add_modal.primary' => 'Primaire',
			'tags.add_modal.accent' => 'Accent',
			'tags.add_modal.wheel' => 'Roue',
			'tags.delete.title' => 'Supprimer le tag',
			'tags.delete.description' => 'Êtes-vous sûr de vouloir supprimer ce tag ?',
			'tags.delete.warning' => 'Cette action est irréversible et le tag sera supprimé de tous les éléments associés.',
			'account.edit_profile' => 'Modifier le profil',
			'account.sections.account' => 'Compte',
			'account.actions.security' => 'Sécurité et confidentialité',
			'account.actions.delete_account' => 'Supprimer mon compte',
			'account.subscription_payments.title' => 'Abonnement & Paiements',
			'account.subscription_payments.subscription' => ({required Object subName}) => 'Abonnement ${subName}',
			'account.subscription_payments.latest_subscription' => 'Ceci est votre abonnement avec la date de facturation la plus récente.',
			'account.subscription_payments.billing_cycle' => 'Cycle de facturation',
			'account.subscription_payments.current_price' => 'Prix actuel',
			'account.subscription_payments.next_billing_date' => 'Prochaine date de facturation',
			'account.subscription_payments.payment_history' => 'Historique des paiements',
			'account.subscription_payments.no_payments' => 'Aucun paiement trouvé',
			'account.subscription_payments.manage_my_subscription' => 'Gérer mon abonnement',
			'account.subscription_payments.management_url_only_mobile' => 'Vous ne pouvez gérer votre abonnement que depuis l\'application iOS ou Android.',
			'account.profile.my_profile' => 'Mon profil',
			'account.profile.email' => 'Adresse e-mail',
			'account.profile.undefined' => 'Non défini',
			'account.profile.email_missing' => 'Adresse e-mail manquante',
			'account.profile.email_same' => 'L\'adresse e-mail doit être différente de l\'adresse e-mail actuelle',
			'account.security_and_privacy.title' => 'Sécurité et confidentialité',
			'account.security_and_privacy.change_password.title' => 'Changer le mot de passe',
			'account.security_and_privacy.change_password.old_password' => 'Ancien mot de passe',
			'account.security_and_privacy.change_password.new_password' => 'Nouveau mot de passe',
			'account.security_and_privacy.change_password.confirm_password' => 'Confirmer le mot de passe',
			'account.security_and_privacy.change_password.old_password_required' => 'Ancien mot de passe requis',
			'account.security_and_privacy.change_password.new_password_required' => 'Nouveau mot de passe requis',
			'account.security_and_privacy.change_password.confirm_password_required' => 'Confirmer le mot de passe requis',
			'account.security_and_privacy.change_password.password_mismatch' => 'Les mots de passe ne correspondent pas',
			'account.security_and_privacy.change_password.password_hint' => 'SuperSecure123!',
			'account.security_and_privacy.change_password.warning_changing_pws_will_log_you_out' => 'Changer le mot de passe vous déconnectera de l\'application.',
			'under_construction.title' => 'On travaille dessus !',
			'under_construction.description' => 'Cette fonctionnalité est en cours de développement.\n\nRevenez bientôt pour découvrir les dernières mises à jour !',
			'more.title' => 'Plus',
			'actions.save' => 'Enregistrer',
			'actions.cancel' => 'Annuler',
			'actions.next' => 'Suivant',
			'actions.back' => 'Retour',
			'actions.delete' => 'Supprimer',
			'actions.add' => 'Ajouter',
			'actions.edit' => 'Modifier',
			'actions.clear' => 'Effacer',
			'actions.close' => 'Fermer',
			'actions.subscribe' => 'S\'abonner',
			'loading.simple' => 'Chargement en cours...',
			'validation.required' => 'Ce champ est obligatoire',
			'validation.invalid_url' => 'URL invalide',
			'errors.wrong_email_password' => 'Adresse e-mail ou mot de passe incorrect',
			'errors.email_malformed' => 'Adresse e-mail invalide',
			'errors.unknown_error' => 'Une erreur inconnue s\'est produite',
			'name_generator.animals.0' => 'hibou',
			'name_generator.animals.1' => 'renard',
			'name_generator.animals.2' => 'lapin',
			'name_generator.animals.3' => 'loutre',
			'name_generator.animals.4' => 'pingouin',
			'name_generator.animals.5' => 'panda',
			'name_generator.animals.6' => 'écureuil',
			'name_generator.animals.7' => 'koala',
			'name_generator.animals.8' => 'tigre',
			'name_generator.animals.9' => 'girafe',
			'name_generator.animals.10' => 'singe',
			'name_generator.animals.11' => 'raton-laveur',
			'name_generator.animals.12' => 'zèbre',
			'name_generator.animals.13' => 'kangourou',
			'name_generator.animals.14' => 'perroquet',
			'name_generator.animals.15' => 'dauphin',
			'name_generator.animals.16' => 'paresseux',
			'name_generator.animals.17' => 'loup',
			'name_generator.animals.18' => 'lion',
			'name_generator.animals.19' => 'ours',
			'name_generator.animals.20' => 'aigle',
			'name_generator.animals.21' => 'éléphant',
			'name_generator.animals.22' => 'léopard',
			'name_generator.animals.23' => 'guépard',
			'name_generator.animals.24' => 'hippopotame',
			'name_generator.animals.25' => 'lemurien',
			'name_generator.animals.26' => 'grenouille',
			'name_generator.animals.27' => 'caméléon',
			'name_generator.animals.28' => 'lynx',
			'name_generator.animals.29' => 'macareux',
			'name_generator.animals.30' => 'phoque',
			'name_generator.animals.31' => 'faucon',
			'name_generator.animals.32' => 'orque',
			'name_generator.animals.33' => 'suricate',
			'name_generator.animals.34' => 'hérisson',
			'name_generator.animals.35' => 'belette',
			'name_generator.animals.36' => 'tatou',
			'name_generator.animals.37' => 'wombat',
			'name_generator.animals.38' => 'ornithorynque',
			'name_generator.animals.39' => 'blaireau',
			'name_generator.animals.40' => 'yak',
			'name_generator.animals.41' => 'lézard',
			'name_generator.animals.42' => 'scarabée',
			'name_generator.animals.43' => 'chenille',
			'name_generator.animals.44' => 'jaguar',
			'name_generator.animals.45' => 'buffle',
			'name_generator.animals.46' => 'raie',
			'name_generator.animals.47' => 'taupe',
			'name_generator.animals.48' => 'âne',
			'name_generator.animals.49' => 'toucan',
			'name_generator.animals.50' => 'flamant',
			'name_generator.animals.51' => 'chèvre',
			'name_generator.animals.52' => 'alpaga',
			'name_generator.animals.53' => 'orignal',
			'name_generator.animals.54' => 'paon',
			'name_generator.animals.55' => 'rhinocéros',
			'name_generator.animals.56' => 'gecko',
			'name_generator.animals.57' => 'dinde',
			'name_generator.animals.58' => 'hamster',
			'name_generator.animals.59' => 'loutre',
			'name_generator.animals.60' => 'gorille',
			'name_generator.animals.61' => 'morse',
			'name_generator.animals.62' => 'vautour',
			'name_generator.animals.63' => 'raie',
			'name_generator.animals.64' => 'triton',
			'name_generator.animals.65' => 'iguane',
			'name_generator.animals.66' => 'porc-épic',
			'name_generator.animals.67' => 'python',
			'name_generator.animals.68' => 'antilope',
			'name_generator.animals.69' => 'gibbon',
			'name_generator.animals.70' => 'sanglier',
			'name_generator.animals.71' => 'grue',
			'name_generator.animals.72' => 'émeu',
			'name_generator.animals.73' => 'pélican',
			'name_generator.animals.74' => 'hyène',
			'name_generator.animals.75' => 'héron',
			'name_generator.animals.76' => 'agneau',
			'name_generator.animals.77' => 'tortue',
			'name_generator.animals.78' => 'crevette',
			'name_generator.animals.79' => 'homard',
			'name_generator.animals.80' => 'papillon de nuit',
			'name_generator.animals.81' => 'palourde',
			'name_generator.animals.82' => 'poisson-globe',
			'name_generator.animals.83' => 'étoile de mer',
			'name_generator.animals.84' => 'pie-grièche',
			'name_generator.animals.85' => 'rouge-gorge',
			'name_generator.animals.86' => 'caille',
			'name_generator.animals.87' => 'koala',
			'name_generator.animals.88' => 'escargot',
			'name_generator.animals.89' => 'limace',
			'name_generator.animals.90' => 'hibou',
			'name_generator.animals.91' => 'vipère',
			'name_generator.animals.92' => 'canard',
			'name_generator.animals.93' => 'hirondelle',
			'name_generator.animals.94' => 'crabe',
			'name_generator.animals.95' => 'lama',
			'name_generator.animals.96' => 'mangouste',
			'name_generator.animals.97' => 'chaton',
			'name_generator.adjectives.0' => 'joyeux',
			'name_generator.adjectives.1' => 'courageux',
			'name_generator.adjectives.2' => 'rigolo',
			'name_generator.adjectives.3' => 'jovial',
			'name_generator.adjectives.4' => 'espiègle',
			'name_generator.adjectives.5' => 'brillant',
			'name_generator.adjectives.6' => 'farfelu',
			'name_generator.adjectives.7' => 'curieux',
			'name_generator.adjectives.8' => 'rapide',
			'name_generator.adjectives.9' => 'audacieux',
			'name_generator.adjectives.10' => 'puissant',
			'name_generator.adjectives.11' => 'malin',
			'name_generator.adjectives.12' => 'rusé',
			'name_generator.adjectives.13' => 'doux',
			'name_generator.adjectives.14' => 'pelucheux',
			'name_generator.adjectives.15' => 'excentrique',
			'name_generator.adjectives.16' => 'rebondissant',
			'name_generator.adjectives.17' => 'étincelant',
			'name_generator.adjectives.18' => 'vif',
			'name_generator.adjectives.19' => 'chantant',
			'name_generator.adjectives.20' => 'lustré',
			'name_generator.adjectives.21' => 'claquant',
			'name_generator.adjectives.22' => 'brillant',
			'name_generator.adjectives.23' => 'rêveur',
			'name_generator.adjectives.24' => 'frétillant',
			'name_generator.adjectives.25' => 'ensoleillé',
			'name_generator.adjectives.26' => 'dingue',
			'name_generator.adjectives.27' => 'sauvage',
			'name_generator.adjectives.28' => 'funky',
			'name_generator.adjectives.29' => 'intrépide',
			'name_generator.adjectives.30' => 'confortable',
			'name_generator.adjectives.31' => 'croquant',
			'name_generator.adjectives.32' => 'vivant',
			'name_generator.adjectives.33' => 'coquin',
			'name_generator.adjectives.34' => 'spirituel',
			'name_generator.adjectives.35' => 'dynamique',
			'name_generator.adjectives.36' => 'pétillant',
			'name_generator.adjectives.37' => 'astucieux',
			'name_generator.adjectives.38' => 'élégant',
			'name_generator.adjectives.39' => 'souriant',
			'name_generator.adjectives.40' => 'chanceux',
			'name_generator.adjectives.41' => 'plein d\'énergie',
			'name_generator.adjectives.42' => 'chouette',
			'name_generator.adjectives.43' => 'soigné',
			'name_generator.adjectives.44' => 'frisquet',
			'name_generator.adjectives.45' => 'venté',
			'name_generator.adjectives.46' => 'gai',
			'name_generator.adjectives.47' => 'gracieux',
			'name_generator.adjectives.48' => 'courageux',
			'name_generator.adjectives.49' => 'étourdi',
			'name_generator.adjectives.50' => 'agile',
			'name_generator.adjectives.51' => 'fantasque',
			'name_generator.adjectives.52' => 'habile',
			'name_generator.adjectives.53' => 'chanteur',
			'name_generator.adjectives.54' => 'sautillant',
			'name_generator.adjectives.55' => 'bizarre',
			'name_generator.adjectives.56' => 'épicé',
			'name_generator.adjectives.57' => 'énergique',
			'name_generator.adjectives.58' => 'rapide',
			'name_generator.adjectives.59' => 'pratique',
			'name_generator.adjectives.60' => 'vacillant',
			'name_generator.adjectives.61' => 'croustillant',
			'name_generator.adjectives.62' => 'grognon',
			'name_generator.adjectives.63' => 'chic',
			'name_generator.adjectives.64' => 'plein d\'entrain',
			'name_generator.adjectives.65' => 'bouillonnant',
			'name_generator.adjectives.66' => 'éclaboussant',
			'name_generator.adjectives.67' => 'venté',
			'name_generator.adjectives.68' => 'rebondissant',
			'name_generator.adjectives.69' => 'étincelant',
			'name_generator.adjectives.70' => 'joyeux',
			'name_generator.adjectives.71' => 'moelleux',
			'name_generator.adjectives.72' => 'loufoque',
			'name_generator.adjectives.73' => 'vivifiant',
			'name_generator.adjectives.74' => 'claquant',
			'name_generator.adjectives.75' => 'joyeux',
			'name_generator.adjectives.76' => 'plumé',
			'name_generator.adjectives.77' => 'piquant',
			'name_generator.adjectives.78' => 'rapide',
			'name_generator.adjectives.79' => 'vif',
			'name_generator.adjectives.80' => 'moustachu',
			'name_generator.adjectives.81' => 'tacheté',
			'name_generator.adjectives.82' => 'rayé',
			'name_generator.adjectives.83' => 'fougueux',
			'name_generator.adjectives.84' => 'bavard',
			'name_generator.adjectives.85' => 'distingué',
			'name_generator.adjectives.86' => 'serpentin',
			'name_generator.adjectives.87' => 'rigolo',
			'name_generator.adjectives.88' => 'élégant',
			'name_generator.adjectives.89' => 'sautillant',
			'name_generator.adjectives.90' => 'dynamique',
			'name_generator.adjectives.91' => 'skippy',
			'name_generator.adjectives.92' => 'duveteux',
			'name_generator.adjectives.93' => 'rondelet',
			'name_generator.adjectives.94' => 'gonflé',
			'name_generator.adjectives.95' => 'déjanté',
			'name_generator.adjectives.96' => 'rose',
			'name_generator.adjectives.97' => 'exubérant',
			'name_generator.adjectives.98' => 'raffiné',
			'paywall.title' => 'Obtenez AtomicBlend Cloud',
			'paywall.subtitle' => 'Profitez d\'Atomic Blend sans restrictions et aidez l\'initiative open source.',
			'paywall.advantages.all_apps_of_the_suite.title' => 'Toutes les applications de la suite',
			'paywall.advantages.all_apps_of_the_suite.description' => 'Accédez à toutes les applications de la suite, y compris Tâches, Habitudes, Calendrier, Notes, et plus encore.',
			'paywall.advantages.end_to_end_encrypted.title' => 'Chiffrement de bout en bout',
			'paywall.advantages.end_to_end_encrypted.description' => 'Vos données sont à vous, pour toujours.',
			'paywall.advantages.unlimited_tasks.title' => 'Tâches Illimitées',
			'paywall.advantages.unlimited_tasks.description' => 'Créez autant de tâches que vous le souhaitez, sans limites.',
			'paywall.advantages.unlimited_habits.title' => 'Habitudes Illimitées',
			'paywall.advantages.unlimited_habits.description' => 'Faites un pas vers une vie plus saine avec des habitudes illimitées.',
			'paywall.advantages.unlimited_tags.title' => 'Tags / Dossiers Illimités',
			'paywall.advantages.unlimited_tags.description' => 'Utilisez autant de tags et de dossiers que nécessaire pour organiser votre vie.',
			'paywall.advantages.sync_across_devices.title' => 'Synchronisation entre appareils',
			'paywall.advantages.sync_across_devices.description' => 'Accédez à vos données depuis n\'importe quel appareil, n\'importe où.',
			'paywall.advantages.community_backed.title' => 'Soutien de la communauté',
			'paywall.advantages.community_backed.description' => '100% opensource : rejoignez une communauté d\'utilisateurs qui soutiennent le projet.',
			'paywall.pricing.\$rc_annual.title' => 'Annuel',
			'paywall.pricing.\$rc_annual.price' => '3.33€/mo',
			'paywall.pricing.\$rc_annual.billed' => 'facturé à 39.99€/an',
			'paywall.pricing.\$rc_annual.discount' => '16% off',
			'paywall.pricing.\$rc_monthly.title' => 'Mensuel',
			'paywall.pricing.\$rc_monthly.price' => '3.99€/mo',
			'paywall.pricing.\$rc_monthly.billed' => 'facturé à 3.99€/mois',
			'paywall.pricing.\$rc_monthly.discount' => '',
			'paywall.pricing.cloud_yearly.title' => 'Annuel',
			'paywall.pricing.cloud_yearly.price' => '3.33€/mo',
			'paywall.pricing.cloud_yearly.billed' => 'facturé à 39.99€/an',
			'paywall.pricing.cloud_yearly.discount' => '16% off',
			'paywall.pricing.cloud_monthly.title' => 'Mensuel',
			'paywall.pricing.cloud_monthly.price' => '3.99€/mo',
			'paywall.pricing.cloud_monthly.billed' => 'facturé à 3.99€/mois',
			'paywall.pricing.cloud_monthly.discount' => '',
			'paywall.no_package_selected' => 'Aucun package sélectionné',
			'paywall.purchase_failed' => 'Échec de l\'achat',
			'paywall.restore_purchase' => 'Restaurer l\'achat',
			'paywall.terms' => 'Conditions d\'utilisation',
			'paywall.privacy_policy' => 'Politique de confidentialité',
			'paywall.success' => 'Achat réussi !',
			'paywall.payment_in_progress' => 'Paiement en cours',
			'paywall.payment_in_progress_description' => 'Veuillez patienter pendant que nous traitons votre paiement.',
			'paywall.validation_failed' => 'Échec de la validation',
			'paywall.validation_failed_description' => 'Veuillez vérifier votre connexion Internet et redémarrer l\'application.',
			'paywall.mobile_app_required' => 'Application mobile requise',
			'paywall.payment_on_mobile_for_better_xp' => 'Pour vous offrir la meilleure expérience possible, le paiement et la configuration du compte ne sont disponibles que sur l\'application mobile.',
			'paywall.ios' => 'iOS',
			'paywall.android' => 'Android',
			'my_notes.title' => 'Mes Notes',
			'my_notes.untitled' => 'Sans titre',
			'my_notes.no_content' => 'Aucun contenu',
			'my_notes.delete_note.title' => 'Supprimer la note',
			'my_notes.delete_note.description' => 'Êtes-vous sûr de vouloir supprimer cette note ?',
			'my_notes.delete_note.warning' => 'Cette action ne peut pas être annulée.',
			'recently_deleted.title' => 'Récemment supprimées',
			'recently_deleted.no_notes' => 'Aucune note récemment supprimée',
			'organize.title' => 'Organiser',
			'organize.latest_items' => 'Derniers éléments',
			'folders.title' => 'Dossiers',
			'folders.add_folder' => 'Ajouter un dossier',
			'folders.edit_folder' => 'Modifier le dossier',
			'folders.name' => 'Nom du dossier',
			'folders.name_hint' => 'Travail',
			'folders.name_description' => 'Définissez un nom pour votre dossier, il sera affiché dans le tableau de bord et dans les notifications.',
			'folders.name_required' => 'Le nom du dossier est requis',
			'folders.color' => 'Couleur du dossier',
			'folders.color_description' => 'Choisissez une couleur pour votre dossier, cela vous aidera à le distinguer des autres.',
			'folders.primary' => 'Primaire',
			'folders.accent' => 'Accent',
			'folders.no_folders' => 'Aucun dossier pour le moment',
			'folders.wheel' => 'Roue',
			'folders.search_emoji_hint' => 'Rechercher un emoji',
			'folders.delete.title' => 'Supprimer le dossier',
			'folders.delete.description' => 'Êtes-vous sûr de vouloir supprimer ce dossier ?',
			'folders.delete.warning' => 'Cette action est irréversible et le dossier sera supprimé de tous les éléments associés.',
			'search.title' => 'Rechercher',
			'dates.today' => 'Aujourd\'hui',
			'dates.tomorrow' => 'Demain',
			'time_units.short.day' => 'j',
			'time_units.short.hour' => 'h',
			'time_units.short.minute' => 'm',
			'time_units.long.day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'jour', one: 'jour', other: 'jours', ), 
			'time_units.long.hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'heure', one: 'heure', other: 'heures', ), 
			'time_units.long.minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'minute', one: 'minute', other: 'minutes', ), 
			'sync.title' => 'Synchronisation',
			'sync.description' => 'Gardez vos données à jour sur tous vos appareils',
			'sync.status' => 'État',
			'sync.loading' => 'Chargement...',
			'sync.up_to_date' => 'À jour',
			'sync.conflicts' => 'Conflits',
			'sync.x_items_have_conflicts' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'Aucun élément n\'a de conflits', one: '1 élément a des conflits', other: '${n} éléments ont des conflits', ), 
			'sync.details.title' => 'Détails',
			'sync.details.tasks' => 'Tâches',
			'sync.details.notes' => 'Notes',
			'sync.details.task_items' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'Aucune tâche', one: '1 tâche', other: '${n} tâches', ), 
			'sync.details.notes_items' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'Aucune note', one: '1 note', other: '${n} notes', ), 
			'sync.sync_now' => 'Synchroniser maintenant',
			'sync.conflict_resolver.title' => 'Résolveur de Conflits',
			'sync.conflict_resolver.patch_date' => ({required Object date}) => 'Date de mise à jour : ${date}',
			'sync.conflict_resolver.item_type.task' => 'Tâche',
			'sync.conflict_resolver.item_type.note' => 'Note',
			'sync.conflict_resolver.choose_between' => 'Choisissez entre accepter ou refuser les modifications',
			'sync.conflict_resolver.refuse' => 'Refuser',
			'sync.conflict_resolver.accept' => 'Accepter',
			'sync.conflict_resolver.upcoming' => 'À venir',
			'sync.conflict_resolver.in_app_version' => 'Dans l\'application',
			'sync.conflict_resolver.apply_to_all' => 'Appliquer la décision à tous les conflits',
			'sync.conflict_resolver.changes_to_apply' => 'Modifications à appliquer',
			'sync.conflict_resolver.fields.title' => 'Titre',
			'sync.conflict_resolver.fields.end_date' => 'Date de fin',
			'sync.conflict_resolver.fields.description' => 'Notes',
			'sync.conflict_resolver.fields.undefined' => 'Non défini',
			'sync.conflict_resolver.fields.start_date' => 'Date de début',
			'sync.conflict_resolver.fields.reminders_title' => 'Rappels',
			'sync.conflict_resolver.fields.reminders' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'Aucun rappel', one: '1 rappel', other: '${n} rappels', ), 
			'sync.conflict_resolver.fields.priority' => 'Priorité',
			'sync.conflict_resolver.fields.folder' => 'Dossier',
			'sync.conflict_resolver.fields.tags' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'Aucun tag', one: '1 tag', other: '${n} tags', ), 
			'sync.conflict_resolver.progress' => 'Progression',
			'conflict_detected_modal.title' => 'Conflit détecté',
			'conflict_detected_modal.description' => 'Les modifications précédentes de cette tâche effectuées hors ligne entrent en conflit avec la version actuelle de la tâche.',
			'conflict_detected_modal.warning' => 'Vous pouvez soit résoudre les conflits maintenant, soit revenir plus tard pour les résoudre.',
			'conflict_detected_modal.resolve_now' => 'Résoudre',
			'conflict_detected_modal.later' => 'Plus tard',
			_ => null,
		};
	}
}
