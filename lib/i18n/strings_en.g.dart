///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Atomic Blend'
	String get app_name => 'Atomic Blend';

	/// en: 'Atomic Blend Cloud'
	String get app_name_saas => 'Atomic Blend Cloud';

	late final TranslationsAuthEn auth = TranslationsAuthEn._(_root);
	late final TranslationsTagsEn tags = TranslationsTagsEn._(_root);
	late final TranslationsAccountEn account = TranslationsAccountEn._(_root);
	late final TranslationsUnderConstructionEn under_construction = TranslationsUnderConstructionEn._(_root);
	late final TranslationsMoreEn more = TranslationsMoreEn._(_root);
	late final TranslationsLoadingEn loading = TranslationsLoadingEn._(_root);
	late final TranslationsActionsEn actions = TranslationsActionsEn._(_root);
	late final TranslationsValidationEn validation = TranslationsValidationEn._(_root);
	Map<String, String> get errors => {
		'wrong_email_password': 'Email or password incorrect',
		'email_malformed': 'Email malformed',
		'unknown_error': 'Unknown error',
	};
	late final TranslationsNameGeneratorEn name_generator = TranslationsNameGeneratorEn._(_root);
	late final TranslationsPaywallEn paywall = TranslationsPaywallEn._(_root);
	late final TranslationsMyNotesEn my_notes = TranslationsMyNotesEn._(_root);
	late final TranslationsRecentlyDeletedEn recently_deleted = TranslationsRecentlyDeletedEn._(_root);
	late final TranslationsOrganizeEn organize = TranslationsOrganizeEn._(_root);
	late final TranslationsFoldersEn folders = TranslationsFoldersEn._(_root);
	late final TranslationsSearchEn search = TranslationsSearchEn._(_root);
	late final TranslationsDatesEn dates = TranslationsDatesEn._(_root);
	late final TranslationsTimeUnitsEn time_units = TranslationsTimeUnitsEn._(_root);
	late final TranslationsSyncEn sync = TranslationsSyncEn._(_root);
	late final TranslationsConflictDetectedModalEn conflict_detected_modal = TranslationsConflictDetectedModalEn._(_root);
}

// Path: auth
class TranslationsAuthEn {
	TranslationsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthNotLoggedInEn not_logged_in = TranslationsAuthNotLoggedInEn._(_root);
	late final TranslationsAuthLoginOrRegisterEn login_or_register = TranslationsAuthLoginOrRegisterEn._(_root);
	late final TranslationsAuthLoginEn login = TranslationsAuthLoginEn._(_root);
	late final TranslationsAuthRegisterEn register = TranslationsAuthRegisterEn._(_root);
	late final TranslationsAuthDeleteAccountEn delete_account = TranslationsAuthDeleteAccountEn._(_root);
	late final TranslationsAuthMnemonicKeyEn mnemonic_key = TranslationsAuthMnemonicKeyEn._(_root);
	late final TranslationsAuthResetPasswordEn reset_password = TranslationsAuthResetPasswordEn._(_root);
}

// Path: tags
class TranslationsTagsEn {
	TranslationsTagsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Tags'
	String get title => 'Tags';

	late final TranslationsTagsAddModalEn add_modal = TranslationsTagsAddModalEn._(_root);
	late final TranslationsTagsDeleteEn delete = TranslationsTagsDeleteEn._(_root);
}

// Path: account
class TranslationsAccountEn {
	TranslationsAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get edit_profile => 'Edit Profile';

	late final TranslationsAccountSectionsEn sections = TranslationsAccountSectionsEn._(_root);
	late final TranslationsAccountActionsEn actions = TranslationsAccountActionsEn._(_root);
	late final TranslationsAccountProfileEn profile = TranslationsAccountProfileEn._(_root);
	late final TranslationsAccountSubscriptionPaymentsEn subscription_payments = TranslationsAccountSubscriptionPaymentsEn._(_root);
	late final TranslationsAccountSecurityAndPrivacyEn security_and_privacy = TranslationsAccountSecurityAndPrivacyEn._(_root);
}

// Path: under_construction
class TranslationsUnderConstructionEn {
	TranslationsUnderConstructionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'We're working on it!'
	String get title => 'We\'re working on it!';

	/// en: 'This feature is not yet available, but we're working hard to bring it to you soon. Stay tuned!'
	String get description => 'This feature is not yet available, but we\'re working hard to bring it to you soon.\n\nStay tuned!';
}

// Path: more
class TranslationsMoreEn {
	TranslationsMoreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'More'
	String get title => 'More';
}

// Path: loading
class TranslationsLoadingEn {
	TranslationsLoadingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Loading...'
	String get simple => 'Loading...';
}

// Path: actions
class TranslationsActionsEn {
	TranslationsActionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Add'
	String get add => 'Add';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Clear'
	String get clear => 'Clear';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Subscribe'
	String get subscribe => 'Subscribe';
}

// Path: validation
class TranslationsValidationEn {
	TranslationsValidationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Required'
	String get required => 'Required';

	/// en: 'invalid URL'
	String get invalid_url => 'invalid URL';
}

// Path: name_generator
class TranslationsNameGeneratorEn {
	TranslationsNameGeneratorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<String> get animals => [
		'bat',
		'owl',
		'fox',
		'rabbit',
		'otter',
		'penguin',
		'panda',
		'squirrel',
		'koala',
		'tiger',
		'giraffe',
		'monkey',
		'raccoon',
		'zebra',
		'kangaroo',
		'parrot',
		'dolphin',
		'sloth',
		'wolf',
		'lion',
		'bear',
		'eagle',
		'elephant',
		'leopard',
		'cheetah',
		'hippo',
		'lemur',
		'frog',
		'chameleon',
		'lynx',
		'puffin',
		'seal',
		'falcon',
		'orca',
		'meerkat',
		'hedgehog',
		'weasel',
		'armadillo',
		'wombat',
		'platypus',
		'badger',
		'yak',
		'lizard',
		'beetle',
		'caterpillar',
		'jaguar',
		'buffalo',
		'stingray',
		'mole',
		'donkey',
		'toucan',
		'flamingo',
		'goat',
		'alpaca',
		'moose',
		'peacock',
		'rhino',
		'gecko',
		'turkey',
		'hamster',
		'otter',
		'gorilla',
		'walrus',
		'vulture',
		'stingray',
		'newt',
		'iguana',
		'porcupine',
		'python',
		'antelope',
		'gibbon',
		'boar',
		'crane',
		'emu',
		'pelican',
		'hyena',
		'heron',
		'lynx',
		'lamb',
		'tortoise',
		'shrimp',
		'lobster',
		'moth',
		'clam',
		'pufferfish',
		'starfish',
		'shrike',
		'robin',
		'quail',
		'koala',
		'snail',
		'slug',
		'owl',
		'viper',
		'duck',
		'swallow',
		'crab',
		'llama',
		'mongoose',
		'kitten',
	];
	List<String> get adjectives => [
		'happy',
		'brave',
		'cheerful',
		'jolly',
		'playful',
		'bright',
		'silly',
		'curious',
		'swift',
		'bold',
		'mighty',
		'clever',
		'sneaky',
		'gentle',
		'fuzzy',
		'quirky',
		'bouncy',
		'sparkly',
		'zippy',
		'chirpy',
		'glossy',
		'snappy',
		'shiny',
		'dreamy',
		'frisky',
		'sunny',
		'zany',
		'wild',
		'funky',
		'feisty',
		'snug',
		'crisp',
		'lively',
		'sassy',
		'witty',
		'spunky',
		'perky',
		'crafty',
		'jazzy',
		'dapper',
		'smiley',
		'lucky',
		'peppy',
		'peachy',
		'tidy',
		'chilly',
		'breezy',
		'giddy',
		'graceful',
		'plucky',
		'dizzy',
		'spry',
		'whimsical',
		'nimble',
		'chirpy',
		'jumpy',
		'quirky',
		'spicy',
		'perky',
		'speedy',
		'nifty',
		'wobbly',
		'crunchy',
		'cranky',
		'snazzy',
		'peppy',
		'bubbly',
		'splashy',
		'breezy',
		'bouncy',
		'twinkly',
		'gleeful',
		'squishy',
		'wacky',
		'zesty',
		'snappy',
		'jovial',
		'feathered',
		'prickly',
		'whizzy',
		'perky',
		'whiskery',
		'spotty',
		'stripy',
		'flicky',
		'chatty',
		'dandy',
		'wiggly',
		'giggly',
		'spiffy',
		'jumpy',
		'perky',
		'skippy',
		'fluffy',
		'chunky',
		'puffy',
		'loopy',
		'pinky',
		'spunky',
		'fancy',
	];
}

