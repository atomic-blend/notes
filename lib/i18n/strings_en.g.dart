///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
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
	String get app_name => 'Atomic Blend';
	String get app_name_saas => 'Atomic Blend Cloud';
	late final TranslationsAuthEn auth = TranslationsAuthEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
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

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	late final TranslationsSettingsAppSettingsEn app_settings = TranslationsSettingsAppSettingsEn._(_root);
	String get logout => 'Logout';
}

// Path: tags
class TranslationsTagsEn {
	TranslationsTagsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Tags';
	late final TranslationsTagsAddModalEn add_modal = TranslationsTagsAddModalEn._(_root);
	late final TranslationsTagsDeleteEn delete = TranslationsTagsDeleteEn._(_root);
}

// Path: account
class TranslationsAccountEn {
	TranslationsAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
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
	String get title => 'We\'re working on it!';
	String get description => 'This feature is not yet available, but we\'re working hard to bring it to you soon.\n\nStay tuned!';
}

// Path: more
class TranslationsMoreEn {
	TranslationsMoreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'More';
}

// Path: loading
class TranslationsLoadingEn {
	TranslationsLoadingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get simple => 'Loading...';
}

// Path: actions
class TranslationsActionsEn {
	TranslationsActionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get save => 'Save';
	String get cancel => 'Cancel';
	String get next => 'Next';
	String get back => 'Back';
	String get delete => 'Delete';
	String get add => 'Add';
	String get edit => 'Edit';
	String get clear => 'Clear';
	String get close => 'Close';
	String get subscribe => 'Subscribe';
}

// Path: validation
class TranslationsValidationEn {
	TranslationsValidationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get required => 'Required';
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
	String get title => 'Get AtomicBlend Cloud';
	String get subtitle => 'Enjoy Atomic Blend without restrictions and help the opensource initiative.';
	late final TranslationsPaywallAdvantagesEn advantages = TranslationsPaywallAdvantagesEn._(_root);
	Map<String, dynamic> get pricing => {
		'\$rc_annual': TranslationsPaywallPricing$rcAnnualEn._(_root),
		'\$rc_monthly': TranslationsPaywallPricing$rcMonthlyEn._(_root),
		'cloud_yearly': TranslationsPaywallPricingCloudYearlyEn._(_root),
		'cloud_monthly': TranslationsPaywallPricingCloudMonthlyEn._(_root),
	};
	String get no_package_selected => 'No package selected';
	String get purchase_failed => 'Purchase failed';
	String get restore_purchase => 'Restore Purchase';
	String get terms => 'Terms of Service';
	String get privacy_policy => 'Privacy Policy';
	String get payment_in_progress => 'Payment in progress';
	String get payment_in_progress_description => 'Please wait while we process your payment.';
	String get success => 'Purchase successful';
	String get validation_failed => 'Validation failed';
	String get validation_failed_description => 'Please check your internet connection and restart the app.';
	String get mobile_app_required => 'Mobile app required';
	String get payment_on_mobile_for_better_xp => 'To offer you the best experience possible, payment and account configuration is only available on the mobile app';
	String get ios => 'iOS';
	String get android => 'Android';
}

// Path: my_notes
class TranslationsMyNotesEn {
	TranslationsMyNotesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'My Notes';
	late final TranslationsMyNotesDeleteNoteEn delete_note = TranslationsMyNotesDeleteNoteEn._(_root);
}

// Path: recently_deleted
class TranslationsRecentlyDeletedEn {
	TranslationsRecentlyDeletedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Recently Deleted';
	String get no_notes => 'No recently deleted notes';
}

// Path: organize
class TranslationsOrganizeEn {
	TranslationsOrganizeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Organize';
	String get latest_items => 'Latest items';
}

// Path: folders
class TranslationsFoldersEn {
	TranslationsFoldersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Folders';
	String get add_folder => 'Add Folder';
	String get edit_folder => 'Edit Folder';
	String get name => 'Folder Name';
	String get name_hint => 'Work';
	String get name_description => 'Define a name for your folder, this will help you remember what it is about and be shown in notifications.';
	String get name_required => 'Name is required';
	String get color => 'Color';
	String get color_description => 'Choose a color for your folder, this will help you remember what it is about and be shown in notifications.';
	String get primary => 'Primary';
	String get accent => 'Accent';
	String get wheel => 'Color wheel';
	String get search_emoji_hint => 'Search for an emoji';
	String get no_folders => 'No folders yet';
	late final TranslationsFoldersDeleteEn delete = TranslationsFoldersDeleteEn._(_root);
}

// Path: search
class TranslationsSearchEn {
	TranslationsSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Search';
}

