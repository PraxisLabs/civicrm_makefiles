; A drush makefile for CiviCRM.
; Call using:
; drush make --working-copy build-civicrm.make
;
; Forked from mlutfy's Gist

; drush make API version
api = 2

; Drupal core
core = 7.x

; ****************************************
; Drupal core
; ****************************************

projects[] = drupal

;****************************************
; CiviCRM core
;****************************************

// Librarires "hack" because otherwise Drush overwrites

libraries[civicrm][destination] = modules
libraries[civicrm][directory_name] = civicrm
libraries[civicrm][download][type] = git
libraries[civicrm][download][url] = https://github.com/civicrm/civicrm-core.git
libraries[civicrm][overwrite] = TRUE

; Download latest l10n releases
libraries[civicrm_l10n_core][destination] = modules
libraries[civicrm_l10n_core][directory_name] = civicrm/l10n
libraries[civicrm_l10n_core][download][type] = file
libraries[civicrm_l10n_core][download][url] = https://download.civicrm.org/civicrm-l10n-core/archives/civicrm-l10n-daily.tar.gz
libraries[civicrm_l10n_core][overwrite] = TRUE

libraries[civicrm][destination] = modules
libraries[civicrm][directory_name] = civicrm/extensions/ca.bidon.reporterror
libraries[civicrm][download][type] = git
libraries[civicrm][download][url] = https://github.com/mlutfy/ca.bidon.reporterror
libraries[civicrm][overwrite] = TRUE

;****************************************
; Modules
;****************************************

projects[ctools][subdir] = contrib
projects[i18n][subdir] = contrib
projects[l10n_client][subdir] = contrib
projects[l10n_update][subdir] = contrib
projects[views][subdir] = contrib
projects[webform][subdir] = contrib

projects[webform_civicrm][subdir] = contrib
projects[webform_civicrm][version] = 4.14