// Path: paywall
class TranslationsPaywallEn {
	TranslationsPaywallEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Get AtomicBlend Cloud'
	String get title => 'Get AtomicBlend Cloud';

	/// en: 'Enjoy Atomic Blend without restrictions and help the opensource initiative.'
	String get subtitle => 'Enjoy Atomic Blend without restrictions and help the opensource initiative.';

	late final TranslationsPaywallAdvantagesEn advantages = TranslationsPaywallAdvantagesEn._(_root);
	Map<String, dynamic> get pricing => {
		'\$rc_annual': TranslationsPaywallPricing$rcAnnualEn._(_root),
		'\$rc_monthly': TranslationsPaywallPricing$rcMonthlyEn._(_root),
		'cloud_yearly': TranslationsPaywallPricingCloudYearlyEn._(_root),
		'cloud_monthly': TranslationsPaywallPricingCloudMonthlyEn._(_root),
	};

	/// en: 'No package selected'
	String get no_package_selected => 'No package selected';

	/// en: 'Purchase failed'
	String get purchase_failed => 'Purchase failed';

	/// en: 'Restore Purchase'
	String get restore_purchase => 'Restore Purchase';

	/// en: 'Terms of Service'
	String get terms => 'Terms of Service';

	/// en: 'Privacy Policy'
	String get privacy_policy => 'Privacy Policy';

	/// en: 'Payment in progress'
	String get payment_in_progress => 'Payment in progress';

	/// en: 'Please wait while we process your payment.'
	String get payment_in_progress_description => 'Please wait while we process your payment.';

	/// en: 'Purchase successful'
	String get success => 'Purchase successful';

	/// en: 'Validation failed'
	String get validation_failed => 'Validation failed';

	/// en: 'Please check your internet connection and restart the app.'
	String get validation_failed_description => 'Please check your internet connection and restart the app.';

	/// en: 'Mobile app required'
	String get mobile_app_required => 'Mobile app required';

	/// en: 'To offer you the best experience possible, payment and account configuration is only available on the mobile app'
	String get payment_on_mobile_for_better_xp => 'To offer you the best experience possible, payment and account configuration is only available on the mobile app';

	/// en: 'iOS'
	String get ios => 'iOS';

	/// en: 'Android'
	String get android => 'Android';
}

// Path: my_notes
class TranslationsMyNotesEn {
	TranslationsMyNotesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'My Notes'
	String get title => 'My Notes';

	/// en: 'Untitled'
	String get untitled => 'Untitled';

	/// en: 'No content'
	String get no_content => 'No content';

	late final TranslationsMyNotesDeleteNoteEn delete_note = TranslationsMyNotesDeleteNoteEn._(_root);
}

// Path: recently_deleted
class TranslationsRecentlyDeletedEn {
	TranslationsRecentlyDeletedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Recently Deleted'
	String get title => 'Recently Deleted';

	/// en: 'No recently deleted notes'
	String get no_notes => 'No recently deleted notes';
}

// Path: organize
class TranslationsOrganizeEn {
	TranslationsOrganizeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Organize'
	String get title => 'Organize';

	/// en: 'Latest items'
	String get latest_items => 'Latest items';
}

// Path: folders
class TranslationsFoldersEn {
	TranslationsFoldersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Folders'
	String get title => 'Folders';

	/// en: 'Add Folder'
	String get add_folder => 'Add Folder';

	/// en: 'Edit Folder'
	String get edit_folder => 'Edit Folder';

	/// en: 'Folder Name'
	String get name => 'Folder Name';

	/// en: 'Work'
	String get name_hint => 'Work';

	/// en: 'Define a name for your folder, this will help you remember what it is about and be shown in notifications.'
	String get name_description => 'Define a name for your folder, this will help you remember what it is about and be shown in notifications.';

	/// en: 'Name is required'
	String get name_required => 'Name is required';

	/// en: 'Color'
	String get color => 'Color';

	/// en: 'Choose a color for your folder, this will help you remember what it is about and be shown in notifications.'
	String get color_description => 'Choose a color for your folder, this will help you remember what it is about and be shown in notifications.';

	/// en: 'Primary'
	String get primary => 'Primary';

	/// en: 'Accent'
	String get accent => 'Accent';

	/// en: 'Color wheel'
	String get wheel => 'Color wheel';

	/// en: 'Search for an emoji'
	String get search_emoji_hint => 'Search for an emoji';

	/// en: 'No folders yet'
	String get no_folders => 'No folders yet';

	late final TranslationsFoldersDeleteEn delete = TranslationsFoldersDeleteEn._(_root);
}

// Path: search
class TranslationsSearchEn {
	TranslationsSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Search'
	String get title => 'Search';
}

// Path: dates
class TranslationsDatesEn {
	TranslationsDatesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today'
	String get today => 'Today';

	/// en: 'Tomorrow'
	String get tomorrow => 'Tomorrow';
}

// Path: time_units
class TranslationsTimeUnitsEn {
	TranslationsTimeUnitsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsTimeUnitsShortEn short = TranslationsTimeUnitsShortEn._(_root);
	late final TranslationsTimeUnitsLongEn long = TranslationsTimeUnitsLongEn._(_root);
}

// Path: sync
class TranslationsSyncEn {
	TranslationsSyncEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Synchronization'
	String get title => 'Synchronization';

	/// en: 'Keep your data up to date across all your devices'
	String get description => 'Keep your data up to date across all your devices';

	/// en: 'Status'
	String get status => 'Status';

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Up to date'
	String get up_to_date => 'Up to date';

	/// en: 'Conflicts'
	String get conflicts => 'Conflicts';

	/// en: '(zero) {No items have conflicts} (one) {1 item has conflicts} (other) {${n} items have conflicts}'
	String x_items_have_conflicts({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'No items have conflicts',
		one: '1 item has conflicts',
		other: '${n} items have conflicts',
	);

	late final TranslationsSyncDetailsEn details = TranslationsSyncDetailsEn._(_root);

	/// en: 'Sync now'
	String get sync_now => 'Sync now';

	late final TranslationsSyncConflictResolverEn conflict_resolver = TranslationsSyncConflictResolverEn._(_root);
}

// Path: conflict_detected_modal
class TranslationsConflictDetectedModalEn {
	TranslationsConflictDetectedModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Conflict Detected'
	String get title => 'Conflict Detected';

	/// en: 'Previous edits of this task made while offline conflicts with the current version of the task.'
	String get description => 'Previous edits of this task made while offline conflicts with the current version of the task.';

	/// en: 'You can either resolve the conflicts now or come back later to resolve them.'
	String get warning => 'You can either resolve the conflicts now or come back later to resolve them.';

	/// en: 'Resolve'
	String get resolve_now => 'Resolve';

	/// en: 'Later'
	String get later => 'Later';
}

// Path: auth.not_logged_in
class TranslationsAuthNotLoggedInEn {
	TranslationsAuthNotLoggedInEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome to Atomic Blend'
	String get welcome => 'Welcome to Atomic Blend';

	/// en: 'Atomic Blend is the first'
	String get description_start => 'Atomic Blend is the first';

	/// en: 'end-to-end encrypted app'
	String get e2e_app => 'end-to-end encrypted app';

	/// en: 'that combines all the tools you need to manage both work and personal life in one place. From task management to note-taking, document writing, time tracking, movie tracking, food tracking, everything stays'
	String get description_middle => 'that combines all the tools you need to manage both work and personal life in one place.\n\nFrom task management to note-taking, document writing, time tracking, movie tracking, food tracking, everything stays';

	/// en: 'secure and seamless.'
	String get description_middle_bold => 'secure and seamless.';

	/// en: 'No more juggling multiple apps—Atomic Blend brings it all together with privacy at its core, so you can focus on what truly matters.'
	String get description_end => 'No more juggling multiple apps—Atomic Blend brings it all together with privacy at its core, so you can focus on what truly matters.';

	/// en: 'Time to set things up!'
	String get time_to_set_things_up => 'Time to set things up!';

	/// en: 'To use Atomic Blend and sync your data across devices, you can choose between the cloud version or a self-hosted setup. Either way, your data is'
	String get set_up_start => 'To use Atomic Blend and sync your data across devices, you can choose between the cloud version or a self-hosted setup.\n\nEither way, your data is';

	/// en: 'end-to-end encrypted'
	String get set_up_middle => 'end-to-end encrypted';