// Path: dates
class TranslationsDatesEn {
	TranslationsDatesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get today => 'Today';
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
	String get title => 'Synchronization';
	String get description => 'Keep your data up to date across all your devices';
	String get status => 'Status';
	String get loading => 'Loading...';
	String get up_to_date => 'Up to date';
	String get conflicts => 'Conflicts';
	String x_items_have_conflicts({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'No items have conflicts',
		one: '1 item has conflicts',
		other: '${n} items have conflicts',
	);
	late final TranslationsSyncDetailsEn details = TranslationsSyncDetailsEn._(_root);
	String get sync_now => 'Sync now';
	late final TranslationsSyncConflictResolverEn conflict_resolver = TranslationsSyncConflictResolverEn._(_root);
}

// Path: auth.not_logged_in
class TranslationsAuthNotLoggedInEn {
	TranslationsAuthNotLoggedInEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcome => 'Welcome to Atomic Blend';
	String get description_start => 'Atomic Blend is the first';
	String get e2e_app => 'end-to-end encrypted app';
	String get description_middle => 'that combines all the tools you need to manage both work and personal life in one place.\n\nFrom task management to note-taking, document writing, time tracking, movie tracking, food tracking, everything stays';
	String get description_middle_bold => 'secure and seamless.';
	String get description_end => 'No more juggling multiple apps—Atomic Blend brings it all together with privacy at its core, so you can focus on what truly matters.';
	String get time_to_set_things_up => 'Time to set things up!';
	String get set_up_start => 'To use Atomic Blend and sync your data across devices, you can choose between the cloud version or a self-hosted setup.\n\nEither way, your data is';
	String get set_up_middle => 'end-to-end encrypted';
	String get set_up_end => ', ensuring that only you have access to your encryption key —';
	String get set_up_end_bold => 'not us, not anyone else.';
	String get description => 'LifeOS is a personal life management application that helps you organize your life, achieve your goals, and improve your well-being.';
}

// Path: auth.login_or_register
class TranslationsAuthLoginOrRegisterEn {
	TranslationsAuthLoginOrRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get login => 'Log in';
	String get register => 'Register';
	String get connecting_to => 'Connecting to: ';
}

// Path: auth.login
class TranslationsAuthLoginEn {
	TranslationsAuthLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '👋 Welcome back!';
	String get description => 'Use you email and password to log back in and access your data.';
	String get email => 'Email';
	String get login => 'Log in';
}

// Path: auth.register
class TranslationsAuthRegisterEn {
	TranslationsAuthRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'What’s your email ?';
	String get email_description => 'Your email is used only for login and password recovery purposes.';
	String get we_never_sell => 'We will never sell your data to third parties.';
	String get password => 'Choose a password';
	String get password_hint => 'SuperSecure123!';
	String get confirmation_hint => 'Confirm your password';
	String get password_mismatch => 'Passwords do not match';
}

// Path: auth.delete_account
class TranslationsAuthDeleteAccountEn {
	TranslationsAuthDeleteAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Delete your account';
	String get description => 'Are you sure you want to delete your account?';
	String get cannot_be_undone => 'This action cannot be undone.';
}

// Path: auth.mnemonic_key
class TranslationsAuthMnemonicKeyEn {
	TranslationsAuthMnemonicKeyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Your recovery key';
	String get description_start => 'This is your recovery key.';
	String get description_mid => 'Write it down and keep it in a safe place.';
	String get description_end => 'You will need it to recover access to your data if you forget your password.';
	String get mnemonic_hint => 'Enter your recovery key';
	String get mnemonic_error => 'Invalid recovery key';
	String get copy_success => 'Recovery key copied to clipboard';
}

// Path: auth.reset_password
class TranslationsAuthResetPasswordEn {
	TranslationsAuthResetPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Reset your password';
	String get subtitle => 'You don\'t remember your password?';
	String get warning => 'You will receive an email with a code to confirm your identity, then you\'ll need your mnemonic key to get access to your data.';
	String get no_mnemonic_data_loss => 'If you don\'t have your mnemonic key, you will lose access to your previous data.';
	String get email => 'Email';
	String get email_description => 'The email address you used to register.';
	String get email_hint => 'atomicblend@gmail.com';
	String get email_required => 'Email is required';
	String get confirmation_code => 'Confirmation code';
	String get confirmation_code_description => 'Enter the code you received by email.';
	String get confirmation_code_hint => 'a1b5c3d4';
	String get confirmation_code_required => 'Confirmation code is required';
	String get enter_the_confirmation_code => 'Enter the confirmation code';
	String get confirmation_code_sent => 'A confirmation code has been sent to your email address.';
	String get confirmation_code_sent_description => 'Please check your inbox and enter the code below.';
	String get do_you_have_your_mnemonic_key => 'Do you have your backup key?';
	String get backup_key_description => 'This is a 12-word key that you received when you registered. It is used as a backup for your data and is required to recover your account.';
	String get yes_i_have => 'Yes, I have it, restore my data';
	String get no_i_dont => 'No, I don\'t have it, delete my data';
	String get reset_data_warning => 'I understand by selecting this option that all my previous data will be deleted and I will not be able to recover it.';
	String get mnemonic_key => 'Mnemonic key';
	String get mnemonic_key_description => 'Enter the backup key you received when you registered.';
	String get mnemonic_key_hint => 'business theme rotate together surprise wisdom powder knee view border local runway';
	String get mnemonic_key_required => 'Mnemonic key is required';
	String get select_your_new_password => 'Select your new password';
	String get select_your_new_password_description => 'Enter a new password to later access your account.';
	String get new_password => 'New password';
	String get new_password_description => 'Enter a new password to access your account.';
	String get new_password_hint => 'SuperSecure123!';
	String get new_password_required => 'New password is required';
	String get confirm_new_password => 'Confirm new password';
	String get confirm_new_password_description => 'Confirm your new password.';
	String get confirm_new_password_required => 'Confirm new password is required';
	String get password_mismatch => 'Passwords do not match';
	String get password_missing => 'Password is required';
	String get password_too_short => 'Password is too short';
	String get recap_subtitle => 'Recap of the process';
	String get yes => 'Yes';
	String get no => 'No';
	String get confirm_reset => 'Confirm reset';
}

// Path: settings.app_settings
class TranslationsSettingsAppSettingsEn {
	TranslationsSettingsAppSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'App Settings';
	late final TranslationsSettingsAppSettingsSelfHostedUrlEn selfHostedUrl = TranslationsSettingsAppSettingsSelfHostedUrlEn._(_root);
}

// Path: tags.add_modal
class TranslationsTagsAddModalEn {
	TranslationsTagsAddModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Add a new tag';
	String get edit_title => 'Edit tag';
	String get name => 'Name of the tag';
	String get name_hint => 'Work';
	String get name_description => 'Define a name for your tag, this will help you remember what it is about and be shown in notifications.';
	String get name_required => 'Name is required';
	String get color => 'Color';
	String get color_description => 'Choose a color for your tag, this will help you remember what it is about and be shown in notifications.';
	String get primary => 'Primary';
	String get accent => 'Accent';
	String get wheel => 'Color wheel';
}

// Path: tags.delete
class TranslationsTagsDeleteEn {
	TranslationsTagsDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Delete tag';
	String get description => 'Are you sure you want to delete this tag?';
	String get warning => 'This action cannot be undone and the tag will be removed from all tags associated.';
}

// Path: account.sections
class TranslationsAccountSectionsEn {
	TranslationsAccountSectionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get account => 'Account';
}

// Path: account.actions
class TranslationsAccountActionsEn {
	TranslationsAccountActionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get security => 'Security & Privacy';
	String get delete_account => 'Delete my Account';
}

// Path: account.profile
class TranslationsAccountProfileEn {
	TranslationsAccountProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get my_profile => 'My Profile';
	String get email => 'Email';
	String get undefined => 'Undefined';
	String get email_missing => 'Email is required';
	String get email_same => 'Email must be different from the current email';
}

// Path: account.subscription_payments
class TranslationsAccountSubscriptionPaymentsEn {
	TranslationsAccountSubscriptionPaymentsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Subscription & Payments';
	String subscription({required Object subName}) => '${subName} Subscription';
	String get latest_subscription => 'This is your subscription with the earliest billing date.';
	String get billing_cycle => 'Billing Cycle';
	String get current_price => 'Current Price';
	String get next_billing_date => 'Next Billing Date';
	String get payment_history => 'Payment History';
	String get no_payments => 'No payments for now';
	String get manage_my_subscription => 'Manage my subscription';
	String get management_url_only_mobile => 'You can only manage your subscription from the iOS or Android app.';
}

// Path: account.security_and_privacy
class TranslationsAccountSecurityAndPrivacyEn {
	TranslationsAccountSecurityAndPrivacyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
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
	String get title => 'Yearly';
	String get price => '\$39.99/year';
	String get billed => '1 month free trial';
	String get discount => '16% off';
}

// Path: paywall.pricing.\$rc_monthly
class TranslationsPaywallPricing$rcMonthlyEn {
	TranslationsPaywallPricing$rcMonthlyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Monthly';
	String get price => '\$3.99/mo';
	String get billed => '1 week free trial';
	String get discount => '';
}

// Path: paywall.pricing.cloud_yearly
class TranslationsPaywallPricingCloudYearlyEn {
	TranslationsPaywallPricingCloudYearlyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Yearly';
	String get price => '\$3.33/mo';
	String get billed => 'billed at \$39.99/year';
	String get discount => '16% off';
}

// Path: paywall.pricing.cloud_monthly
class TranslationsPaywallPricingCloudMonthlyEn {
	TranslationsPaywallPricingCloudMonthlyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Monthly';
	String get price => '\$3.99/mo';
	String get billed => 'billed at \$3.99/month';
	String get discount => '';
}

// Path: my_notes.delete_note
class TranslationsMyNotesDeleteNoteEn {
	TranslationsMyNotesDeleteNoteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Delete note';
	String get description => 'Are you sure you want to delete this note?';
	String get warning => 'This action cannot be undone.';
}

// Path: folders.delete
class TranslationsFoldersDeleteEn {
	TranslationsFoldersDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Delete folder';
	String get description => 'Are you sure you want to delete this folder?';
	String get warning => 'This action cannot be undone and the folder will be removed from all tasks associated.';
}

// Path: time_units.short
class TranslationsTimeUnitsShortEn {
	TranslationsTimeUnitsShortEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get day => 'd';
	String get hour => 'h';
	String get minute => 'm';
}

// Path: time_units.long
class TranslationsTimeUnitsLongEn {
	TranslationsTimeUnitsLongEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'days',
		one: 'day',
		other: 'days',
	);
	String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'hours',
		one: 'hour',
		other: 'hours',
	);
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
	String get title => 'Details';
	String get tasks => 'Tasks';
	String task_items({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'No tasks',
		one: '1 task',
		other: '${n} tasks',
	);
}

