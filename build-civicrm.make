; A drush makefile for CiviCRM.
; Call using:
; drush make --working-copy build-civicrm.make
;
; Forked from mlutfy's Gist

; drush make API version
api = 2

; Drupal core
; TODO: Find a way to automate new tags on core versions
core = 7.x

;*****
; Praxis 100 (includes core)
; projects[] = drupal
;*****
includes[praxis100] = "https://raw.githubusercontent.com/PraxisLabs/praxis100_makefiles/master/praxis100.make"

;****************************************
; CiviCRM core
;****************************************

projects[civicrm][destination] = modules
projects[civicrm][type] = module
projects[civicrm][directory_name] = civicrm-drupal
projects[civicrm][download][type] = git
projects[civicrm][download][url] = https://github.com/civicrm/civicrm-drupal.git

libraries[civicrm][destination] = modules
libraries[civicrm][directory_name] = civicrm
libraries[civicrm][download][type] = get
libraries[civicrm][download][url] = https://download.civicrm.org/civicrm-4.7.20-drupal.tar.gz
;; Patch for multisite ckeditor settings
libraries[civicrm][patch][]  = https://github.com/civicrm/civicrm-core/pull/9458.diff

; Download latest l10n releases
libraries[civicrm_l10n_core][destination] = modules
libraries[civicrm_l10n_core][directory_name] = civicrm/l10n
libraries[civicrm_l10n_core][download][type] = file
libraries[civicrm_l10n_core][download][url] = https://download.civicrm.org/civicrm-l10n-core/archives/civicrm-l10n-daily.tar.gz
libraries[civicrm_l10n_core][overwrite] = TRUE

libraries[civicrm-reporterror][destination] = modules
libraries[civicrm-reporterror][directory_name] = civicrm/extensions/ca.bidon.reporterror
libraries[civicrm-reporterror][download][type] = git
libraries[civicrm-reporterror][download][url] = https://github.com/mlutfy/ca.bidon.reporterror

libraries[ckeditor][destination] = libraries
libraries[ckeditor][directory_name] = ckeditor
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.6.2/ckeditor_4.6.2_standard.zip

;****************************************
; Modules
;****************************************

projects[ctools][subdir] = contrib
projects[i18n][subdir] = contrib
projects[entity][subdir] = contrib
projects[l10n_client][subdir] = contrib
projects[l10n_update][subdir] = contrib
projects[libraries][subdir] = contrib
projects[options_element][subdir] = contrib
projects[rules][subdir] = contrib
projects[variable][subdir] = contrib
projects[views][subdir] = contrib
projects[webform][subdir] = contrib

projects[webform_civicrm][subdir] = contrib
projects[webform_civicrm][version] = 4.17