	/// en: ', ensuring that only you have access to your encryption key —'
	String get set_up_end => ', ensuring that only you have access to your encryption key —';

	/// en: 'not us, not anyone else.'
	String get set_up_end_bold => 'not us, not anyone else.';

	/// en: 'LifeOS is a personal life management application that helps you organize your life, achieve your goals, and improve your well-being.'
	String get description => 'LifeOS is a personal life management application that helps you organize your life, achieve your goals, and improve your well-being.';
}

// Path: auth.login_or_register
class TranslationsAuthLoginOrRegisterEn {
	TranslationsAuthLoginOrRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Log in'
	String get login => 'Log in';

	/// en: 'Register'
	String get register => 'Register';

	/// en: 'Connecting to: '
	String get connecting_to => 'Connecting to: ';
}

// Path: auth.login
class TranslationsAuthLoginEn {
	TranslationsAuthLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '👋 Welcome back!'
	String get title => '👋 Welcome back!';

	/// en: 'Use you email and password to log back in and access your data.'
	String get description => 'Use you email and password to log back in and access your data.';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Log in'
	String get login => 'Log in';
}

// Path: auth.register
class TranslationsAuthRegisterEn {
	TranslationsAuthRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What’s your email ?'
	String get email => 'What’s your email ?';

	/// en: 'Your email is used only for login and password recovery purposes.'
	String get email_description => 'Your email is used only for login and password recovery purposes.';

	/// en: 'We will never sell your data to third parties.'
	String get we_never_sell => 'We will never sell your data to third parties.';

	/// en: 'Choose a password'
	String get password => 'Choose a password';

	/// en: 'SuperSecure123!'
	String get password_hint => 'SuperSecure123!';

	/// en: 'Confirm your password'
	String get confirmation_hint => 'Confirm your password';

	/// en: 'Passwords do not match'
	String get password_mismatch => 'Passwords do not match';
}

// Path: auth.delete_account
class TranslationsAuthDeleteAccountEn {
	TranslationsAuthDeleteAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete your account'
	String get title => 'Delete your account';

	/// en: 'Are you sure you want to delete your account?'
	String get description => 'Are you sure you want to delete your account?';

	/// en: 'This action cannot be undone.'
	String get cannot_be_undone => 'This action cannot be undone.';
}

// Path: auth.mnemonic_key
class TranslationsAuthMnemonicKeyEn {
	TranslationsAuthMnemonicKeyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your recovery key'
	String get title => 'Your recovery key';

	/// en: 'This is your recovery key.'
	String get description_start => 'This is your recovery key.';

	/// en: 'Write it down and keep it in a safe place.'
	String get description_mid => 'Write it down and keep it in a safe place.';

	/// en: 'You will need it to recover access to your data if you forget your password.'
	String get description_end => 'You will need it to recover access to your data if you forget your password.';

	/// en: 'Enter your recovery key'
	String get mnemonic_hint => 'Enter your recovery key';

	/// en: 'Invalid recovery key'
	String get mnemonic_error => 'Invalid recovery key';

	/// en: 'Recovery key copied to clipboard'
	String get copy_success => 'Recovery key copied to clipboard';
}

// Path: auth.reset_password
class TranslationsAuthResetPasswordEn {
	TranslationsAuthResetPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reset your password'
	String get title => 'Reset your password';

	/// en: 'You don't remember your password?'
	String get subtitle => 'You don\'t remember your password?';

	/// en: 'You will receive an email with a code to confirm your identity, then you'll need your mnemonic key to get access to your data.'
	String get warning => 'You will receive an email with a code to confirm your identity, then you\'ll need your mnemonic key to get access to your data.';

	/// en: 'If you don't have your mnemonic key, you will lose access to your previous data.'
	String get no_mnemonic_data_loss => 'If you don\'t have your mnemonic key, you will lose access to your previous data.';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'The email address you used to register.'
	String get email_description => 'The email address you used to register.';

	/// en: 'atomicblend@gmail.com'
	String get email_hint => 'atomicblend@gmail.com';

	/// en: 'Email is required'
	String get email_required => 'Email is required';

	/// en: 'Confirmation code'
	String get confirmation_code => 'Confirmation code';

	/// en: 'Enter the code you received by email.'
	String get confirmation_code_description => 'Enter the code you received by email.';

	/// en: 'a1b5c3d4'
	String get confirmation_code_hint => 'a1b5c3d4';

	/// en: 'Confirmation code is required'
	String get confirmation_code_required => 'Confirmation code is required';

	/// en: 'Enter the confirmation code'
	String get enter_the_confirmation_code => 'Enter the confirmation code';

	/// en: 'A confirmation code has been sent to your email address.'
	String get confirmation_code_sent => 'A confirmation code has been sent to your email address.';

	/// en: 'Please check your inbox and enter the code below.'
	String get confirmation_code_sent_description => 'Please check your inbox and enter the code below.';

	/// en: 'Do you have your backup key?'
	String get do_you_have_your_mnemonic_key => 'Do you have your backup key?';

	/// en: 'This is a 12-word key that you received when you registered. It is used as a backup for your data and is required to recover your account.'
	String get backup_key_description => 'This is a 12-word key that you received when you registered. It is used as a backup for your data and is required to recover your account.';

	/// en: 'Yes, I have it, restore my data'
	String get yes_i_have => 'Yes, I have it, restore my data';

	/// en: 'No, I don't have it, delete my data'
	String get no_i_dont => 'No, I don\'t have it, delete my data';

	/// en: 'I understand by selecting this option that all my previous data will be deleted and I will not be able to recover it.'
	String get reset_data_warning => 'I understand by selecting this option that all my previous data will be deleted and I will not be able to recover it.';

	/// en: 'Mnemonic key'
	String get mnemonic_key => 'Mnemonic key';

	/// en: 'Enter the backup key you received when you registered.'
	String get mnemonic_key_description => 'Enter the backup key you received when you registered.';

	/// en: 'business theme rotate together surprise wisdom powder knee view border local runway'
	String get mnemonic_key_hint => 'business theme rotate together surprise wisdom powder knee view border local runway';

	/// en: 'Mnemonic key is required'
	String get mnemonic_key_required => 'Mnemonic key is required';

	/// en: 'Select your new password'
	String get select_your_new_password => 'Select your new password';

	/// en: 'Enter a new password to later access your account.'
	String get select_your_new_password_description => 'Enter a new password to later access your account.';

	/// en: 'New password'
	String get new_password => 'New password';

	/// en: 'Enter a new password to access your account.'
	String get new_password_description => 'Enter a new password to access your account.';

	/// en: 'SuperSecure123!'
	String get new_password_hint => 'SuperSecure123!';

	/// en: 'New password is required'
	String get new_password_required => 'New password is required';

	/// en: 'Confirm new password'
	String get confirm_new_password => 'Confirm new password';

	/// en: 'Confirm your new password.'
	String get confirm_new_password_description => 'Confirm your new password.';

	/// en: 'Confirm new password is required'
	String get confirm_new_password_required => 'Confirm new password is required';

	/// en: 'Passwords do not match'
	String get password_mismatch => 'Passwords do not match';

	/// en: 'Password is required'
	String get password_missing => 'Password is required';

	/// en: 'Password is too short'
	String get password_too_short => 'Password is too short';

	/// en: 'Recap of the process'
	String get recap_subtitle => 'Recap of the process';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'No'
	String get no => 'No';

	/// en: 'Confirm reset'
	String get confirm_reset => 'Confirm reset';
}

// Path: tags.add_modal
class TranslationsTagsAddModalEn {
	TranslationsTagsAddModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add a new tag'
	String get title => 'Add a new tag';

	/// en: 'Edit tag'
	String get edit_title => 'Edit tag';

	/// en: 'Name of the tag'
	String get name => 'Name of the tag';

	/// en: 'Work'
	String get name_hint => 'Work';

	/// en: 'Define a name for your tag, this will help you remember what it is about and be shown in notifications.'
	String get name_description => 'Define a name for your tag, this will help you remember what it is about and be shown in notifications.';

	/// en: 'Name is required'
	String get name_required => 'Name is required';

	/// en: 'Color'
	String get color => 'Color';

	/// en: 'Choose a color for your tag, this will help you remember what it is about and be shown in notifications.'
	String get color_description => 'Choose a color for your tag, this will help you remember what it is about and be shown in notifications.';

	/// en: 'Primary'
	String get primary => 'Primary';

	/// en: 'Accent'
	String get accent => 'Accent';