// Path: sync.conflict_resolver
class TranslationsSyncConflictResolverEn {
	TranslationsSyncConflictResolverEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Conflict Resolver';
	String patch_date({required Object date}) => 'Update date: ${date}';
	Map<String, String> get item_type => {
		'task': 'Task',
		'note': 'Note',
	};
	String get choose_between => 'Choose between accepting or refusing the changes';
	String get refuse => 'Refuse';
	String get accept => 'Accept';
	String get upcoming => 'Upcoming';
	String get in_app_version => 'In-app';
	String get changes_to_apply => 'Changes to apply';
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
	String get progress => 'Progress';
}

// Path: settings.app_settings.selfHostedUrl
class TranslationsSettingsAppSettingsSelfHostedUrlEn {
	TranslationsSettingsAppSettingsSelfHostedUrlEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Self-Hosted URL';
	String get description => 'If you are using a self-hosted instance of Atomic Blend, you can enter the URL here.';
	String get placeholder => 'Enter the URL of your instance';
	String get not_set => 'Not set';
}

// Path: account.security_and_privacy.change_password
class TranslationsAccountSecurityAndPrivacyChangePasswordEn {
	TranslationsAccountSecurityAndPrivacyChangePasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Change Password';
	String get old_password => 'Old Password';
	String get new_password => 'New Password';
	String get confirm_password => 'Confirm Password';
	String get old_password_required => 'Old password is required';
	String get new_password_required => 'New password is required';
	String get confirm_password_required => 'Confirm password is required';
	String get password_mismatch => 'Passwords do not match';
	String get password_hint => 'SuperSecure123!';
	String get warning_changing_pws_will_log_you_out => 'Changing your password will log you out of the app.';
}

// Path: paywall.advantages.all_apps_of_the_suite
class TranslationsPaywallAdvantagesAllAppsOfTheSuiteEn {
	TranslationsPaywallAdvantagesAllAppsOfTheSuiteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'All Apps of the Suite';
	String get description => 'Get access to all the apps of the suite, including Tasks, Habits, Calendar, Notes, and more.';
}

// Path: paywall.advantages.end_to_end_encrypted
class TranslationsPaywallAdvantagesEndToEndEncryptedEn {
	TranslationsPaywallAdvantagesEndToEndEncryptedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'End-to-End Encryption';
	String get description => 'Your data is yours, forever.';
}

// Path: paywall.advantages.unlimited_tasks
class TranslationsPaywallAdvantagesUnlimitedTasksEn {
	TranslationsPaywallAdvantagesUnlimitedTasksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Unlimited Tasks';
	String get description => 'Create as many tasks as you want, no limits.';
}

// Path: paywall.advantages.unlimited_habits
class TranslationsPaywallAdvantagesUnlimitedHabitsEn {
	TranslationsPaywallAdvantagesUnlimitedHabitsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Unlimited Habits';
	String get description => 'Take a step towards a healthier life with unlimited habits.';
}

// Path: paywall.advantages.unlimited_tags
class TranslationsPaywallAdvantagesUnlimitedTagsEn {
	TranslationsPaywallAdvantagesUnlimitedTagsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Unlimited Tags / Folders';
	String get description => 'Use as many tags and folders as needed to organize your life.';
}

// Path: paywall.advantages.sync_across_devices
class TranslationsPaywallAdvantagesSyncAcrossDevicesEn {
	TranslationsPaywallAdvantagesSyncAcrossDevicesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Sync Across Devices';
	String get description => 'Access your data from any device, anywhere.';
}