	/// en: 'Color wheel'
	String get wheel => 'Color wheel';
}

// Path: tags.delete
class TranslationsTagsDeleteEn {
	TranslationsTagsDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete tag'
	String get title => 'Delete tag';

	/// en: 'Are you sure you want to delete this tag?'
	String get description => 'Are you sure you want to delete this tag?';

	/// en: 'This action cannot be undone and the tag will be removed from all tags associated.'
	String get warning => 'This action cannot be undone and the tag will be removed from all tags associated.';
}

// Path: account.sections
class TranslationsAccountSectionsEn {
	TranslationsAccountSectionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account'
	String get account => 'Account';
}

// Path: account.actions
class TranslationsAccountActionsEn {
	TranslationsAccountActionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Security & Privacy'
	String get security => 'Security & Privacy';

	/// en: 'Delete my Account'
	String get delete_account => 'Delete my Account';
}

// Path: account.profile
class TranslationsAccountProfileEn {
	TranslationsAccountProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'My Profile'
	String get my_profile => 'My Profile';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Undefined'
	String get undefined => 'Undefined';

	/// en: 'Email is required'
	String get email_missing => 'Email is required';

	/// en: 'Email must be different from the current email'
	String get email_same => 'Email must be different from the current email';
}

// Path: account.subscription_payments
class TranslationsAccountSubscriptionPaymentsEn {
	TranslationsAccountSubscriptionPaymentsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Subscription & Payments'
	String get title => 'Subscription & Payments';

	/// en: '${subName} Subscription'
	String subscription({required Object subName}) => '${subName} Subscription';

	/// en: 'This is your subscription with the earliest billing date.'
	String get latest_subscription => 'This is your subscription with the earliest billing date.';

	/// en: 'Billing Cycle'
	String get billing_cycle => 'Billing Cycle';

	/// en: 'Current Price'
	String get current_price => 'Current Price';

	/// en: 'Next Billing Date'
	String get next_billing_date => 'Next Billing Date';

	/// en: 'Payment History'
	String get payment_history => 'Payment History';

	/// en: 'No payments for now'
	String get no_payments => 'No payments for now';

	/// en: 'Manage my subscription'
	String get manage_my_subscription => 'Manage my subscription';

	/// en: 'You can only manage your subscription from the iOS or Android app.'
	String get management_url_only_mobile => 'You can only manage your subscription from the iOS or Android app.';
}

// Path: account.security_and_privacy
class TranslationsAccountSecurityAndPrivacyEn {
	TranslationsAccountSecurityAndPrivacyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Security & Privacy'
	String get title => 'Security & Privacy';

	late final TranslationsAccountSecurityAndPrivacyChangePasswordEn change_password = TranslationsAccountSecurityAndPrivacyChangePasswordEn._(_root);
}

// Path: paywall.advantages
class TranslationsPaywallAdvantagesEn {
	TranslationsPaywallAdvantagesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPaywallAdvantagesAllAppsOfTheSuiteEn all_apps_of_the_suite = TranslationsPaywallAdvantagesAllAppsOfTheSuiteEn._(_root);
	late final TranslationsPaywallAdvantagesEndToEndEncryptedEn end_to_end_encrypted = TranslationsPaywallAdvantagesEndToEndEncryptedEn._(_root);
	late final TranslationsPaywallAdvantagesUnlimitedTasksEn unlimited_tasks = TranslationsPaywallAdvantagesUnlimitedTasksEn._(_root);
	late final TranslationsPaywallAdvantagesUnlimitedHabitsEn unlimited_habits = TranslationsPaywallAdvantagesUnlimitedHabitsEn._(_root);
	late final TranslationsPaywallAdvantagesUnlimitedTagsEn unlimited_tags = TranslationsPaywallAdvantagesUnlimitedTagsEn._(_root);
	late final TranslationsPaywallAdvantagesSyncAcrossDevicesEn sync_across_devices = TranslationsPaywallAdvantagesSyncAcrossDevicesEn._(_root);
	late final TranslationsPaywallAdvantagesCommunityBackedEn community_backed = TranslationsPaywallAdvantagesCommunityBackedEn._(_root);
}

// Path: paywall.pricing.\$rc_annual
class TranslationsPaywallPricing$rcAnnualEn {
	TranslationsPaywallPricing$rcAnnualEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Yearly'
	String get title => 'Yearly';

	/// en: '\$39.99/year'
	String get price => '\$39.99/year';

	/// en: '1 month free trial'
	String get billed => '1 month free trial';

	/// en: '16% off'
	String get discount => '16% off';
}

// Path: paywall.pricing.\$rc_monthly
class TranslationsPaywallPricing$rcMonthlyEn {
	TranslationsPaywallPricing$rcMonthlyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Monthly'
	String get title => 'Monthly';

	/// en: '\$3.99/mo'
	String get price => '\$3.99/mo';

	/// en: '1 week free trial'
	String get billed => '1 week free trial';

	/// en: ''
	String get discount => '';
}

// Path: paywall.pricing.cloud_yearly
class TranslationsPaywallPricingCloudYearlyEn {
	TranslationsPaywallPricingCloudYearlyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Yearly'
	String get title => 'Yearly';

	/// en: '\$3.33/mo'
	String get price => '\$3.33/mo';

	/// en: 'billed at \$39.99/year'
	String get billed => 'billed at \$39.99/year';

	/// en: '16% off'
	String get discount => '16% off';
}

// Path: paywall.pricing.cloud_monthly
class TranslationsPaywallPricingCloudMonthlyEn {
	TranslationsPaywallPricingCloudMonthlyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Monthly'
	String get title => 'Monthly';

	/// en: '\$3.99/mo'
	String get price => '\$3.99/mo';

	/// en: 'billed at \$3.99/month'
	String get billed => 'billed at \$3.99/month';

	/// en: ''
	String get discount => '';
}

// Path: my_notes.delete_note
class TranslationsMyNotesDeleteNoteEn {
	TranslationsMyNotesDeleteNoteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete note'
	String get title => 'Delete note';

	/// en: 'Are you sure you want to delete this note?'
	String get description => 'Are you sure you want to delete this note?';

	/// en: 'This action cannot be undone.'
	String get warning => 'This action cannot be undone.';
}

// Path: folders.delete
class TranslationsFoldersDeleteEn {
	TranslationsFoldersDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete folder'
	String get title => 'Delete folder';

	/// en: 'Are you sure you want to delete this folder?'
	String get description => 'Are you sure you want to delete this folder?';

	/// en: 'This action cannot be undone and the folder will be removed from all tasks associated.'
	String get warning => 'This action cannot be undone and the folder will be removed from all tasks associated.';
}

// Path: time_units.short
class TranslationsTimeUnitsShortEn {
	TranslationsTimeUnitsShortEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'd'
	String get day => 'd';

	/// en: 'h'
	String get hour => 'h';

	/// en: 'm'
	String get minute => 'm';
}

// Path: time_units.long
class TranslationsTimeUnitsLongEn {
	TranslationsTimeUnitsLongEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '(zero) {days} (one) {day} (other) {days}'
	String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'days',
		one: 'day',
		other: 'days',
	);

	/// en: '(zero) {hours} (one) {hour} (other) {hours}'
	String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'hours',
		one: 'hour',
		other: 'hours',
	);

	/// en: '(zero) {minutes} (one) {minute} (other) {minutes}'
	String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'minutes',
		one: 'minute',
		other: 'minutes',
	);
}

// Path: sync.details
class TranslationsSyncDetailsEn {
	TranslationsSyncDetailsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Details'
	String get title => 'Details';

	/// en: 'Tasks'
	String get tasks => 'Tasks';

	/// en: 'Notes'
	String get notes => 'Notes';

	/// en: '(zero) {No tasks} (one) {1 task} (other) {${n} tasks}'
	String task_items({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'No tasks',
		one: '1 task',
		other: '${n} tasks',
	);

	/// en: '(zero) {No notes} (one) {1 note} (other) {${n} notes}'
	String notes_items({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'No notes',
		one: '1 note',
		other: '${n} notes',
	);
}

// Path: sync.conflict_resolver
class TranslationsSyncConflictResolverEn {
	TranslationsSyncConflictResolverEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Conflict Resolver'
	String get title => 'Conflict Resolver';

	/// en: 'Update date: ${date}'
	String patch_date({required Object date}) => 'Update date: ${date}';

	Map<String, String> get item_type => {
		'task': 'Task',
		'note': 'Note',
	};

	/// en: 'Choose between accepting or refusing the changes'
	String get choose_between => 'Choose between accepting or refusing the changes';

	/// en: 'Refuse'
	String get refuse => 'Refuse';

	/// en: 'Accept'
	String get accept => 'Accept';

	/// en: 'Upcoming'
	String get upcoming => 'Upcoming';

	/// en: 'In-app'
	String get in_app_version => 'In-app';

	/// en: 'Changes to apply'
	String get changes_to_apply => 'Changes to apply';

	/// en: 'Apply decision to all conflicts'
	String get apply_to_all => 'Apply decision to all conflicts';

	Map<String, dynamic> get fields => {
		'title': 'Title',
		'end_date': 'End date',
		'description': 'Notes',
		'start_date': 'Start date',
		'reminders_title': 'Reminders',
		'reminders': ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
			zero: 'No reminders',
			one: '1 reminder',
			other: '${n} reminders',
		),
		'undefined': 'Undefined',
		'priority': 'Priority',
		'folder': 'Folder',
		'tags': ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
			zero: 'No tags',
			one: '1 tag',
			other: '${n} tags',
		),
	};

	/// en: 'Progress'
	String get progress => 'Progress';
}

// Path: account.security_and_privacy.change_password
class TranslationsAccountSecurityAndPrivacyChangePasswordEn {
	TranslationsAccountSecurityAndPrivacyChangePasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Change Password'
	String get title => 'Change Password';

	/// en: 'Old Password'
	String get old_password => 'Old Password';

	/// en: 'New Password'
	String get new_password => 'New Password';

	/// en: 'Confirm Password'
	String get confirm_password => 'Confirm Password';

	/// en: 'Old password is required'
	String get old_password_required => 'Old password is required';

	/// en: 'New password is required'
	String get new_password_required => 'New password is required';

	/// en: 'Confirm password is required'
	String get confirm_password_required => 'Confirm password is required';

	/// en: 'Passwords do not match'
	String get password_mismatch => 'Passwords do not match';

	/// en: 'SuperSecure123!'
	String get password_hint => 'SuperSecure123!';

	/// en: 'Changing your password will log you out of the app.'
	String get warning_changing_pws_will_log_you_out => 'Changing your password will log you out of the app.';
}

// Path: paywall.advantages.all_apps_of_the_suite
class TranslationsPaywallAdvantagesAllAppsOfTheSuiteEn {
	TranslationsPaywallAdvantagesAllAppsOfTheSuiteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'All Apps of the Suite'
	String get title => 'All Apps of the Suite';

	/// en: 'Get access to all the apps of the suite, including Tasks, Habits, Calendar, Notes, and more.'
	String get description => 'Get access to all the apps of the suite, including Tasks, Habits, Calendar, Notes, and more.';
}

// Path: paywall.advantages.end_to_end_encrypted
class TranslationsPaywallAdvantagesEndToEndEncryptedEn {
	TranslationsPaywallAdvantagesEndToEndEncryptedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'End-to-End Encryption'
	String get title => 'End-to-End Encryption';

	/// en: 'Your data is yours, forever.'
	String get description => 'Your data is yours, forever.';
}

// Path: paywall.advantages.unlimited_tasks
class TranslationsPaywallAdvantagesUnlimitedTasksEn {
	TranslationsPaywallAdvantagesUnlimitedTasksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Unlimited Tasks'
	String get title => 'Unlimited Tasks';

	/// en: 'Create as many tasks as you want, no limits.'
	String get description => 'Create as many tasks as you want, no limits.';
}

// Path: paywall.advantages.unlimited_habits
class TranslationsPaywallAdvantagesUnlimitedHabitsEn {
	TranslationsPaywallAdvantagesUnlimitedHabitsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Unlimited Habits'
	String get title => 'Unlimited Habits';

	/// en: 'Take a step towards a healthier life with unlimited habits.'
	String get description => 'Take a step towards a healthier life with unlimited habits.';
}

// Path: paywall.advantages.unlimited_tags
class TranslationsPaywallAdvantagesUnlimitedTagsEn {
	TranslationsPaywallAdvantagesUnlimitedTagsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Unlimited Tags / Folders'
	String get title => 'Unlimited Tags / Folders';

	/// en: 'Use as many tags and folders as needed to organize your life.'
	String get description => 'Use as many tags and folders as needed to organize your life.';
}

// Path: paywall.advantages.sync_across_devices
class TranslationsPaywallAdvantagesSyncAcrossDevicesEn {
	TranslationsPaywallAdvantagesSyncAcrossDevicesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sync Across Devices'
	String get title => 'Sync Across Devices';

	/// en: 'Access your data from any device, anywhere.'
	String get description => 'Access your data from any device, anywhere.';
}

// Path: paywall.advantages.community_backed
class TranslationsPaywallAdvantagesCommunityBackedEn {
	TranslationsPaywallAdvantagesCommunityBackedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Community Backed'
	String get title => 'Community Backed';