// Path: paywall.advantages.community_backed
class TranslationsPaywallAdvantagesCommunityBackedEn {
	TranslationsPaywallAdvantagesCommunityBackedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Community Backed';
	String get description => '100% opensource : join a community of users who support the project.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app_name': return 'Atomic Blend';
			case 'app_name_saas': return 'Atomic Blend Cloud';
			case 'auth.not_logged_in.welcome': return 'Welcome to Atomic Blend';
			case 'auth.not_logged_in.description_start': return 'Atomic Blend is the first';
			case 'auth.not_logged_in.e2e_app': return 'end-to-end encrypted app';
			case 'auth.not_logged_in.description_middle': return 'that combines all the tools you need to manage both work and personal life in one place.\n\nFrom task management to note-taking, document writing, time tracking, movie tracking, food tracking, everything stays';
			case 'auth.not_logged_in.description_middle_bold': return 'secure and seamless.';
			case 'auth.not_logged_in.description_end': return 'No more juggling multiple apps—Atomic Blend brings it all together with privacy at its core, so you can focus on what truly matters.';
			case 'auth.not_logged_in.time_to_set_things_up': return 'Time to set things up!';
			case 'auth.not_logged_in.set_up_start': return 'To use Atomic Blend and sync your data across devices, you can choose between the cloud version or a self-hosted setup.\n\nEither way, your data is';
			case 'auth.not_logged_in.set_up_middle': return 'end-to-end encrypted';
			case 'auth.not_logged_in.set_up_end': return ', ensuring that only you have access to your encryption key —';
			case 'auth.not_logged_in.set_up_end_bold': return 'not us, not anyone else.';
			case 'auth.not_logged_in.description': return 'LifeOS is a personal life management application that helps you organize your life, achieve your goals, and improve your well-being.';
			case 'auth.login_or_register.login': return 'Log in';
			case 'auth.login_or_register.register': return 'Register';
			case 'auth.login_or_register.connecting_to': return 'Connecting to: ';
			case 'auth.login.title': return '👋 Welcome back!';
			case 'auth.login.description': return 'Use you email and password to log back in and access your data.';
			case 'auth.login.email': return 'Email';
			case 'auth.login.login': return 'Log in';
			case 'auth.register.email': return 'What’s your email ?';
			case 'auth.register.email_description': return 'Your email is used only for login and password recovery purposes.';
			case 'auth.register.we_never_sell': return 'We will never sell your data to third parties.';
			case 'auth.register.password': return 'Choose a password';
			case 'auth.register.password_hint': return 'SuperSecure123!';
			case 'auth.register.confirmation_hint': return 'Confirm your password';
			case 'auth.register.password_mismatch': return 'Passwords do not match';
			case 'auth.delete_account.title': return 'Delete your account';
			case 'auth.delete_account.description': return 'Are you sure you want to delete your account?';
			case 'auth.delete_account.cannot_be_undone': return 'This action cannot be undone.';
			case 'auth.mnemonic_key.title': return 'Your recovery key';
			case 'auth.mnemonic_key.description_start': return 'This is your recovery key.';
			case 'auth.mnemonic_key.description_mid': return 'Write it down and keep it in a safe place.';
			case 'auth.mnemonic_key.description_end': return 'You will need it to recover access to your data if you forget your password.';
			case 'auth.mnemonic_key.mnemonic_hint': return 'Enter your recovery key';
			case 'auth.mnemonic_key.mnemonic_error': return 'Invalid recovery key';
			case 'auth.mnemonic_key.copy_success': return 'Recovery key copied to clipboard';
			case 'auth.reset_password.title': return 'Reset your password';
			case 'auth.reset_password.subtitle': return 'You don\'t remember your password?';
			case 'auth.reset_password.warning': return 'You will receive an email with a code to confirm your identity, then you\'ll need your mnemonic key to get access to your data.';
			case 'auth.reset_password.no_mnemonic_data_loss': return 'If you don\'t have your mnemonic key, you will lose access to your previous data.';
			case 'auth.reset_password.email': return 'Email';
			case 'auth.reset_password.email_description': return 'The email address you used to register.';
			case 'auth.reset_password.email_hint': return 'atomicblend@gmail.com';
			case 'auth.reset_password.email_required': return 'Email is required';
			case 'auth.reset_password.confirmation_code': return 'Confirmation code';
			case 'auth.reset_password.confirmation_code_description': return 'Enter the code you received by email.';
			case 'auth.reset_password.confirmation_code_hint': return 'a1b5c3d4';
			case 'auth.reset_password.confirmation_code_required': return 'Confirmation code is required';
			case 'auth.reset_password.enter_the_confirmation_code': return 'Enter the confirmation code';
			case 'auth.reset_password.confirmation_code_sent': return 'A confirmation code has been sent to your email address.';
			case 'auth.reset_password.confirmation_code_sent_description': return 'Please check your inbox and enter the code below.';
			case 'auth.reset_password.do_you_have_your_mnemonic_key': return 'Do you have your backup key?';
			case 'auth.reset_password.backup_key_description': return 'This is a 12-word key that you received when you registered. It is used as a backup for your data and is required to recover your account.';
			case 'auth.reset_password.yes_i_have': return 'Yes, I have it, restore my data';
			case 'auth.reset_password.no_i_dont': return 'No, I don\'t have it, delete my data';
			case 'auth.reset_password.reset_data_warning': return 'I understand by selecting this option that all my previous data will be deleted and I will not be able to recover it.';
			case 'auth.reset_password.mnemonic_key': return 'Mnemonic key';
			case 'auth.reset_password.mnemonic_key_description': return 'Enter the backup key you received when you registered.';
			case 'auth.reset_password.mnemonic_key_hint': return 'business theme rotate together surprise wisdom powder knee view border local runway';
			case 'auth.reset_password.mnemonic_key_required': return 'Mnemonic key is required';
			case 'auth.reset_password.select_your_new_password': return 'Select your new password';
			case 'auth.reset_password.select_your_new_password_description': return 'Enter a new password to later access your account.';
			case 'auth.reset_password.new_password': return 'New password';
			case 'auth.reset_password.new_password_description': return 'Enter a new password to access your account.';
			case 'auth.reset_password.new_password_hint': return 'SuperSecure123!';
			case 'auth.reset_password.new_password_required': return 'New password is required';
			case 'auth.reset_password.confirm_new_password': return 'Confirm new password';
			case 'auth.reset_password.confirm_new_password_description': return 'Confirm your new password.';
			case 'auth.reset_password.confirm_new_password_required': return 'Confirm new password is required';
			case 'auth.reset_password.password_mismatch': return 'Passwords do not match';
			case 'auth.reset_password.password_missing': return 'Password is required';
			case 'auth.reset_password.password_too_short': return 'Password is too short';
			case 'auth.reset_password.recap_subtitle': return 'Recap of the process';
			case 'auth.reset_password.yes': return 'Yes';
			case 'auth.reset_password.no': return 'No';
			case 'auth.reset_password.confirm_reset': return 'Confirm reset';
			case 'settings.title': return 'Settings';
			case 'settings.app_settings.title': return 'App Settings';
			case 'settings.app_settings.selfHostedUrl.title': return 'Self-Hosted URL';
			case 'settings.app_settings.selfHostedUrl.description': return 'If you are using a self-hosted instance of Atomic Blend, you can enter the URL here.';
			case 'settings.app_settings.selfHostedUrl.placeholder': return 'Enter the URL of your instance';
			case 'settings.app_settings.selfHostedUrl.not_set': return 'Not set';
			case 'settings.logout': return 'Logout';
			case 'tags.title': return 'Tags';
			case 'tags.add_modal.title': return 'Add a new tag';
			case 'tags.add_modal.edit_title': return 'Edit tag';
			case 'tags.add_modal.name': return 'Name of the tag';
			case 'tags.add_modal.name_hint': return 'Work';
			case 'tags.add_modal.name_description': return 'Define a name for your tag, this will help you remember what it is about and be shown in notifications.';
			case 'tags.add_modal.name_required': return 'Name is required';
			case 'tags.add_modal.color': return 'Color';
			case 'tags.add_modal.color_description': return 'Choose a color for your tag, this will help you remember what it is about and be shown in notifications.';
			case 'tags.add_modal.primary': return 'Primary';
			case 'tags.add_modal.accent': return 'Accent';
			case 'tags.add_modal.wheel': return 'Color wheel';
			case 'tags.delete.title': return 'Delete tag';
			case 'tags.delete.description': return 'Are you sure you want to delete this tag?';
			case 'tags.delete.warning': return 'This action cannot be undone and the tag will be removed from all tags associated.';
			case 'account.edit_profile': return 'Edit Profile';
			case 'account.sections.account': return 'Account';
			case 'account.actions.security': return 'Security & Privacy';
			case 'account.actions.delete_account': return 'Delete my Account';
			case 'account.profile.my_profile': return 'My Profile';
			case 'account.profile.email': return 'Email';
			case 'account.profile.undefined': return 'Undefined';
			case 'account.profile.email_missing': return 'Email is required';
			case 'account.profile.email_same': return 'Email must be different from the current email';
			case 'account.subscription_payments.title': return 'Subscription & Payments';
			case 'account.subscription_payments.subscription': return ({required Object subName}) => '${subName} Subscription';
			case 'account.subscription_payments.latest_subscription': return 'This is your subscription with the earliest billing date.';
			case 'account.subscription_payments.billing_cycle': return 'Billing Cycle';
			case 'account.subscription_payments.current_price': return 'Current Price';
			case 'account.subscription_payments.next_billing_date': return 'Next Billing Date';
			case 'account.subscription_payments.payment_history': return 'Payment History';
			case 'account.subscription_payments.no_payments': return 'No payments for now';
			case 'account.subscription_payments.manage_my_subscription': return 'Manage my subscription';
			case 'account.subscription_payments.management_url_only_mobile': return 'You can only manage your subscription from the iOS or Android app.';
			case 'account.security_and_privacy.title': return 'Security & Privacy';
			case 'account.security_and_privacy.change_password.title': return 'Change Password';
			case 'account.security_and_privacy.change_password.old_password': return 'Old Password';
			case 'account.security_and_privacy.change_password.new_password': return 'New Password';
			case 'account.security_and_privacy.change_password.confirm_password': return 'Confirm Password';
			case 'account.security_and_privacy.change_password.old_password_required': return 'Old password is required';
			case 'account.security_and_privacy.change_password.new_password_required': return 'New password is required';
			case 'account.security_and_privacy.change_password.confirm_password_required': return 'Confirm password is required';
			case 'account.security_and_privacy.change_password.password_mismatch': return 'Passwords do not match';
			case 'account.security_and_privacy.change_password.password_hint': return 'SuperSecure123!';
			case 'account.security_and_privacy.change_password.warning_changing_pws_will_log_you_out': return 'Changing your password will log you out of the app.';
			case 'under_construction.title': return 'We\'re working on it!';
			case 'under_construction.description': return 'This feature is not yet available, but we\'re working hard to bring it to you soon.\n\nStay tuned!';
			case 'more.title': return 'More';
			case 'loading.simple': return 'Loading...';
			case 'actions.save': return 'Save';
			case 'actions.cancel': return 'Cancel';
			case 'actions.next': return 'Next';
			case 'actions.back': return 'Back';
			case 'actions.delete': return 'Delete';
			case 'actions.add': return 'Add';
			case 'actions.edit': return 'Edit';
			case 'actions.clear': return 'Clear';
			case 'actions.close': return 'Close';
			case 'actions.subscribe': return 'Subscribe';
			case 'validation.required': return 'Required';
			case 'validation.invalid_url': return 'invalid URL';
			case 'errors.wrong_email_password': return 'Email or password incorrect';
			case 'errors.email_malformed': return 'Email malformed';
			case 'errors.unknown_error': return 'Unknown error';
			case 'name_generator.animals.0': return 'bat';
			case 'name_generator.animals.1': return 'owl';
			case 'name_generator.animals.2': return 'fox';
			case 'name_generator.animals.3': return 'rabbit';
			case 'name_generator.animals.4': return 'otter';
			case 'name_generator.animals.5': return 'penguin';
			case 'name_generator.animals.6': return 'panda';
			case 'name_generator.animals.7': return 'squirrel';
			case 'name_generator.animals.8': return 'koala';
			case 'name_generator.animals.9': return 'tiger';
			case 'name_generator.animals.10': return 'giraffe';
			case 'name_generator.animals.11': return 'monkey';
			case 'name_generator.animals.12': return 'raccoon';
			case 'name_generator.animals.13': return 'zebra';
			case 'name_generator.animals.14': return 'kangaroo';
			case 'name_generator.animals.15': return 'parrot';
			case 'name_generator.animals.16': return 'dolphin';
			case 'name_generator.animals.17': return 'sloth';
			case 'name_generator.animals.18': return 'wolf';
			case 'name_generator.animals.19': return 'lion';
			case 'name_generator.animals.20': return 'bear';
			case 'name_generator.animals.21': return 'eagle';
			case 'name_generator.animals.22': return 'elephant';
			case 'name_generator.animals.23': return 'leopard';
			case 'name_generator.animals.24': return 'cheetah';
			case 'name_generator.animals.25': return 'hippo';
			case 'name_generator.animals.26': return 'lemur';
			case 'name_generator.animals.27': return 'frog';
			case 'name_generator.animals.28': return 'chameleon';
			case 'name_generator.animals.29': return 'lynx';
			case 'name_generator.animals.30': return 'puffin';
			case 'name_generator.animals.31': return 'seal';
			case 'name_generator.animals.32': return 'falcon';
			case 'name_generator.animals.33': return 'orca';
			case 'name_generator.animals.34': return 'meerkat';
			case 'name_generator.animals.35': return 'hedgehog';
			case 'name_generator.animals.36': return 'weasel';
			case 'name_generator.animals.37': return 'armadillo';
			case 'name_generator.animals.38': return 'wombat';
			case 'name_generator.animals.39': return 'platypus';
			case 'name_generator.animals.40': return 'badger';
			case 'name_generator.animals.41': return 'yak';
			case 'name_generator.animals.42': return 'lizard';
			case 'name_generator.animals.43': return 'beetle';
			case 'name_generator.animals.44': return 'caterpillar';
			case 'name_generator.animals.45': return 'jaguar';
			case 'name_generator.animals.46': return 'buffalo';
			case 'name_generator.animals.47': return 'stingray';
			case 'name_generator.animals.48': return 'mole';
			case 'name_generator.animals.49': return 'donkey';
			case 'name_generator.animals.50': return 'toucan';
			case 'name_generator.animals.51': return 'flamingo';
			case 'name_generator.animals.52': return 'goat';
			case 'name_generator.animals.53': return 'alpaca';
			case 'name_generator.animals.54': return 'moose';
			case 'name_generator.animals.55': return 'peacock';
			case 'name_generator.animals.56': return 'rhino';
			case 'name_generator.animals.57': return 'gecko';
			case 'name_generator.animals.58': return 'turkey';
			case 'name_generator.animals.59': return 'hamster';
			case 'name_generator.animals.60': return 'otter';
			case 'name_generator.animals.61': return 'gorilla';
			case 'name_generator.animals.62': return 'walrus';
			case 'name_generator.animals.63': return 'vulture';
			case 'name_generator.animals.64': return 'stingray';
			case 'name_generator.animals.65': return 'newt';
			case 'name_generator.animals.66': return 'iguana';
			case 'name_generator.animals.67': return 'porcupine';
			case 'name_generator.animals.68': return 'python';
			case 'name_generator.animals.69': return 'antelope';
			case 'name_generator.animals.70': return 'gibbon';
			case 'name_generator.animals.71': return 'boar';
			case 'name_generator.animals.72': return 'crane';
			case 'name_generator.animals.73': return 'emu';
			case 'name_generator.animals.74': return 'pelican';
			case 'name_generator.animals.75': return 'hyena';
			case 'name_generator.animals.76': return 'heron';
			case 'name_generator.animals.77': return 'lynx';
			case 'name_generator.animals.78': return 'lamb';
			case 'name_generator.animals.79': return 'tortoise';
			case 'name_generator.animals.80': return 'shrimp';
			case 'name_generator.animals.81': return 'lobster';
			case 'name_generator.animals.82': return 'moth';
			case 'name_generator.animals.83': return 'clam';
			case 'name_generator.animals.84': return 'pufferfish';
			case 'name_generator.animals.85': return 'starfish';
			case 'name_generator.animals.86': return 'shrike';
			case 'name_generator.animals.87': return 'robin';
			case 'name_generator.animals.88': return 'quail';
			case 'name_generator.animals.89': return 'koala';
			case 'name_generator.animals.90': return 'snail';
			case 'name_generator.animals.91': return 'slug';
			case 'name_generator.animals.92': return 'owl';
			case 'name_generator.animals.93': return 'viper';
			case 'name_generator.animals.94': return 'duck';
			case 'name_generator.animals.95': return 'swallow';
			case 'name_generator.animals.96': return 'crab';
			case 'name_generator.animals.97': return 'llama';
			case 'name_generator.animals.98': return 'mongoose';
			case 'name_generator.animals.99': return 'kitten';
			case 'name_generator.adjectives.0': return 'happy';
			case 'name_generator.adjectives.1': return 'brave';
			case 'name_generator.adjectives.2': return 'cheerful';
			case 'name_generator.adjectives.3': return 'jolly';
			case 'name_generator.adjectives.4': return 'playful';
			case 'name_generator.adjectives.5': return 'bright';
			case 'name_generator.adjectives.6': return 'silly';
			case 'name_generator.adjectives.7': return 'curious';
			case 'name_generator.adjectives.8': return 'swift';
			case 'name_generator.adjectives.9': return 'bold';
			case 'name_generator.adjectives.10': return 'mighty';
			case 'name_generator.adjectives.11': return 'clever';
			case 'name_generator.adjectives.12': return 'sneaky';
			case 'name_generator.adjectives.13': return 'gentle';
			case 'name_generator.adjectives.14': return 'fuzzy';
			case 'name_generator.adjectives.15': return 'quirky';
			case 'name_generator.adjectives.16': return 'bouncy';
			case 'name_generator.adjectives.17': return 'sparkly';
			case 'name_generator.adjectives.18': return 'zippy';
			case 'name_generator.adjectives.19': return 'chirpy';
			case 'name_generator.adjectives.20': return 'glossy';
			case 'name_generator.adjectives.21': return 'snappy';
			case 'name_generator.adjectives.22': return 'shiny';
			case 'name_generator.adjectives.23': return 'dreamy';
			case 'name_generator.adjectives.24': return 'frisky';
			case 'name_generator.adjectives.25': return 'sunny';
			case 'name_generator.adjectives.26': return 'zany';
			case 'name_generator.adjectives.27': return 'wild';
			case 'name_generator.adjectives.28': return 'funky';
			case 'name_generator.adjectives.29': return 'feisty';
			case 'name_generator.adjectives.30': return 'snug';
			case 'name_generator.adjectives.31': return 'crisp';
			case 'name_generator.adjectives.32': return 'lively';
			case 'name_generator.adjectives.33': return 'sassy';
			case 'name_generator.adjectives.34': return 'witty';
			case 'name_generator.adjectives.35': return 'spunky';
			case 'name_generator.adjectives.36': return 'perky';
			case 'name_generator.adjectives.37': return 'crafty';
			case 'name_generator.adjectives.38': return 'jazzy';
			case 'name_generator.adjectives.39': return 'dapper';
			case 'name_generator.adjectives.40': return 'smiley';
			case 'name_generator.adjectives.41': return 'lucky';
			case 'name_generator.adjectives.42': return 'peppy';
			case 'name_generator.adjectives.43': return 'peachy';
			case 'name_generator.adjectives.44': return 'tidy';
			case 'name_generator.adjectives.45': return 'chilly';
			case 'name_generator.adjectives.46': return 'breezy';
			case 'name_generator.adjectives.47': return 'giddy';
			case 'name_generator.adjectives.48': return 'graceful';
			case 'name_generator.adjectives.49': return 'plucky';
			case 'name_generator.adjectives.50': return 'dizzy';
			case 'name_generator.adjectives.51': return 'spry';
			case 'name_generator.adjectives.52': return 'whimsical';
			case 'name_generator.adjectives.53': return 'nimble';
			case 'name_generator.adjectives.54': return 'chirpy';
			case 'name_generator.adjectives.55': return 'jumpy';
			case 'name_generator.adjectives.56': return 'quirky';
			case 'name_generator.adjectives.57': return 'spicy';
			case 'name_generator.adjectives.58': return 'perky';
			case 'name_generator.adjectives.59': return 'speedy';
			case 'name_generator.adjectives.60': return 'nifty';
			case 'name_generator.adjectives.61': return 'wobbly';
			case 'name_generator.adjectives.62': return 'crunchy';
			case 'name_generator.adjectives.63': return 'cranky';
			case 'name_generator.adjectives.64': return 'snazzy';
			case 'name_generator.adjectives.65': return 'peppy';
			case 'name_generator.adjectives.66': return 'bubbly';
			case 'name_generator.adjectives.67': return 'splashy';
			case 'name_generator.adjectives.68': return 'breezy';
			case 'name_generator.adjectives.69': return 'bouncy';
			case 'name_generator.adjectives.70': return 'twinkly';
			case 'name_generator.adjectives.71': return 'gleeful';
			case 'name_generator.adjectives.72': return 'squishy';
			case 'name_generator.adjectives.73': return 'wacky';
			case 'name_generator.adjectives.74': return 'zesty';
			case 'name_generator.adjectives.75': return 'snappy';
			case 'name_generator.adjectives.76': return 'jovial';
			case 'name_generator.adjectives.77': return 'feathered';
			case 'name_generator.adjectives.78': return 'prickly';
			case 'name_generator.adjectives.79': return 'whizzy';
			case 'name_generator.adjectives.80': return 'perky';
			case 'name_generator.adjectives.81': return 'whiskery';
			case 'name_generator.adjectives.82': return 'spotty';
			case 'name_generator.adjectives.83': return 'stripy';
			case 'name_generator.adjectives.84': return 'flicky';
			case 'name_generator.adjectives.85': return 'chatty';
			case 'name_generator.adjectives.86': return 'dandy';
			case 'name_generator.adjectives.87': return 'wiggly';
			case 'name_generator.adjectives.88': return 'giggly';
			case 'name_generator.adjectives.89': return 'spiffy';
			case 'name_generator.adjectives.90': return 'jumpy';
			case 'name_generator.adjectives.91': return 'perky';
			case 'name_generator.adjectives.92': return 'skippy';
			case 'name_generator.adjectives.93': return 'fluffy';
			case 'name_generator.adjectives.94': return 'chunky';
			case 'name_generator.adjectives.95': return 'puffy';
			case 'name_generator.adjectives.96': return 'loopy';
			case 'name_generator.adjectives.97': return 'pinky';
			case 'name_generator.adjectives.98': return 'spunky';
			case 'name_generator.adjectives.99': return 'fancy';
			case 'paywall.title': return 'Get AtomicBlend Cloud';
			case 'paywall.subtitle': return 'Enjoy Atomic Blend without restrictions and help the opensource initiative.';
			case 'paywall.advantages.all_apps_of_the_suite.title': return 'All Apps of the Suite';
			case 'paywall.advantages.all_apps_of_the_suite.description': return 'Get access to all the apps of the suite, including Tasks, Habits, Calendar, Notes, and more.';
			case 'paywall.advantages.end_to_end_encrypted.title': return 'End-to-End Encryption';
			case 'paywall.advantages.end_to_end_encrypted.description': return 'Your data is yours, forever.';
			case 'paywall.advantages.unlimited_tasks.title': return 'Unlimited Tasks';
			case 'paywall.advantages.unlimited_tasks.description': return 'Create as many tasks as you want, no limits.';
			case 'paywall.advantages.unlimited_habits.title': return 'Unlimited Habits';
			case 'paywall.advantages.unlimited_habits.description': return 'Take a step towards a healthier life with unlimited habits.';
			case 'paywall.advantages.unlimited_tags.title': return 'Unlimited Tags / Folders';
			case 'paywall.advantages.unlimited_tags.description': return 'Use as many tags and folders as needed to organize your life.';
			case 'paywall.advantages.sync_across_devices.title': return 'Sync Across Devices';
			case 'paywall.advantages.sync_across_devices.description': return 'Access your data from any device, anywhere.';
			case 'paywall.advantages.community_backed.title': return 'Community Backed';
			case 'paywall.advantages.community_backed.description': return '100% opensource : join a community of users who support the project.';
			case 'paywall.pricing.\$rc_annual.title': return 'Yearly';
			case 'paywall.pricing.\$rc_annual.price': return '\$39.99/year';
			case 'paywall.pricing.\$rc_annual.billed': return '1 month free trial';
			case 'paywall.pricing.\$rc_annual.discount': return '16% off';
			case 'paywall.pricing.\$rc_monthly.title': return 'Monthly';
			case 'paywall.pricing.\$rc_monthly.price': return '\$3.99/mo';
			case 'paywall.pricing.\$rc_monthly.billed': return '1 week free trial';
			case 'paywall.pricing.\$rc_monthly.discount': return '';
			case 'paywall.pricing.cloud_yearly.title': return 'Yearly';
			case 'paywall.pricing.cloud_yearly.price': return '\$3.33/mo';
			case 'paywall.pricing.cloud_yearly.billed': return 'billed at \$39.99/year';
			case 'paywall.pricing.cloud_yearly.discount': return '16% off';
			case 'paywall.pricing.cloud_monthly.title': return 'Monthly';
			case 'paywall.pricing.cloud_monthly.price': return '\$3.99/mo';
			case 'paywall.pricing.cloud_monthly.billed': return 'billed at \$3.99/month';
			case 'paywall.pricing.cloud_monthly.discount': return '';
			case 'paywall.no_package_selected': return 'No package selected';
			case 'paywall.purchase_failed': return 'Purchase failed';
			case 'paywall.restore_purchase': return 'Restore Purchase';
			case 'paywall.terms': return 'Terms of Service';
			case 'paywall.privacy_policy': return 'Privacy Policy';
			case 'paywall.payment_in_progress': return 'Payment in progress';
			case 'paywall.payment_in_progress_description': return 'Please wait while we process your payment.';
			case 'paywall.success': return 'Purchase successful';
			case 'paywall.validation_failed': return 'Validation failed';
			case 'paywall.validation_failed_description': return 'Please check your internet connection and restart the app.';
			case 'paywall.mobile_app_required': return 'Mobile app required';
			case 'paywall.payment_on_mobile_for_better_xp': return 'To offer you the best experience possible, payment and account configuration is only available on the mobile app';
			case 'paywall.ios': return 'iOS';
			case 'paywall.android': return 'Android';
			case 'my_notes.title': return 'My Notes';
			case 'my_notes.delete_note.title': return 'Delete note';
			case 'my_notes.delete_note.description': return 'Are you sure you want to delete this note?';
			case 'my_notes.delete_note.warning': return 'This action cannot be undone.';
			case 'recently_deleted.title': return 'Recently Deleted';
			case 'recently_deleted.no_notes': return 'No recently deleted notes';
			case 'organize.title': return 'Organize';
			case 'organize.latest_items': return 'Latest items';
			case 'folders.title': return 'Folders';
			case 'folders.add_folder': return 'Add Folder';
			case 'folders.edit_folder': return 'Edit Folder';
			case 'folders.name': return 'Folder Name';
			case 'folders.name_hint': return 'Work';
			case 'folders.name_description': return 'Define a name for your folder, this will help you remember what it is about and be shown in notifications.';
			case 'folders.name_required': return 'Name is required';
			case 'folders.color': return 'Color';
			case 'folders.color_description': return 'Choose a color for your folder, this will help you remember what it is about and be shown in notifications.';
			case 'folders.primary': return 'Primary';
			case 'folders.accent': return 'Accent';
			case 'folders.wheel': return 'Color wheel';
			case 'folders.search_emoji_hint': return 'Search for an emoji';
			case 'folders.no_folders': return 'No folders yet';
			case 'folders.delete.title': return 'Delete folder';
			case 'folders.delete.description': return 'Are you sure you want to delete this folder?';
			case 'folders.delete.warning': return 'This action cannot be undone and the folder will be removed from all tasks associated.';
			case 'search.title': return 'Search';
			case 'dates.today': return 'Today';
			case 'dates.tomorrow': return 'Tomorrow';
			case 'time_units.short.day': return 'd';
			case 'time_units.short.hour': return 'h';
			case 'time_units.short.minute': return 'm';
			case 'time_units.long.day': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				zero: 'days',
				one: 'day',
				other: 'days',
			);
			case 'time_units.long.hour': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				zero: 'hours',
				one: 'hour',
				other: 'hours',
			);
			case 'time_units.long.minute': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				zero: 'minutes',
				one: 'minute',
				other: 'minutes',
			);
			case 'sync.title': return 'Synchronization';
			case 'sync.description': return 'Keep your data up to date across all your devices';
			case 'sync.status': return 'Status';
			case 'sync.loading': return 'Loading...';
			case 'sync.up_to_date': return 'Up to date';
			case 'sync.conflicts': return 'Conflicts';
			case 'sync.x_items_have_conflicts': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				zero: 'No items have conflicts',
				one: '1 item has conflicts',
				other: '${n} items have conflicts',
			);
			case 'sync.details.title': return 'Details';
			case 'sync.details.tasks': return 'Tasks';
			case 'sync.details.task_items': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				zero: 'No tasks',
				one: '1 task',
				other: '${n} tasks',
			);
			case 'sync.sync_now': return 'Sync now';
			case 'sync.conflict_resolver.title': return 'Conflict Resolver';
			case 'sync.conflict_resolver.patch_date': return ({required Object date}) => 'Update date: ${date}';
			case 'sync.conflict_resolver.item_type.task': return 'Task';
			case 'sync.conflict_resolver.item_type.note': return 'Note';
			case 'sync.conflict_resolver.choose_between': return 'Choose between accepting or refusing the changes';
			case 'sync.conflict_resolver.refuse': return 'Refuse';
			case 'sync.conflict_resolver.accept': return 'Accept';
			case 'sync.conflict_resolver.upcoming': return 'Upcoming';
			case 'sync.conflict_resolver.in_app_version': return 'In-app';
			case 'sync.conflict_resolver.changes_to_apply': return 'Changes to apply';
			case 'sync.conflict_resolver.apply_to_all': return 'Apply decision to all conflicts';
			case 'sync.conflict_resolver.fields.title': return 'Title';
			case 'sync.conflict_resolver.fields.end_date': return 'End date';
			case 'sync.conflict_resolver.fields.description': return 'Notes';
			case 'sync.conflict_resolver.fields.start_date': return 'Start date';
			case 'sync.conflict_resolver.fields.reminders_title': return 'Reminders';
			case 'sync.conflict_resolver.fields.reminders': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				zero: 'No reminders',
				one: '1 reminder',
				other: '${n} reminders',
			);
			case 'sync.conflict_resolver.fields.undefined': return 'Undefined';
			case 'sync.conflict_resolver.fields.priority': return 'Priority';
			case 'sync.conflict_resolver.fields.folder': return 'Folder';
			case 'sync.conflict_resolver.fields.tags': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				zero: 'No tags',
				one: '1 tag',
				other: '${n} tags',
			);
			case 'sync.conflict_resolver.progress': return 'Progress';
			default: return null;
		}
	}
}