	/// en: '100% opensource : join a community of users who support the project.'
	String get description => '100% opensource : join a community of users who support the project.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app_name' => 'Atomic Blend',
			'app_name_saas' => 'Atomic Blend Cloud',
			'auth.not_logged_in.welcome' => 'Welcome to Atomic Blend',
			'auth.not_logged_in.description_start' => 'Atomic Blend is the first',
			'auth.not_logged_in.e2e_app' => 'end-to-end encrypted app',
			'auth.not_logged_in.description_middle' => 'that combines all the tools you need to manage both work and personal life in one place.\n\nFrom task management to note-taking, document writing, time tracking, movie tracking, food tracking, everything stays',
			'auth.not_logged_in.description_middle_bold' => 'secure and seamless.',
			'auth.not_logged_in.description_end' => 'No more juggling multiple apps—Atomic Blend brings it all together with privacy at its core, so you can focus on what truly matters.',
			'auth.not_logged_in.time_to_set_things_up' => 'Time to set things up!',
			'auth.not_logged_in.set_up_start' => 'To use Atomic Blend and sync your data across devices, you can choose between the cloud version or a self-hosted setup.\n\nEither way, your data is',
			'auth.not_logged_in.set_up_middle' => 'end-to-end encrypted',
			'auth.not_logged_in.set_up_end' => ', ensuring that only you have access to your encryption key —',
			'auth.not_logged_in.set_up_end_bold' => 'not us, not anyone else.',
			'auth.not_logged_in.description' => 'LifeOS is a personal life management application that helps you organize your life, achieve your goals, and improve your well-being.',
			'auth.login_or_register.login' => 'Log in',
			'auth.login_or_register.register' => 'Register',
			'auth.login_or_register.connecting_to' => 'Connecting to: ',
			'auth.login.title' => '👋 Welcome back!',
			'auth.login.description' => 'Use you email and password to log back in and access your data.',
			'auth.login.email' => 'Email',
			'auth.login.login' => 'Log in',
			'auth.register.email' => 'What’s your email ?',
			'auth.register.email_description' => 'Your email is used only for login and password recovery purposes.',
			'auth.register.we_never_sell' => 'We will never sell your data to third parties.',
			'auth.register.password' => 'Choose a password',
			'auth.register.password_hint' => 'SuperSecure123!',
			'auth.register.confirmation_hint' => 'Confirm your password',
			'auth.register.password_mismatch' => 'Passwords do not match',
			'auth.delete_account.title' => 'Delete your account',
			'auth.delete_account.description' => 'Are you sure you want to delete your account?',
			'auth.delete_account.cannot_be_undone' => 'This action cannot be undone.',
			'auth.mnemonic_key.title' => 'Your recovery key',
			'auth.mnemonic_key.description_start' => 'This is your recovery key.',
			'auth.mnemonic_key.description_mid' => 'Write it down and keep it in a safe place.',
			'auth.mnemonic_key.description_end' => 'You will need it to recover access to your data if you forget your password.',
			'auth.mnemonic_key.mnemonic_hint' => 'Enter your recovery key',
			'auth.mnemonic_key.mnemonic_error' => 'Invalid recovery key',
			'auth.mnemonic_key.copy_success' => 'Recovery key copied to clipboard',
			'auth.reset_password.title' => 'Reset your password',
			'auth.reset_password.subtitle' => 'You don\'t remember your password?',
			'auth.reset_password.warning' => 'You will receive an email with a code to confirm your identity, then you\'ll need your mnemonic key to get access to your data.',
			'auth.reset_password.no_mnemonic_data_loss' => 'If you don\'t have your mnemonic key, you will lose access to your previous data.',
			'auth.reset_password.email' => 'Email',
			'auth.reset_password.email_description' => 'The email address you used to register.',
			'auth.reset_password.email_hint' => 'atomicblend@gmail.com',
			'auth.reset_password.email_required' => 'Email is required',
			'auth.reset_password.confirmation_code' => 'Confirmation code',
			'auth.reset_password.confirmation_code_description' => 'Enter the code you received by email.',
			'auth.reset_password.confirmation_code_hint' => 'a1b5c3d4',
			'auth.reset_password.confirmation_code_required' => 'Confirmation code is required',
			'auth.reset_password.enter_the_confirmation_code' => 'Enter the confirmation code',
			'auth.reset_password.confirmation_code_sent' => 'A confirmation code has been sent to your email address.',
			'auth.reset_password.confirmation_code_sent_description' => 'Please check your inbox and enter the code below.',
			'auth.reset_password.do_you_have_your_mnemonic_key' => 'Do you have your backup key?',
			'auth.reset_password.backup_key_description' => 'This is a 12-word key that you received when you registered. It is used as a backup for your data and is required to recover your account.',
			'auth.reset_password.yes_i_have' => 'Yes, I have it, restore my data',
			'auth.reset_password.no_i_dont' => 'No, I don\'t have it, delete my data',
			'auth.reset_password.reset_data_warning' => 'I understand by selecting this option that all my previous data will be deleted and I will not be able to recover it.',
			'auth.reset_password.mnemonic_key' => 'Mnemonic key',
			'auth.reset_password.mnemonic_key_description' => 'Enter the backup key you received when you registered.',
			'auth.reset_password.mnemonic_key_hint' => 'business theme rotate together surprise wisdom powder knee view border local runway',
			'auth.reset_password.mnemonic_key_required' => 'Mnemonic key is required',
			'auth.reset_password.select_your_new_password' => 'Select your new password',
			'auth.reset_password.select_your_new_password_description' => 'Enter a new password to later access your account.',
			'auth.reset_password.new_password' => 'New password',
			'auth.reset_password.new_password_description' => 'Enter a new password to access your account.',
			'auth.reset_password.new_password_hint' => 'SuperSecure123!',
			'auth.reset_password.new_password_required' => 'New password is required',
			'auth.reset_password.confirm_new_password' => 'Confirm new password',
			'auth.reset_password.confirm_new_password_description' => 'Confirm your new password.',
			'auth.reset_password.confirm_new_password_required' => 'Confirm new password is required',
			'auth.reset_password.password_mismatch' => 'Passwords do not match',
			'auth.reset_password.password_missing' => 'Password is required',
			'auth.reset_password.password_too_short' => 'Password is too short',
			'auth.reset_password.recap_subtitle' => 'Recap of the process',
			'auth.reset_password.yes' => 'Yes',
			'auth.reset_password.no' => 'No',
			'auth.reset_password.confirm_reset' => 'Confirm reset',
			'tags.title' => 'Tags',
			'tags.add_modal.title' => 'Add a new tag',
			'tags.add_modal.edit_title' => 'Edit tag',
			'tags.add_modal.name' => 'Name of the tag',
			'tags.add_modal.name_hint' => 'Work',
			'tags.add_modal.name_description' => 'Define a name for your tag, this will help you remember what it is about and be shown in notifications.',
			'tags.add_modal.name_required' => 'Name is required',
			'tags.add_modal.color' => 'Color',
			'tags.add_modal.color_description' => 'Choose a color for your tag, this will help you remember what it is about and be shown in notifications.',
			'tags.add_modal.primary' => 'Primary',
			'tags.add_modal.accent' => 'Accent',
			'tags.add_modal.wheel' => 'Color wheel',
			'tags.delete.title' => 'Delete tag',
			'tags.delete.description' => 'Are you sure you want to delete this tag?',
			'tags.delete.warning' => 'This action cannot be undone and the tag will be removed from all tags associated.',
			'account.edit_profile' => 'Edit Profile',
			'account.sections.account' => 'Account',
			'account.actions.security' => 'Security & Privacy',
			'account.actions.delete_account' => 'Delete my Account',
			'account.profile.my_profile' => 'My Profile',
			'account.profile.email' => 'Email',
			'account.profile.undefined' => 'Undefined',
			'account.profile.email_missing' => 'Email is required',
			'account.profile.email_same' => 'Email must be different from the current email',
			'account.subscription_payments.title' => 'Subscription & Payments',
			'account.subscription_payments.subscription' => ({required Object subName}) => '${subName} Subscription',
			'account.subscription_payments.latest_subscription' => 'This is your subscription with the earliest billing date.',
			'account.subscription_payments.billing_cycle' => 'Billing Cycle',
			'account.subscription_payments.current_price' => 'Current Price',
			'account.subscription_payments.next_billing_date' => 'Next Billing Date',
			'account.subscription_payments.payment_history' => 'Payment History',
			'account.subscription_payments.no_payments' => 'No payments for now',
			'account.subscription_payments.manage_my_subscription' => 'Manage my subscription',
			'account.subscription_payments.management_url_only_mobile' => 'You can only manage your subscription from the iOS or Android app.',
			'account.security_and_privacy.title' => 'Security & Privacy',
			'account.security_and_privacy.change_password.title' => 'Change Password',
			'account.security_and_privacy.change_password.old_password' => 'Old Password',
			'account.security_and_privacy.change_password.new_password' => 'New Password',
			'account.security_and_privacy.change_password.confirm_password' => 'Confirm Password',
			'account.security_and_privacy.change_password.old_password_required' => 'Old password is required',
			'account.security_and_privacy.change_password.new_password_required' => 'New password is required',
			'account.security_and_privacy.change_password.confirm_password_required' => 'Confirm password is required',
			'account.security_and_privacy.change_password.password_mismatch' => 'Passwords do not match',
			'account.security_and_privacy.change_password.password_hint' => 'SuperSecure123!',
			'account.security_and_privacy.change_password.warning_changing_pws_will_log_you_out' => 'Changing your password will log you out of the app.',
			'under_construction.title' => 'We\'re working on it!',
			'under_construction.description' => 'This feature is not yet available, but we\'re working hard to bring it to you soon.\n\nStay tuned!',
			'more.title' => 'More',
			'loading.simple' => 'Loading...',
			'actions.save' => 'Save',
			'actions.cancel' => 'Cancel',
			'actions.next' => 'Next',
			'actions.back' => 'Back',
			'actions.delete' => 'Delete',
			'actions.add' => 'Add',
			'actions.edit' => 'Edit',
			'actions.clear' => 'Clear',
			'actions.close' => 'Close',
			'actions.subscribe' => 'Subscribe',
			'validation.required' => 'Required',
			'validation.invalid_url' => 'invalid URL',
			'errors.wrong_email_password' => 'Email or password incorrect',
			'errors.email_malformed' => 'Email malformed',
			'errors.unknown_error' => 'Unknown error',
			'name_generator.animals.0' => 'bat',
			'name_generator.animals.1' => 'owl',
			'name_generator.animals.2' => 'fox',
			'name_generator.animals.3' => 'rabbit',
			'name_generator.animals.4' => 'otter',
			'name_generator.animals.5' => 'penguin',
			'name_generator.animals.6' => 'panda',
			'name_generator.animals.7' => 'squirrel',
			'name_generator.animals.8' => 'koala',
			'name_generator.animals.9' => 'tiger',
			'name_generator.animals.10' => 'giraffe',
			'name_generator.animals.11' => 'monkey',
			'name_generator.animals.12' => 'raccoon',
			'name_generator.animals.13' => 'zebra',
			'name_generator.animals.14' => 'kangaroo',
			'name_generator.animals.15' => 'parrot',
			'name_generator.animals.16' => 'dolphin',
			'name_generator.animals.17' => 'sloth',
			'name_generator.animals.18' => 'wolf',
			'name_generator.animals.19' => 'lion',
			'name_generator.animals.20' => 'bear',
			'name_generator.animals.21' => 'eagle',
			'name_generator.animals.22' => 'elephant',
			'name_generator.animals.23' => 'leopard',
			'name_generator.animals.24' => 'cheetah',
			'name_generator.animals.25' => 'hippo',
			'name_generator.animals.26' => 'lemur',
			'name_generator.animals.27' => 'frog',
			'name_generator.animals.28' => 'chameleon',
			'name_generator.animals.29' => 'lynx',
			'name_generator.animals.30' => 'puffin',
			'name_generator.animals.31' => 'seal',
			'name_generator.animals.32' => 'falcon',
			'name_generator.animals.33' => 'orca',
			'name_generator.animals.34' => 'meerkat',
			'name_generator.animals.35' => 'hedgehog',
			'name_generator.animals.36' => 'weasel',
			'name_generator.animals.37' => 'armadillo',
			'name_generator.animals.38' => 'wombat',
			'name_generator.animals.39' => 'platypus',
			'name_generator.animals.40' => 'badger',
			'name_generator.animals.41' => 'yak',
			'name_generator.animals.42' => 'lizard',
			'name_generator.animals.43' => 'beetle',
			'name_generator.animals.44' => 'caterpillar',
			'name_generator.animals.45' => 'jaguar',
			'name_generator.animals.46' => 'buffalo',
			'name_generator.animals.47' => 'stingray',
			'name_generator.animals.48' => 'mole',
			'name_generator.animals.49' => 'donkey',
			'name_generator.animals.50' => 'toucan',
			'name_generator.animals.51' => 'flamingo',
			'name_generator.animals.52' => 'goat',
			'name_generator.animals.53' => 'alpaca',
			'name_generator.animals.54' => 'moose',
			'name_generator.animals.55' => 'peacock',
			'name_generator.animals.56' => 'rhino',
			'name_generator.animals.57' => 'gecko',
			'name_generator.animals.58' => 'turkey',
			'name_generator.animals.59' => 'hamster',
			'name_generator.animals.60' => 'otter',
			'name_generator.animals.61' => 'gorilla',
			'name_generator.animals.62' => 'walrus',
			'name_generator.animals.63' => 'vulture',
			'name_generator.animals.64' => 'stingray',
			'name_generator.animals.65' => 'newt',
			'name_generator.animals.66' => 'iguana',
			'name_generator.animals.67' => 'porcupine',
			'name_generator.animals.68' => 'python',
			'name_generator.animals.69' => 'antelope',
			'name_generator.animals.70' => 'gibbon',
			'name_generator.animals.71' => 'boar',
			'name_generator.animals.72' => 'crane',
			'name_generator.animals.73' => 'emu',
			'name_generator.animals.74' => 'pelican',
			'name_generator.animals.75' => 'hyena',
			'name_generator.animals.76' => 'heron',
			'name_generator.animals.77' => 'lynx',
			'name_generator.animals.78' => 'lamb',
			'name_generator.animals.79' => 'tortoise',
			'name_generator.animals.80' => 'shrimp',
			'name_generator.animals.81' => 'lobster',
			'name_generator.animals.82' => 'moth',
			'name_generator.animals.83' => 'clam',
			'name_generator.animals.84' => 'pufferfish',
			'name_generator.animals.85' => 'starfish',
			'name_generator.animals.86' => 'shrike',
			'name_generator.animals.87' => 'robin',
			'name_generator.animals.88' => 'quail',
			'name_generator.animals.89' => 'koala',
			'name_generator.animals.90' => 'snail',
			'name_generator.animals.91' => 'slug',
			'name_generator.animals.92' => 'owl',
			'name_generator.animals.93' => 'viper',
			'name_generator.animals.94' => 'duck',
			'name_generator.animals.95' => 'swallow',
			'name_generator.animals.96' => 'crab',
			'name_generator.animals.97' => 'llama',
			'name_generator.animals.98' => 'mongoose',
			'name_generator.animals.99' => 'kitten',
			'name_generator.adjectives.0' => 'happy',
			'name_generator.adjectives.1' => 'brave',
			'name_generator.adjectives.2' => 'cheerful',
			'name_generator.adjectives.3' => 'jolly',
			'name_generator.adjectives.4' => 'playful',
			'name_generator.adjectives.5' => 'bright',
			'name_generator.adjectives.6' => 'silly',
			'name_generator.adjectives.7' => 'curious',
			'name_generator.adjectives.8' => 'swift',
			'name_generator.adjectives.9' => 'bold',
			'name_generator.adjectives.10' => 'mighty',
			'name_generator.adjectives.11' => 'clever',
			'name_generator.adjectives.12' => 'sneaky',
			'name_generator.adjectives.13' => 'gentle',
			'name_generator.adjectives.14' => 'fuzzy',
			'name_generator.adjectives.15' => 'quirky',
			'name_generator.adjectives.16' => 'bouncy',
			'name_generator.adjectives.17' => 'sparkly',
			'name_generator.adjectives.18' => 'zippy',
			'name_generator.adjectives.19' => 'chirpy',
			'name_generator.adjectives.20' => 'glossy',
			'name_generator.adjectives.21' => 'snappy',
			'name_generator.adjectives.22' => 'shiny',
			'name_generator.adjectives.23' => 'dreamy',
			'name_generator.adjectives.24' => 'frisky',
			'name_generator.adjectives.25' => 'sunny',
			'name_generator.adjectives.26' => 'zany',
			'name_generator.adjectives.27' => 'wild',
			'name_generator.adjectives.28' => 'funky',
			'name_generator.adjectives.29' => 'feisty',
			'name_generator.adjectives.30' => 'snug',
			'name_generator.adjectives.31' => 'crisp',
			'name_generator.adjectives.32' => 'lively',
			'name_generator.adjectives.33' => 'sassy',
			'name_generator.adjectives.34' => 'witty',
			'name_generator.adjectives.35' => 'spunky',
			'name_generator.adjectives.36' => 'perky',
			'name_generator.adjectives.37' => 'crafty',
			'name_generator.adjectives.38' => 'jazzy',
			'name_generator.adjectives.39' => 'dapper',
			'name_generator.adjectives.40' => 'smiley',
			'name_generator.adjectives.41' => 'lucky',
			'name_generator.adjectives.42' => 'peppy',
			'name_generator.adjectives.43' => 'peachy',
			'name_generator.adjectives.44' => 'tidy',
			'name_generator.adjectives.45' => 'chilly',
			'name_generator.adjectives.46' => 'breezy',
			'name_generator.adjectives.47' => 'giddy',
			'name_generator.adjectives.48' => 'graceful',
			'name_generator.adjectives.49' => 'plucky',
			'name_generator.adjectives.50' => 'dizzy',
			'name_generator.adjectives.51' => 'spry',
			'name_generator.adjectives.52' => 'whimsical',
			'name_generator.adjectives.53' => 'nimble',
			'name_generator.adjectives.54' => 'chirpy',
			'name_generator.adjectives.55' => 'jumpy',
			'name_generator.adjectives.56' => 'quirky',
			'name_generator.adjectives.57' => 'spicy',
			'name_generator.adjectives.58' => 'perky',
			'name_generator.adjectives.59' => 'speedy',
			'name_generator.adjectives.60' => 'nifty',
			'name_generator.adjectives.61' => 'wobbly',
			'name_generator.adjectives.62' => 'crunchy',
			'name_generator.adjectives.63' => 'cranky',
			'name_generator.adjectives.64' => 'snazzy',
			'name_generator.adjectives.65' => 'peppy',
			'name_generator.adjectives.66' => 'bubbly',
			'name_generator.adjectives.67' => 'splashy',
			'name_generator.adjectives.68' => 'breezy',
			'name_generator.adjectives.69' => 'bouncy',
			'name_generator.adjectives.70' => 'twinkly',
			'name_generator.adjectives.71' => 'gleeful',
			'name_generator.adjectives.72' => 'squishy',
			'name_generator.adjectives.73' => 'wacky',
			'name_generator.adjectives.74' => 'zesty',
			'name_generator.adjectives.75' => 'snappy',
			'name_generator.adjectives.76' => 'jovial',
			'name_generator.adjectives.77' => 'feathered',
			'name_generator.adjectives.78' => 'prickly',
			'name_generator.adjectives.79' => 'whizzy',
			'name_generator.adjectives.80' => 'perky',
			'name_generator.adjectives.81' => 'whiskery',
			'name_generator.adjectives.82' => 'spotty',
			'name_generator.adjectives.83' => 'stripy',
			'name_generator.adjectives.84' => 'flicky',
			'name_generator.adjectives.85' => 'chatty',
			'name_generator.adjectives.86' => 'dandy',
			'name_generator.adjectives.87' => 'wiggly',
			'name_generator.adjectives.88' => 'giggly',
			'name_generator.adjectives.89' => 'spiffy',
			'name_generator.adjectives.90' => 'jumpy',
			'name_generator.adjectives.91' => 'perky',
			'name_generator.adjectives.92' => 'skippy',
			'name_generator.adjectives.93' => 'fluffy',
			'name_generator.adjectives.94' => 'chunky',
			'name_generator.adjectives.95' => 'puffy',
			'name_generator.adjectives.96' => 'loopy',
			'name_generator.adjectives.97' => 'pinky',
			'name_generator.adjectives.98' => 'spunky',
			'name_generator.adjectives.99' => 'fancy',
			'paywall.title' => 'Get AtomicBlend Cloud',
			'paywall.subtitle' => 'Enjoy Atomic Blend without restrictions and help the opensource initiative.',
			'paywall.advantages.all_apps_of_the_suite.title' => 'All Apps of the Suite',
			'paywall.advantages.all_apps_of_the_suite.description' => 'Get access to all the apps of the suite, including Tasks, Habits, Calendar, Notes, and more.',
			'paywall.advantages.end_to_end_encrypted.title' => 'End-to-End Encryption',
			'paywall.advantages.end_to_end_encrypted.description' => 'Your data is yours, forever.',
			'paywall.advantages.unlimited_tasks.title' => 'Unlimited Tasks',
			'paywall.advantages.unlimited_tasks.description' => 'Create as many tasks as you want, no limits.',
			'paywall.advantages.unlimited_habits.title' => 'Unlimited Habits',
			'paywall.advantages.unlimited_habits.description' => 'Take a step towards a healthier life with unlimited habits.',
			'paywall.advantages.unlimited_tags.title' => 'Unlimited Tags / Folders',
			'paywall.advantages.unlimited_tags.description' => 'Use as many tags and folders as needed to organize your life.',
			'paywall.advantages.sync_across_devices.title' => 'Sync Across Devices',
			'paywall.advantages.sync_across_devices.description' => 'Access your data from any device, anywhere.',
			'paywall.advantages.community_backed.title' => 'Community Backed',
			'paywall.advantages.community_backed.description' => '100% opensource : join a community of users who support the project.',
			'paywall.pricing.\$rc_annual.title' => 'Yearly',
			'paywall.pricing.\$rc_annual.price' => '\$39.99/year',
			'paywall.pricing.\$rc_annual.billed' => '1 month free trial',
			'paywall.pricing.\$rc_annual.discount' => '16% off',
			'paywall.pricing.\$rc_monthly.title' => 'Monthly',
			'paywall.pricing.\$rc_monthly.price' => '\$3.99/mo',
			'paywall.pricing.\$rc_monthly.billed' => '1 week free trial',
			'paywall.pricing.\$rc_monthly.discount' => '',
			'paywall.pricing.cloud_yearly.title' => 'Yearly',
			'paywall.pricing.cloud_yearly.price' => '\$3.33/mo',
			'paywall.pricing.cloud_yearly.billed' => 'billed at \$39.99/year',
			'paywall.pricing.cloud_yearly.discount' => '16% off',
			'paywall.pricing.cloud_monthly.title' => 'Monthly',
			'paywall.pricing.cloud_monthly.price' => '\$3.99/mo',
			'paywall.pricing.cloud_monthly.billed' => 'billed at \$3.99/month',
			'paywall.pricing.cloud_monthly.discount' => '',
			'paywall.no_package_selected' => 'No package selected',
			'paywall.purchase_failed' => 'Purchase failed',
			'paywall.restore_purchase' => 'Restore Purchase',
			'paywall.terms' => 'Terms of Service',
			'paywall.privacy_policy' => 'Privacy Policy',
			'paywall.payment_in_progress' => 'Payment in progress',
			'paywall.payment_in_progress_description' => 'Please wait while we process your payment.',
			'paywall.success' => 'Purchase successful',
			'paywall.validation_failed' => 'Validation failed',
			'paywall.validation_failed_description' => 'Please check your internet connection and restart the app.',
			'paywall.mobile_app_required' => 'Mobile app required',
			'paywall.payment_on_mobile_for_better_xp' => 'To offer you the best experience possible, payment and account configuration is only available on the mobile app',
			'paywall.ios' => 'iOS',
			'paywall.android' => 'Android',
			'my_notes.title' => 'My Notes',
			'my_notes.untitled' => 'Untitled',
			'my_notes.no_content' => 'No content',
			'my_notes.delete_note.title' => 'Delete note',
			'my_notes.delete_note.description' => 'Are you sure you want to delete this note?',
			'my_notes.delete_note.warning' => 'This action cannot be undone.',
			'recently_deleted.title' => 'Recently Deleted',
			'recently_deleted.no_notes' => 'No recently deleted notes',
			'organize.title' => 'Organize',
			'organize.latest_items' => 'Latest items',
			'folders.title' => 'Folders',
			'folders.add_folder' => 'Add Folder',
			'folders.edit_folder' => 'Edit Folder',
			'folders.name' => 'Folder Name',
			'folders.name_hint' => 'Work',
			'folders.name_description' => 'Define a name for your folder, this will help you remember what it is about and be shown in notifications.',
			'folders.name_required' => 'Name is required',
			'folders.color' => 'Color',
			'folders.color_description' => 'Choose a color for your folder, this will help you remember what it is about and be shown in notifications.',
			'folders.primary' => 'Primary',
			'folders.accent' => 'Accent',
			'folders.wheel' => 'Color wheel',
			'folders.search_emoji_hint' => 'Search for an emoji',
			'folders.no_folders' => 'No folders yet',
			'folders.delete.title' => 'Delete folder',
			'folders.delete.description' => 'Are you sure you want to delete this folder?',
			'folders.delete.warning' => 'This action cannot be undone and the folder will be removed from all tasks associated.',
			'search.title' => 'Search',
			'dates.today' => 'Today',
			'dates.tomorrow' => 'Tomorrow',
			'time_units.short.day' => 'd',
			'time_units.short.hour' => 'h',
			'time_units.short.minute' => 'm',
			'time_units.long.day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'days', one: 'day', other: 'days', ), 
			'time_units.long.hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'hours', one: 'hour', other: 'hours', ), 
			'time_units.long.minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'minutes', one: 'minute', other: 'minutes', ), 
			'sync.title' => 'Synchronization',
			'sync.description' => 'Keep your data up to date across all your devices',
			'sync.status' => 'Status',
			'sync.loading' => 'Loading...',
			'sync.up_to_date' => 'Up to date',
			'sync.conflicts' => 'Conflicts',
			'sync.x_items_have_conflicts' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'No items have conflicts', one: '1 item has conflicts', other: '${n} items have conflicts', ), 
			'sync.details.title' => 'Details',
			'sync.details.tasks' => 'Tasks',
			'sync.details.notes' => 'Notes',
			'sync.details.task_items' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'No tasks', one: '1 task', other: '${n} tasks', ), 
			'sync.details.notes_items' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'No notes', one: '1 note', other: '${n} notes', ), 
			'sync.sync_now' => 'Sync now',
			'sync.conflict_resolver.title' => 'Conflict Resolver',
			'sync.conflict_resolver.patch_date' => ({required Object date}) => 'Update date: ${date}',
			'sync.conflict_resolver.item_type.task' => 'Task',
			'sync.conflict_resolver.item_type.note' => 'Note',
			'sync.conflict_resolver.choose_between' => 'Choose between accepting or refusing the changes',
			'sync.conflict_resolver.refuse' => 'Refuse',
			'sync.conflict_resolver.accept' => 'Accept',
			'sync.conflict_resolver.upcoming' => 'Upcoming',
			'sync.conflict_resolver.in_app_version' => 'In-app',
			'sync.conflict_resolver.changes_to_apply' => 'Changes to apply',
			'sync.conflict_resolver.apply_to_all' => 'Apply decision to all conflicts',
			'sync.conflict_resolver.fields.title' => 'Title',
			'sync.conflict_resolver.fields.end_date' => 'End date',
			'sync.conflict_resolver.fields.description' => 'Notes',
			'sync.conflict_resolver.fields.start_date' => 'Start date',
			'sync.conflict_resolver.fields.reminders_title' => 'Reminders',
			'sync.conflict_resolver.fields.reminders' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'No reminders', one: '1 reminder', other: '${n} reminders', ), 
			'sync.conflict_resolver.fields.undefined' => 'Undefined',
			'sync.conflict_resolver.fields.priority' => 'Priority',
			'sync.conflict_resolver.fields.folder' => 'Folder',
			'sync.conflict_resolver.fields.tags' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'No tags', one: '1 tag', other: '${n} tags', ), 
			'sync.conflict_resolver.progress' => 'Progress',
			'conflict_detected_modal.title' => 'Conflict Detected',
			'conflict_detected_modal.description' => 'Previous edits of this task made while offline conflicts with the current version of the task.',
			'conflict_detected_modal.warning' => 'You can either resolve the conflicts now or come back later to resolve them.',
			'conflict_detected_modal.resolve_now' => 'Resolve',
			'conflict_detected_modal.later' => 'Later',
			_ => null,
		};
	}
}
