.class public Landroid/sec/enterprise/content/SecContentProviderURI;
.super Ljava/lang/Object;
.source "SecContentProviderURI.java"


# static fields
.field public static final blacklist ACTION_GEARPOLICY_ENABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.GEARPOLICY_ENABLE_INTERNAL"

.field public static final whitelist ADVANCEDRESTRICTIONPOLICY:Ljava/lang/String; = "AdvancedRestrictionPolicy"

.field public static final whitelist ADVANCEDRESTRICTIONPOLICY_FIRMWAREAUTOUPDATEALLOWED:Ljava/lang/String; = "isFirmwareAutoUpdateAllowed"

.field public static final whitelist ADVANCEDRESTRICTION_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/AdvancedRestrictionPolicy"

.field public static final whitelist APPLICATIONPERMISSIONCONTROLPOLICY:Ljava/lang/String; = "ApplicationPermissionControlPolicy"

.field public static final whitelist APPLICATIONPERMISSIONCONTROLPOLICY_GETPERMISSIONBLOCKEDLIST_METHOD:Ljava/lang/String; = "getPermissionBlockedList"

.field public static final whitelist APPLICATIONPERMISSIONCONTROL_URI:Ljava/lang/String; = "content://com.sec.knox.provider/ApplicationPermissionControlPolicy"

.field public static final whitelist APPLICATIONPOLICY:Ljava/lang/String; = "ApplicationPolicy"

.field public static final whitelist APPLICATIONPOLICY_APPINSTALLTOSDCARD_METHOD:Ljava/lang/String; = "getAppInstallToSdCard"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONCLEARCACHE_METHOD:Ljava/lang/String; = "isApplicationClearCacheDisabled"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONCLEARDATA_METHOD:Ljava/lang/String; = "isApplicationClearDataDisabled"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONCOMPONENTSTATE_METHOD:Ljava/lang/String; = "getApplicationComponentState"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONFORCESTOP_METHOD:Ljava/lang/String; = "isApplicationForceStopDisabled"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONICONFROMDB_METHOD:Ljava/lang/String; = "getApplicationIconFromDb"

.field public static final blacklist APPLICATIONPOLICY_APPLICATIONINSTALLATIONMODE_METHOD:Ljava/lang/String; = "getAppInstallationMode"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONINSTALLED_METHOD:Ljava/lang/String; = "isApplicationInstalled"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONNAMEFROMDB_METHOD:Ljava/lang/String; = "getApplicationNameFromDb"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONNOTIFICATIONMODE_METHOD:Ljava/lang/String; = "getApplicationNotificationMode"

.field public static final blacklist APPLICATIONPOLICY_APPLICATIONSTATEDISABLEDLIST_METHOD:Ljava/lang/String; = "getApplicationStateDisabledList"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONSTATE_METHOD:Ljava/lang/String; = "getApplicationStateEnabled"

.field public static final blacklist APPLICATIONPOLICY_APPLICATIONUNINSTALLATIONMODE_METHOD:Ljava/lang/String; = "getApplicationUninstallationMode"

.field public static final whitelist APPLICATIONPOLICY_APPLICATIONUNINSTALLATION_METHOD:Ljava/lang/String; = "getApplicationUninstallationEnabled"

.field public static final blacklist APPLICATIONPOLICY_APPLICATION_INSTALL_UNINSTALL_LIST_METHOD:Ljava/lang/String; = "getApplicationInstallUninstallList"

.field public static final blacklist APPLICATIONPOLICY_DEFAULTASSISTAPP_METHOD:Ljava/lang/String; = "isChangeAssistDefaultAppAllowed"

.field public static final blacklist APPLICATIONPOLICY_DEFAULTSMSAPP_METHOD:Ljava/lang/String; = "isChangeSmsDefaultAppAllowed"

.field public static final blacklist APPLICATIONPOLICY_DISABLED_CLIPBOARD_BLACKLIST_METHOD:Ljava/lang/String; = "getPackagesFromDisableClipboardBlackList"

.field public static final blacklist APPLICATIONPOLICY_DISABLED_CLIPBOARD_BLACKLIST_PERUID_METHOD:Ljava/lang/String; = "getPackagesFromDisableClipboardBlackListPerUidInternal"

.field public static final blacklist APPLICATIONPOLICY_DISABLED_CLIPBOARD_WHITELIST_METHOD:Ljava/lang/String; = "getPackagesFromDisableClipboardWhiteList"

.field public static final blacklist APPLICATIONPOLICY_DISABLED_CLIPBOARD_WHITELIST_PERUID_METHOD:Ljava/lang/String; = "getPackagesFromDisableClipboardWhiteListPerUidInternal"

.field public static final blacklist APPLICATIONPOLICY_GETBATTERYOPTIMIZATIONWHITELIST_METHOD:Ljava/lang/String; = "getAllPackagesFromBatteryOptimizationWhiteList"

.field public static final blacklist APPLICATIONPOLICY_GETDEFAULTAPPLICATION_METHOD:Ljava/lang/String; = "getDefaultApplicationInternal"

.field public static final whitelist APPLICATIONPOLICY_INTENTDISABLED_METHOD:Ljava/lang/String; = "isIntentDisabled"

.field public static final blacklist APPLICATIONPOLICY_ISAPPLICATIONSETTODEFAULT_METHOD:Ljava/lang/String; = "isApplicationSetToDefault"

.field public static final whitelist APPLICATIONPOLICY_PACKAGEUPDATEALLOWED_METHOD:Ljava/lang/String; = "isPackageUpdateAllowed"

.field public static final whitelist APPLICATIONPOLICY_USBPERMITTEDFORPACKAGE_METHOD:Ljava/lang/String; = "isUsbDevicePermittedForPackage"

.field public static final whitelist APPLICATION_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/ApplicationPolicy"

.field public static final whitelist AUDITLOGPOLICY_AUDITLOGASUSER_METHOD:Ljava/lang/String; = "AuditLoggerAsUser"

.field public static final whitelist AUDITLOGPOLICY_AUDITLOGENABLED_METHOD:Ljava/lang/String; = "isAuditLogEnabled"

.field public static final whitelist AUDITLOGPOLICY_AUTOCOMPLETE_EVENT:Ljava/lang/String; = "AUTO_COMPLETING_DATA"

.field public static final whitelist AUDITLOGPOLICY_OPENPOPUP_EVENT:Ljava/lang/String; = "OPEN_POPUP_URL"

.field public static final whitelist AUDITLOGPOLICY_OPENURL_EVENT:Ljava/lang/String; = "OPEN_URL"

.field public static final whitelist AUDITPOLICY:Ljava/lang/String; = "AuditLog"

.field public static final whitelist AUDIT_URI:Ljava/lang/String; = "content://com.sec.knox.provider/AuditLog"

.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field public static final whitelist AUTHORITY2:Ljava/lang/String; = "com.sec.knox.provider2"

.field public static final whitelist BLUETOOTHPOLICY:Ljava/lang/String; = "BluetoothPolicy"

.field public static final whitelist BLUETOOTHPOLICY_BLESCANNINGALLOWED_METHOD:Ljava/lang/String; = "isBLEAllowed"

.field public static final whitelist BLUETOOTHPOLICY_BLUETOOTHENABLEDWITHMSG_METHOD:Ljava/lang/String; = "isBluetoothEnabledWithMsg"

.field public static final whitelist BLUETOOTHPOLICY_BLUETOOTHENABLED_METHOD:Ljava/lang/String; = "isBluetoothEnabled"

.field public static final whitelist BLUETOOTHPOLICY_BLUETOOTHLOGENABLED_METHOD:Ljava/lang/String; = "isBluetoothLogEnabled"

.field public static final whitelist BLUETOOTHPOLICY_BLUETOOTHLOG_METHOD:Ljava/lang/String; = "bluetoothLog"

.field public static final whitelist BLUETOOTHPOLICY_DESKTOPCONNECTIVITY_METHOD:Ljava/lang/String; = "isDesktopConnectivityEnabled"

.field public static final whitelist BLUETOOTHPOLICY_DISCOVERABLE_METHOD:Ljava/lang/String; = "isDiscoverableEnabled"

.field public static final whitelist BLUETOOTHPOLICY_LIMITEDDISCOVERABLED_METHOD:Ljava/lang/String; = "isLimitedDiscoverableEnabled"

.field public static final whitelist BLUETOOTHPOLICY_OUTGOINGCALLSALLOWED_METHOD:Ljava/lang/String; = "isOutgoingCallsAllowed"

.field public static final whitelist BLUETOOTHUTILSPOLICY:Ljava/lang/String; = "BluetoothUtils"

.field public static final whitelist BLUETOOTHUTILSPOLICY_URI:Ljava/lang/String; = "content://com.sec.knox.provider/BluetoothUtils"

.field public static final whitelist BLUETOOTHUTILS_BLUETOOTHLOGENABLED_METHOD:Ljava/lang/String; = "isBluetoothLogEnabled"

.field public static final whitelist BLUETOOTHUTILS_BLUETOOTHLOGFORDEVICE_METHOD:Ljava/lang/String; = "bluetoothLogForDevice"

.field public static final whitelist BLUETOOTHUTILS_BLUETOOTHLOGFORREMOTE_METHOD:Ljava/lang/String; = "bluetoothLogForRemote"

.field public static final whitelist BLUETOOTHUTILS_BLUETOOTHLOG_METHOD:Ljava/lang/String; = "bluetoothLog"

.field public static final whitelist BLUETOOTHUTILS_BLUETOOTHSOCKETLOG_METHOD:Ljava/lang/String; = "bluetoothSocketLog"

.field public static final whitelist BLUETOOTHUTILS_HEADSETALLOWEDBYSECURITY_METHOD:Ljava/lang/String; = "isHeadsetAllowedBySecurityPolicy"

.field public static final whitelist BLUETOOTHUTILS_PAIRINGALLOWEDBYSECURITY_METHOD:Ljava/lang/String; = "isPairingAllowedbySecurityPolicy"

.field public static final whitelist BLUETOOTHUTILS_PROFILEAUTHORIZEDBYSECURITY_METHOD:Ljava/lang/String; = "isProfileAuthorizedBySecurityPolicy"

.field public static final whitelist BLUETOOTHUTILS_SOCKETALLOWEDBYSECURITY_METHOD:Ljava/lang/String; = "isSocketAllowedBySecurityPolicy"

.field public static final whitelist BLUETOOTHUTILS_SVCRFCOMPORTNUMBERBLOCKEDBYSECURITY_METHOD:Ljava/lang/String; = "isSvcRfComPortNumberBlockedBySecurityPolicy"

.field public static final whitelist BLUETOOTH_URI:Ljava/lang/String; = "content://com.sec.knox.provider/BluetoothPolicy"

.field public static final whitelist BROWSERPOLICY:Ljava/lang/String; = "BrowserPolicy"

.field public static final whitelist BROWSERPOLICY_AUTOFILL_METHOD:Ljava/lang/String; = "getAutoFillSetting"

.field public static final whitelist BROWSERPOLICY_COOKIES_METHOD:Ljava/lang/String; = "getCookiesSetting"

.field public static final whitelist BROWSERPOLICY_FORCEFRAUDWARNING_METHOD:Ljava/lang/String; = "getForceFraudWarningSetting"

.field public static final whitelist BROWSERPOLICY_HTTPPROXY_METHOD:Ljava/lang/String; = "getHttpProxy"

.field public static final whitelist BROWSERPOLICY_JAVASCRIPT_METHOD:Ljava/lang/String; = "getJavaScriptSetting"

.field public static final whitelist BROWSERPOLICY_POPUPS_METHOD:Ljava/lang/String; = "getPopupsSetting"

.field public static final whitelist BROWSERPOLICY_SETTINGSTATUS_METHOD:Ljava/lang/String; = "getBrowserSettingStatus"

.field public static final whitelist BROWSER_URI:Ljava/lang/String; = "content://com.sec.knox.provider/BrowserPolicy"

.field public static final whitelist CERTIFICATEPOLICY:Ljava/lang/String; = "CertificatePolicy"

.field public static final whitelist CERTIFICATEPOLICY_CACERTIFICATEDISABLEDASUSER_METHOD:Ljava/lang/String; = "isCaCertificateDisabledAsUser"

.field public static final whitelist CERTIFICATEPOLICY_CACERTIFICATEDISABLED_METHOD:Ljava/lang/String; = "isCaCertificateDisabled"

.field public static final whitelist CERTIFICATEPOLICY_CACERTIFICATETRUSTEDASUSER_METHOD:Ljava/lang/String; = "isCaCertificateTrustedAsUser"

.field public static final whitelist CERTIFICATEPOLICY_CACERTIFICATETRUSTED_METHOD:Ljava/lang/String; = "isCaCertificateTrusted"

.field public static final whitelist CERTIFICATEPOLICY_CERTIFICATEVALIDATION_METHOD:Ljava/lang/String; = "isCertificateValidationAtInstallEnabled"

.field public static final whitelist CERTIFICATEPOLICY_CERTIFICATE_REMOVED_METHOD:Ljava/lang/String; = "certificateRemoved"

.field public static final whitelist CERTIFICATEPOLICY_IDENTITIEDFROMSIGNATURE_METHOD:Ljava/lang/String; = "getIdentitiesFromSignatures"

.field public static final whitelist CERTIFICATEPOLICY_NOTIFY_METHOD:Ljava/lang/String; = "notifyCertificateFailure"

.field public static final whitelist CERTIFICATEPOLICY_OCSPCHECK_METHOD:Ljava/lang/String; = "isOcspCheckEnabled"

.field public static final whitelist CERTIFICATEPOLICY_PRIVATEKEYAPPLICATIONPERMITTED_METHOD:Ljava/lang/String; = "isPrivateKeyApplicationPermitted"

.field public static final whitelist CERTIFICATEPOLICY_REVOCATIONCHECK_METHOD:Ljava/lang/String; = "isRevocationCheckEnabled"

.field public static final whitelist CERTIFICATEPOLICY_SIGNATUREIDENTITYINFORMATION_METHOD:Ljava/lang/String; = "isSignatureIdentityInformationEnabled"

.field public static final whitelist CERTIFICATEPOLICY_USERREMOVECERTIFICATES_METHOD:Ljava/lang/String; = "isUserRemoveCertificatesAllowed"

.field public static final whitelist CERTIFICATEPOLICY_VALIDATECERTIFICATEATINSTALL_METHOD:Ljava/lang/String; = "validateCertificateAtInstall"

.field public static final whitelist CERTIFICATEPOLICY_VALIDATECHAINATINSTALL_METHOD:Ljava/lang/String; = "validateChainAtInstall"

.field public static final whitelist CERTIFICATE_URI:Ljava/lang/String; = "content://com.sec.knox.provider/CertificatePolicy"

.field public static final whitelist CLIENTCERTIFICATEMANAGERPOLICY:Ljava/lang/String; = "ClientCertificateManager"

.field public static final whitelist CLIENTCERTIFICATEMANAGER_CCMPOLICYENALBLEDFORPACKAGE_METHOD:Ljava/lang/String; = "isCCMPolicyEnabledForPackage"

.field public static final whitelist CLIENTCERTIFICATEMANAGER_DELETECERTIFICATE_METHOD:Ljava/lang/String; = "deleteCertificate"

.field public static final whitelist CLIENTCERTIFICATEMANAGER_GETCCMVERSION_METHOD:Ljava/lang/String; = "getCCMVersion"

.field public static final whitelist CLIENTCERTIFICATEMANAGER_INSTALLCERTIFICATE_METHOD:Ljava/lang/String; = "installCertificate"

.field public static final whitelist CLIENTCERTIFICATEMANAGER_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/ClientCertificateManager"

.field public static final whitelist CONTAINERAPPLICATIONPOLICY:Ljava/lang/String; = "ContainerApplicationPolicy"

.field public static final whitelist CONTAINERAPPLICATIONPOLICY_GETPACKAGES_METHOD:Ljava/lang/String; = "getPackages"

.field public static final whitelist CONTAINERAPPLICATION_URI:Ljava/lang/String; = "content://com.sec.knox.provider/ContainerApplicationPolicy"

.field public static final whitelist CONTENT:Ljava/lang/String; = "content://"

.field public static final whitelist DATETIMEPOLICY:Ljava/lang/String; = "DateTimePolicy"

.field public static final whitelist DATETIMEPOLICY_DATETIMECHANGE_METHOD:Ljava/lang/String; = "isDateTimeChangeEnalbed"

.field public static final blacklist DATETIMEPOLICY_GETAUTOMATIONTIME_METHOD:Ljava/lang/String; = "getAutomaticTime"

.field public static final whitelist DATETIME_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DateTimePolicy"

.field public static final whitelist DEVICEACCOUNTPOLICY:Ljava/lang/String; = "DeviceAccountPolicy"

.field public static final whitelist DEVICEACCOUNTPOLICY_ACCOUNTADDITION_METHOD:Ljava/lang/String; = "isAccountAdditionAllowed"

.field public static final whitelist DEVICEACCOUNTPOLICY_ACCOUNTREMOVAL_METHOD:Ljava/lang/String; = "isAccountRemovalAllowed"

.field public static final whitelist DEVICEACCOUNT_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/DeviceAccountPolicy"

.field public static final whitelist DEVICESETTIGNSPOLICY:Ljava/lang/String; = "DeviceSettingsPolicy"

.field public static final whitelist DEVICESETTIGNS_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DeviceSettingsPolicy"

.field public static final whitelist DEVICESETTINGSPOLICY_NFCSTATECHANGE_METHOD:Ljava/lang/String; = "isNFCStateChangeAllowed"

.field public static final whitelist DEXPOLICY:Ljava/lang/String; = "DexPolicy"

.field public static final whitelist DEXPOLICY_DEX_CHECK_USE_DEX_MAC_ADDRESS_METHOD:Ljava/lang/String; = "isVirtualMacAddressEnforced"

.field public static final whitelist DEXPOLICY_DEX_DISABLED_METHOD:Ljava/lang/String; = "isDexDisabled"

.field public static final whitelist DEXPOLICY_DEX_ETHERNETONLY_MODE_METHOD:Ljava/lang/String; = "isEthernetOnlyEnforced"

.field public static final whitelist DEXPOLICY_DEX_GET_VIRTUAL_MAC_ADDRESS_METHOD:Ljava/lang/String; = "getVirtualMacAddress"

.field public static final whitelist DEXPOLICY_SCREENTIMEOUT_CHANGE_ALLOWED_METHOD:Ljava/lang/String; = "isScreenTimeoutChangeAllowed"

.field public static final whitelist DEX_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DexPolicy"

.field public static final blacklist DLPPOLICY:Ljava/lang/String; = "DlpPolicy"

.field public static final blacklist DLPPOLICY_IS_ALLOWEDTO_SHARE:Ljava/lang/String; = "isAllowedToShare"

.field public static final blacklist DLPPOLICY_IS_DLP_ACTIVATED:Ljava/lang/String; = "isDLPActivated"

.field public static final blacklist DLP_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DlpPolicy"

.field public static final blacklist DOMAINFILTERPOLICY:Ljava/lang/String; = "DomainFilterPolicy"

.field public static final blacklist DOMAINFILTER_GETDEFAULTCAPTIVEPORTALURL_METHOD:Ljava/lang/String; = "getDefaultCaptivePortalUrl"

.field public static final blacklist DOMAINFILTER_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DomainFilterPolicy"

.field public static final whitelist DUALSIMPOLICY:Ljava/lang/String; = "DualSimPolicy"

.field public static final whitelist DUALSIMSPOLICY_CHECKPRIVILEGEDNUMBER_METHOD:Ljava/lang/String; = "checkPrivilegedNumber"

.field public static final blacklist DUALSIMSPOLICY_GETPREFERREDSIMSLOT_METHOD:Ljava/lang/String; = "getpreferredsimslot"

.field public static final whitelist DUALSIM_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/DualSimPolicy"

.field public static final whitelist EMAILACCOUNTPOLICY:Ljava/lang/String; = "EmailAccountPolicy"

.field public static final whitelist EMAILACCOUNTPOLICY_SECURITYINCOMING_METHOD:Ljava/lang/String; = "getSecurityIncomingServerPassword"

.field public static final whitelist EMAILACCOUNTPOLICY_SECURITYOUTGOING_METHOD:Ljava/lang/String; = "getSecurityOutgoingServerPassword"

.field public static final whitelist EMAILACCOUNTPOLICY_SETSECURITYINCOMING_METHOD:Ljava/lang/String; = "setSecurityInComingServerPassword"

.field public static final whitelist EMAILACCOUNTPOLICY_SETSECURITYOUTGOING_METHOD:Ljava/lang/String; = "setSecurityOutGoingServerPassword"

.field public static final whitelist EMAILACCOUNT_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EmailAccountPolicy"

.field public static final whitelist EMAILPOLICY:Ljava/lang/String; = "EmailPolicy"

.field public static final whitelist EMAILPOLICY_ACCOUNTADDITION_METHOD:Ljava/lang/String; = "isAccountAdditionAllowed"

.field public static final whitelist EMAILPOLICY_ALLOWEMAILFORWARDING_METHOD:Ljava/lang/String; = "getAllowEmailForwarding"

.field public static final whitelist EMAILPOLICY_ALLOWHTMLEMAIL_METHOD:Ljava/lang/String; = "getAllowHtmlEmail"

.field public static final whitelist EMAILPOLICY_EMAILNOTIFICATIONS_METHOD:Ljava/lang/String; = "isEmailNotificationsEnabled"

.field public static final whitelist EMAILPOLICY_EMAILSETTINGSCHANGE_METHOD:Ljava/lang/String; = "isEmailSettingsChangesAllowed"

.field public static final whitelist EMAILPOLICY_GET_EMAIL_ACCOUNT_OBJECT_METHOD:Ljava/lang/String; = "getEnterpriseEmailAccountObject"

.field public static final whitelist EMAILPOLICY_GET_EXCHANGE_ACCOUNT_OBJECT_METHOD:Ljava/lang/String; = "getEnterpriseExchangeAccountObject"

.field public static final whitelist EMAIL_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EmailPolicy"

.field public static final whitelist ENTERPRISECERTENROLLPOLICY:Ljava/lang/String; = "EnterpriseKnoxManagerPolicy"

.field public static final whitelist ENTERPRISECERTENROLL_NOTIFYUSERKEYUNLOCKED_METHOD:Ljava/lang/String; = "notifyUserKeyUnlocked"

.field public static final whitelist ENTERPRISECERTENROLL_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseKnoxManagerPolicy"

.field public static final whitelist ENTERPRISECONTAINERPOLICY:Ljava/lang/String; = "EnterpriseContainerPolicy"

.field public static final whitelist ENTERPRISECONTAINERPOLICY_PASSWORDENABLEDCONTAINERLOCKTIMEOUT_METHOD:Ljava/lang/String; = "getPasswordEnabledContainerLockTimeout"

.field public static final whitelist ENTERPRISECONTAINERPOLICY_PASSWORDQUALITY_METHOD:Ljava/lang/String; = "getPasswordQuality"

.field public static final whitelist ENTERPRISECONTAINERPOLICY_PASSWORDVISIBILITY_METHOD:Ljava/lang/String; = "isPasswordVisibilityEnabled"

.field public static final whitelist ENTERPRISECONTAINERSERVICEPOLICY:Ljava/lang/String; = "EnterpriseContainerService"

.field public static final whitelist ENTERPRISECONTAINERSERVICE_GETCONTAINERPACKAGES_METHOD:Ljava/lang/String; = "getContainerPackages"

.field public static final whitelist ENTERPRISECONTAINERSERVICE_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseContainerService"

.field public static final whitelist ENTERPRISECONTAINER_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseContainerPolicy"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY:Ljava/lang/String; = "EnterpriseDeviceManager"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_ACTIVEADMINS_METHOD:Ljava/lang/String; = "getActiveAdmins"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_ACTIVEADMIN_METHOD:Ljava/lang/String; = "isActiveAdmin"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_ADMINREMOVABLE_METHOD:Ljava/lang/String; = "getAdminRemovable"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_ISADMINREMOVABLE_METHOD:Ljava/lang/String; = "isAdminRemovable"

.field public static final blacklist ENTERPRISEDEVICEMANAGERPOLICY_ISMDMADMINPRESENT_METHOD:Ljava/lang/String; = "isMdmAdminPresent"

.field public static final blacklist ENTERPRISEDEVICEMANAGERPOLICY_MDMVERSIONCHECK_METHOD:Ljava/lang/String; = "getEnterpriseSdkVer"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_MYKNOXADMIN_METHOD:Ljava/lang/String; = "getMyKnoxAdmin"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_REMOVEACTIVEADMIN_METHOD:Ljava/lang/String; = "removeActiveAdmin"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_REMOVEWARNINGS_METHOD:Ljava/lang/String; = "getRemoveWarning"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_SETACTIVEADMIN_METHOD:Ljava/lang/String; = "setActiveAdmin"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_SETADMINREMOVABLE_METHOD:Ljava/lang/String; = "setAdminRemovable"

.field public static final whitelist ENTERPRISEDEVICEMANAGERPOLICY_UPDATEADMINPERMISSIONS_METHOD:Ljava/lang/String; = "updateAdminPermissions"

.field public static final whitelist ENTERPRISEDEVICEMANAGER_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseDeviceManager"

.field public static final whitelist ENTERPRISEKNOXMANAGERPOLICY:Ljava/lang/String; = "EnterpriseKnoxManagerPolicy"

.field public static final whitelist ENTERPRISEKNOXMANAGER_ADVANCEDRESTRICTION_METHOD:Ljava/lang/String; = "getAdvancedRestrictionPolicy"

.field public static final whitelist ENTERPRISEKNOXMANAGER_URI:Ljava/lang/String; = "content://com.sec.knox.provider/EnterpriseKnoxManagerPolicy"

.field public static final blacklist ENTERPRISELICENSEPOLICY_ISSERVICEAVAILABLE_METHOD:Ljava/lang/String; = "isServiceAvailable"

.field public static final blacklist ENTERPRISELICENSESERVICEPOLICY:Ljava/lang/String; = "EnterpriseLicenseService"

.field public static final blacklist ENTERPRISELICENSESERVICE_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseLicenseService"

.field public static final whitelist EXCHANGEACCOUNTPOLICY:Ljava/lang/String; = "ExchangeAccountPolicy"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_ACCOUNTCERTIFICATEPASSWORD_METHOD:Ljava/lang/String; = "getAccountCertificatePassword"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_ACCOUNTEMAILPASSWORD_METHOD:Ljava/lang/String; = "getAccountEmailPassword"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_FORCESMIMECERTIFICATEFORENCRYPTION_METHOD:Ljava/lang/String; = "getForceSMIMECertificateForEncryption"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_FORCESMIMECERTIFICATEFORSIGNING_METHOD:Ljava/lang/String; = "getForceSMIMECertificateForSigning"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_FORCESMIMECERTIFICATE_METHOD:Ljava/lang/String; = "getForceSMIMECertificate"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_INCOMINGATTACHMENTALLOWED_METHOD:Ljava/lang/String; = "isIncomingAttachmentsAllowed"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_INCOMINGATTACHMENTSIZE_METHOD:Ljava/lang/String; = "getIncomingAttachmentSize"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_MAXCALENDARAGEFILTER_METHOD:Ljava/lang/String; = "getMaxCalendarAgeFilter"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_MAXEMAILAGEFILTER_METHOD:Ljava/lang/String; = "getMaxEmailAgeFilter"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_MAXEMAILBODYTRUNCATIONSIZE_METHOD:Ljava/lang/String; = "getMaxEmailBodyTruncationSize"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_MAXEMAILHTMLBODYTRUNCATIONSIZE_METHOD:Ljava/lang/String; = "getMaxEmailHTMLBodyTruncationSize"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_REQUIREDENCRYPTED_METHOD:Ljava/lang/String; = "getRequiredEncryptedMIMEMessages"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_REQUIREDSIGNED_METHOD:Ljava/lang/String; = "getRequiredSignedMIMEMessages"

.field public static final whitelist EXCHANGEACCOUNTPOLICY_SETACCOUNTEMAILPASSWORD_METHOD:Ljava/lang/String; = "setAccountEmailPassword"

.field public static final whitelist EXCHANGEACCOUNT_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/ExchangeAccountPolicy"

.field public static final whitelist FIREWALLPOLICY:Ljava/lang/String; = "FirewallPolicy"

.field public static final whitelist FIREWALLPOLICY_GLOBALPROXYALLOWED_METHOD:Ljava/lang/String; = "isGlobalProxyAllowed"

.field public static final whitelist FIREWALLPOLICY_SAVEURLBLOCKEDREPORT_METHOD:Ljava/lang/String; = "saveURLBlockedReport"

.field public static final whitelist FIREWALLPOLICY_URLBLOCKED_METHOD:Ljava/lang/String; = "isUrlBlocked"

.field public static final whitelist FIREWALLPOLICY_URLFILTERENABLED_METHOD:Ljava/lang/String; = "getURLFilterEnabled"

.field public static final whitelist FIREWALLPOLICY_URLFILTERLIST_METHOD:Ljava/lang/String; = "getURLFilterList"

.field public static final whitelist FIREWALLPOLICY_URLFILTERREPORTENABLED_METHOD:Ljava/lang/String; = "getURLFilterReportEnabled"

.field public static final whitelist FIREWALL_URI:Ljava/lang/String; = "content://com.sec.knox.provider/FirewallPolicy"

.field public static final blacklist KEY_GET_CLIPBOARD_BLACKLIST_PERUID:Ljava/lang/String; = "clipboard_blacklist_perUid"

.field public static final blacklist KEY_GET_CLIPBOARD_WHITELIST_PERUID:Ljava/lang/String; = "clipboard_whitelist_perUid"

.field public static final whitelist KIOSKMODEPOLICY:Ljava/lang/String; = "KioskMode"

.field public static final whitelist KIOSKMODE_AIRCOMMANDMODE_METHOD:Ljava/lang/String; = "isAirCommandModeAllowed"

.field public static final whitelist KIOSKMODE_AIRVIEWMODE_METHOD:Ljava/lang/String; = "isAirViewModeAllowed"

.field public static final whitelist KIOSKMODE_APPSEDGEALLOWED_METHOD:Ljava/lang/String; = "isAppsEdgeAllowed"

.field public static final whitelist KIOSKMODE_BLOCKEDHWKEYCACHE_METHOD:Ljava/lang/String; = "getBlockedHwKeysCache"

.field public static final whitelist KIOSKMODE_EDGEALLOWED_METHOD:Ljava/lang/String; = "isEdgeAllowed"

.field public static final whitelist KIOSKMODE_EDGELIGHTINGALLOWED_METHOD:Ljava/lang/String; = "isEdgeLightingAllowed"

.field public static final blacklist KIOSKMODE_INFORMATIONSTREAMALLOWED_METHOD:Ljava/lang/String; = "isInformationStreamAllowed"

.field public static final whitelist KIOSKMODE_KIOSKHOMEPACKAGE_METHOD:Ljava/lang/String; = "getKioskHomePackage"

.field public static final whitelist KIOSKMODE_KIOSKMODEENABLED_METHOD:Ljava/lang/String; = "isKioskModeEnabled"

.field public static final whitelist KIOSKMODE_MULTIWINDOWMODEASUSER_METHOD:Ljava/lang/String; = "isMultiWindowModeAllowedAsUser"

.field public static final whitelist KIOSKMODE_MULTIWINDOWMODE_METHOD:Ljava/lang/String; = "isMultiWindowModeAllowed"

.field public static final whitelist KIOSKMODE_NAVIGATIONBARHIDDEN_METHOD:Ljava/lang/String; = "isNavigationBarHidden"

.field public static final blacklist KIOSKMODE_NIGHTCLOCKALLOWED_METHOD:Ljava/lang/String; = "isNightClockAllowed"

.field public static final whitelist KIOSKMODE_PEOPLEEDGEALLOWED_METHOD:Ljava/lang/String; = "isPeopleEdgeAllowed"

.field public static final whitelist KIOSKMODE_TASKMANAGERALLOWED_METHOD:Ljava/lang/String; = "isTaskManagerAllowed"

.field public static final whitelist KIOSKMODE_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KioskMode"

.field public static final whitelist KNOXCONFIGURATIONTYPEPOLICY:Ljava/lang/String; = "KnoxConfigurationType"

.field public static final whitelist KNOXCONFIGURATIONTYPE_REQUIREDPWDPATTERNRESTRICTIONS_METHOD:Ljava/lang/String; = "getRequiredPwdPatternRestrictions"

.field public static final whitelist KNOXCONFIGURATIONTYPE_URI:Ljava/lang/String; = "content://com.sec.knox.provider/KnoxConfigurationType"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE1_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService1"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE2_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService2"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICEPOLICY1:Ljava/lang/String; = "KnoxCustomManagerService1"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICEPOLICY2:Ljava/lang/String; = "KnoxCustomManagerService2"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_AIRGESTUREOPTIONSTATE_METHOD:Ljava/lang/String; = "getAirGestureOptionState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADNAMESPACES_METHOD:Ljava/lang/String; = "getAppBlockDownloadNamespaces"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADSTATE_METHOD:Ljava/lang/String; = "getAppBlockDownloadState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_AUTOCALLNUMBERANSWERMODE_METHOD:Ljava/lang/String; = "getAutoCallNumberAnswerMode"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_AUTOCALLNUMBERDELAY_METHOD:Ljava/lang/String; = "getAutoCallNumberDelay"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_AUTOCALLNUMBERLIST_METHOD:Ljava/lang/String; = "getAutoCallNumberList"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_AUTOCALLPICKUPSTATE_METHOD:Ljava/lang/String; = "getAutoCallPickupState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_CALLSCREENDISABLEDITEMS_METHOD:Ljava/lang/String; = "getCallScreenDisabledItems"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_CHARGINGLEDSTATE_METHOD:Ljava/lang/String; = "getChargingLEDState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_CHECKCOVERPOPUPSTATE_METHOD:Ljava/lang/String; = "getCheckCoverPopupState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_DEXAUTOOPENLASTAPP_METHOD:Ljava/lang/String; = "isDexAutoOpenLastApp"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_DEXHDMIAUTOENTER_METHOD:Ljava/lang/String; = "getDexHDMIAutoEnter"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_EXITUI_METHOD:Ljava/lang/String; = "getSealedExitUI"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_EXTENTEDCALLINFOSTATE_METHOD:Ljava/lang/String; = "getExtendedCallInfoState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_GEARNOTIFICATIONSTATE_METHOD:Ljava/lang/String; = "getGearNotificationState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_HARDKEYINTENTSTATE_METHOD:Ljava/lang/String; = "getSealedHardKeyIntentState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_HIDENOTIFICATIONMESSAGES_METHOD:Ljava/lang/String; = "getSealedHideNotificationMessages"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_HOMEACTIVITY_METHOD:Ljava/lang/String; = "getSealedHomeActivity"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_INFRAREDSTATE_METHOD:Ljava/lang/String; = "getInfraredState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_LOADINGLOGOPATH_METHOD:Ljava/lang/String; = "getLoadingLogoPath"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_LOCKSCREENHIDDENITEMS_METHOD:Ljava/lang/String; = "getLockScreenHiddenItems"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_LTESETTINGSTATE_METHOD:Ljava/lang/String; = "getLTESettingState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_MULTIWINDOWFIXEDSTATE_METHOD:Ljava/lang/String; = "getSealedMultiWindowFixedState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_NOTIFICATIONMESSAGESTATE_METHOD:Ljava/lang/String; = "getSealedNotificationMessagesState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_POWERDIALOGCUSTOMITEMSSTATE_METHOD:Ljava/lang/String; = "getSealedPowerDialogCustomItemsState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_POWERDIALOGCUSTOMITEMS_METHOD:Ljava/lang/String; = "getSealedPowerDialogCustomItems"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_POWERDIALOGITEMS_METHOD:Ljava/lang/String; = "getSealedPowerDialogItems"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_POWERDIALOGOPTIONMODE_METHOD:Ljava/lang/String; = "getSealedPowerDialogOptionMode"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_POWERMENULOCKEDSTATE_METHOD:Ljava/lang/String; = "getPowerMenuLockedState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_POWERSAVINGMODE_METHOD:Ljava/lang/String; = "getPowerSavingMode"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_RECENTLONGPRESSACTIVITY_METHOD:Ljava/lang/String; = "getRecentLongPressActivity"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_RECENTLONGPRESSMODE_METHOD:Ljava/lang/String; = "getRecentLongPressMode"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_SCREENOFFONHOMELONGPRESSSTATE_METHOD:Ljava/lang/String; = "getScreenOffOnHomeLongPressState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_SCREENOFFONSTATUSBARDOUBLETAPSTATE_METHOD:Ljava/lang/String; = "getScreenOffOnStatusBarDoubleTapState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_SCREENWAKEUPONPOWERSTATE_METHOD:Ljava/lang/String; = "getScreenWakeupOnPowerState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_SEALEDMODESTRING_METHOD:Ljava/lang/String; = "getSealedModeString"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_SENSORDISABLED_METHOD:Ljava/lang/String; = "getSensorDisabled"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_SETSEALEDSTATE_METHOD:Ljava/lang/String; = "setSealedState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_SETTINGENABLEDITEM_METHOD:Ljava/lang/String; = "getSettingsEnabledItems"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_SETTINGSHIDDENSTATE_METHOD:Ljava/lang/String; = "getSettingsHiddenState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_STATE_METHOD:Ljava/lang/String; = "getSealedState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_STATUSBARCLOCKSTATE_METHOD:Ljava/lang/String; = "getSealedStatusBarClockState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_STATUSBARICONSTATE_METHOD:Ljava/lang/String; = "getSealedStatusBarIconsState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_STATUSBARMODE_METHOD:Ljava/lang/String; = "getSealedStatusBarMode"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_STATUSBARTEXTSIZE_METHOD:Ljava/lang/String; = "getStatusBarTextSize"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_STATUSBARTEXTSTYLE_METHOD:Ljava/lang/String; = "getStatusBarTextStyle"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_STATUSBARTEXT_METHOD:Ljava/lang/String; = "getStatusBarText"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_TOASTENABLEDSTATE_METHOD:Ljava/lang/String; = "getToastEnabledState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_TOASTGRAVITYENABLEDSTATE_METHOD:Ljava/lang/String; = "getToastGravityEnabledState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_TOASTGRAVITYXOFFSET_METHOD:Ljava/lang/String; = "getToastGravityXOffset"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_TOASTGRAVITYYOFFSET_METHOD:Ljava/lang/String; = "getToastGravityYOffset"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_TOASTGRAVITY_METHOD:Ljava/lang/String; = "getToastGravity"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_TOASTSHOWPACKAGENAMESTATE_METHOD:Ljava/lang/String; = "getToastShowPackageNameState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_TORCHONVOLUMEBUTTONSSTATE_METHOD:Ljava/lang/String; = "getTorchOnVolumeButtonsState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_ULTRAPOWERSAVINGMODE_METHOD:Ljava/lang/String; = "getUltraPowerSavingPackages"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_USBCONNECTIONTYPEINTERNAL_METHOD:Ljava/lang/String; = "getUsbConnectionTypeInternal"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_USBCONNECTIONTYPE_METHOD:Ljava/lang/String; = "getUsbConnectionType"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_USBMASSSTORAGESTATE_METHOD:Ljava/lang/String; = "getSealedUsbMassStorageState"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_USBNETADDRESS_METHOD:Ljava/lang/String; = "getSealedUsbNetAddress"

.field public static final whitelist KNOXCUSTOMMANAGERSERVICE_USBNETSTATE_METHOD:Ljava/lang/String; = "getSealedUsbNetState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_VOLUMEBUTTONROTATIONSTATE_METHOD:Ljava/lang/String; = "getVolumeButtonRotationState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_VOLUMECONTROLSTREAM_METHOD:Ljava/lang/String; = "getVolumeControlStream"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_VOLUMEKEYAPPSLIST_METHOD:Ljava/lang/String; = "getSealedVolumeKeyAppsList"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_VOLUMEKEYAPPSTATE_METHOD:Ljava/lang/String; = "getSealedVolumeKeyAppState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_VOLUMEPANELENABLEDSTATE_METHOD:Ljava/lang/String; = "getVolumePanelEnabledState"

.field public static final blacklist KNOXCUSTOMMANAGERSERVICE_WIFICONNECTEDMESSAGESTATE_METHOD:Ljava/lang/String; = "getWifiConnectedMessageState"

.field public static final whitelist LOCATIONPOLICY:Ljava/lang/String; = "LocationPolicy"

.field public static final whitelist LOCATIONPOLICY_GPSSTATECHANGE_METHOD:Ljava/lang/String; = "isGPSStateChangeAllowed"

.field public static final whitelist LOCATIONPOLICY_LOCATIONPROVIDERBLOCKEDASUSER_METHOD:Ljava/lang/String; = "isLocationProviderBlockedAsUser"

.field public static final whitelist LOCATIONPOLICY_LOCATIONPROVIDERBLOCKED_METHOD:Ljava/lang/String; = "isLocationProviderBlocked"

.field public static final whitelist LOCATION_URI:Ljava/lang/String; = "content://com.sec.knox.provider/LocationPolicy"

.field public static final whitelist MISCPOLICY:Ljava/lang/String; = "MiscPolicy"

.field public static final whitelist MISCPOLICY_CURRENTLOCKSCREENSTRING_METHOD:Ljava/lang/String; = "getCurrentLockScreenString"

.field public static final whitelist MISCPOLICY_NFCSTATECHANGE_METHOD:Ljava/lang/String; = "isNFCStateChangeAllowed"

.field public static final whitelist MISC_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/MiscPolicy"

.field public static final whitelist MULTIUSERMANAGERPOLICY:Ljava/lang/String; = "MultiUserManager"

.field public static final blacklist MULTIUSERMANAGERPOLICY_MULTIPLEUSERSUPPORTED_METHOD:Ljava/lang/String; = "multipleUsersSupported"

.field public static final whitelist MULTIUSERMANAGERPOLICY_MULTIPLEUSER_METHOD:Ljava/lang/String; = "multipleUsersAllowed"

.field public static final whitelist MULTIUSERMANAGERPOLICY_USERCREATION_METHOD:Ljava/lang/String; = "isUserCreationAllowed"

.field public static final whitelist MULTIUSERMANAGERPOLICY_USERREMOVAL_METHOD:Ljava/lang/String; = "isUserRemovalAllowed"

.field public static final whitelist MULTIUSERMANAGER_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/MultiUserManager"

.field public static final whitelist PASSWORD1_URI:Ljava/lang/String; = "content://com.sec.knox.provider/PasswordPolicy1"

.field public static final whitelist PASSWORD2_URI:Ljava/lang/String; = "content://com.sec.knox.provider/PasswordPolicy2"

.field public static final whitelist PASSWORDPOLICY1:Ljava/lang/String; = "PasswordPolicy1"

.field public static final whitelist PASSWORDPOLICY2:Ljava/lang/String; = "PasswordPolicy2"

.field public static final blacklist PASSWORDPOLICY_BIOMETRICAUTHENTICATIONASUSER_METHOD:Ljava/lang/String; = "isBiometricAuthenticationEnabledAsUser"

.field public static final whitelist PASSWORDPOLICY_BIOMETRICAUTHENTICATION_METHOD:Ljava/lang/String; = "isBiometricAuthenticationEnabled"

.field public static final whitelist PASSWORDPOLICY_CHANGEREQUESTED_METHOD:Ljava/lang/String; = "isChangeRequested"

.field public static final whitelist PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD:Ljava/lang/String; = "isExternalStorageForFailedPasswordsWipeExcluded"

.field public static final whitelist PASSWORDPOLICY_FORBIDDENCHARACTERSEQUENCE_METHOD:Ljava/lang/String; = "hasForbiddenCharacterSequence"

.field public static final whitelist PASSWORDPOLICY_FORBIDDENDATA_METHOD:Ljava/lang/String; = "hasForbiddenData"

.field public static final whitelist PASSWORDPOLICY_FORBIDDENNUMERICSEQUENCE_METHOD:Ljava/lang/String; = "hasForbiddenNumericSequence"

.field public static final whitelist PASSWORDPOLICY_FORBIDDENSTRINGDISTANCE_METHOD:Ljava/lang/String; = "hasForbiddenStringDistance"

.field public static final whitelist PASSWORDPOLICY_FORBIDDENSTRINGS_METHOD:Ljava/lang/String; = "getForbiddenStrings"

.field public static final blacklist PASSWORDPOLICY_GETCURRENTFAILEDPASSWORDATEEMPTS_METHOD:Ljava/lang/String; = "getCurrentFailedPasswordAttempts"

.field public static final whitelist PASSWORDPOLICY_MAXIMUMCHARACTERCHANGELENGTH_METHOD:Ljava/lang/String; = "getMinimumCharacterChangeLength"

.field public static final whitelist PASSWORDPOLICY_MAXIMUMCHARACTEROCCURENCES_METHOD:Ljava/lang/String; = "getMaximumCharacterOccurences"

.field public static final whitelist PASSWORDPOLICY_MAXIMUMCHARACTERSEQUENCELENGTH_METHOD:Ljava/lang/String; = "getMaximumCharacterSequenceLength"

.field public static final whitelist PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD:Ljava/lang/String; = "getMaximumFailedPasswordsForDisable"

.field public static final whitelist PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD:Ljava/lang/String; = "getMaximumFailedPasswordsForWipe"

.field public static final whitelist PASSWORDPOLICY_MAXIMUMNUMBERICSEQUENCELENGTH_METHOD:Ljava/lang/String; = "getMaximumNumericSequenceLength"

.field public static final whitelist PASSWORDPOLICY_MAXREPEATEDCHARACTERS_METHOD:Ljava/lang/String; = "hasMaxRepeatedCharacters"

.field public static final whitelist PASSWORDPOLICY_PASSWORDCHANGETIMEOUT_METHOD:Ljava/lang/String; = "getPasswordChangeTimeout"

.field public static final whitelist PASSWORDPOLICY_PASSWORDLOCKDELAY_METHOD:Ljava/lang/String; = "getPasswordLockDelay"

.field public static final whitelist PASSWORDPOLICY_PASSWORDPATTERNMATCHED_METHOD:Ljava/lang/String; = "isPasswordPatternMatched"

.field public static final whitelist PASSWORDPOLICY_PASSWORDVISIBILITYEDASUSER_METHOD:Ljava/lang/String; = "isPasswordVisibilityEnabledAsUser"

.field public static final whitelist PASSWORDPOLICY_PASSWORDVISIBILITYED_METHOD:Ljava/lang/String; = "isPasswordVisibilityEnabled"

.field public static final whitelist PASSWORDPOLICY_REQUIREDPWDPATTERNRESTRICTIONS_METHOD:Ljava/lang/String; = "getRequiredPwdPatternRestrictions"

.field public static final whitelist PASSWORDPOLICY_SCREENLOCKPATTERNVISIBILITY_METHOD:Ljava/lang/String; = "isScreenLockPatternVisibilityEnabled"

.field public static final whitelist PASSWORDPOLICY_SERVICERUNNING_METHOD:Ljava/lang/String; = "isServiceRunning"

.field public static final whitelist PASSWORDPOLICY_SETPWDCHANGEREQUESTED_METHOD:Ljava/lang/String; = "setPwdChangeRequested"

.field public static final whitelist PHONERESTRICTIONPOLICY:Ljava/lang/String; = "PhoneRestrictionPolicy"

.field public static final whitelist PHONERESTRICTIONPOLICY_BLOCKMMSWITHSTORAGE_METHOD:Ljava/lang/String; = "isBlockMmsWithStorageEnabled"

.field public static final whitelist PHONERESTRICTIONPOLICY_BLOCKSMSWITHSTORAGE_METHOD:Ljava/lang/String; = "isBlockSmsWithStorageEnabled"

.field public static final whitelist PHONERESTRICTIONPOLICY_CALLERIDDISPLAY_METHOD:Ljava/lang/String; = "isCallerIDDisplayAllowed"

.field public static final whitelist PHONERESTRICTIONPOLICY_CANINCOMINGCALL_METHOD:Ljava/lang/String; = "canIncomingCall"

.field public static final whitelist PHONERESTRICTIONPOLICY_CANINCOMINGSMS_METHOD:Ljava/lang/String; = "canIncomingSms"

.field public static final whitelist PHONERESTRICTIONPOLICY_CANOUTGINGSMS_METHOD:Ljava/lang/String; = "canOutgoingSms"

.field public static final whitelist PHONERESTRICTIONPOLICY_CANOUTGOINGCALL_METHOD:Ljava/lang/String; = "canOutgoingCall"

.field public static final whitelist PHONERESTRICTIONPOLICY_CHECKENABLEUSEOFPACKETDATA_METHOD:Ljava/lang/String; = "checkEnableUseOfPacketData"

.field public static final whitelist PHONERESTRICTIONPOLICY_COPYCONTACTTOSIM_METHOD:Ljava/lang/String; = "isCopyContactToSimAllowed"

.field public static final blacklist PHONERESTRICTIONPOLICY_EMERGENCYCALLONLY_METHOD:Ljava/lang/String; = "getEmergencyCallOnly"

.field public static final blacklist PHONERESTRICTIONPOLICY_GETDISCLAIMERTEXT_METHOD:Ljava/lang/String; = "getDisclaimerText"

.field public static final whitelist PHONERESTRICTIONPOLICY_INCOMINGMMS_METHOD:Ljava/lang/String; = "isIncomingMmsAllowed"

.field public static final whitelist PHONERESTRICTIONPOLICY_INCOMINGSMS_METHOD:Ljava/lang/String; = "isIncomingSmsAllowed"

.field public static final blacklist PHONERESTRICTIONPOLICY_ISDATAALLOWEDFROMSIMSLOT1_METHOD:Ljava/lang/String; = "isDataAllowedFromSimSlot1"

.field public static final blacklist PHONERESTRICTIONPOLICY_ISDATAALLOWEDFROMSIMSLOT2_METHOD:Ljava/lang/String; = "isDataAllowedFromSimSlot2"

.field public static final whitelist PHONERESTRICTIONPOLICY_LIMITNUMBEROFSMS_METHOD:Ljava/lang/String; = "isLimitNumberOfSmsEnabled"

.field public static final whitelist PHONERESTRICTIONPOLICY_OUTGOINGMMS_METHOD:Ljava/lang/String; = "isOutgoingMmsAllowed"

.field public static final whitelist PHONERESTRICTIONPOLICY_OUTGOINGSMS_METHOD:Ljava/lang/String; = "isOutgoingSmsAllowed"

.field public static final whitelist PHONERESTRICTIONPOLICY_RCS_ENABLED_METHOD:Ljava/lang/String; = "isRCSEnabled"

.field public static final whitelist PHONERESTRICTIONPOLICY_SIMLOCKEDBYADMIN_METHOD:Ljava/lang/String; = "isSimLockedByAdmin"

.field public static final whitelist PHONERESTRICTIONPOLICY_WAPPUSHALLOWED_METHOD:Ljava/lang/String; = "isWapPushAllowed"

.field public static final whitelist PHONERESTRICTION_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

.field public static final whitelist RESTRICTION1_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy1"

.field public static final whitelist RESTRICTION2_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy2"

.field public static final whitelist RESTRICTION3_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field public static final whitelist RESTRICTION4_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy4"

.field public static final whitelist RESTRICTIONPOLICY1:Ljava/lang/String; = "RestrictionPolicy1"

.field public static final whitelist RESTRICTIONPOLICY2:Ljava/lang/String; = "RestrictionPolicy2"

.field public static final whitelist RESTRICTIONPOLICY3:Ljava/lang/String; = "RestrictionPolicy3"

.field public static final whitelist RESTRICTIONPOLICY4:Ljava/lang/String; = "RestrictionPolicy4"

.field public static final whitelist RESTRICTIONPOLICY_ACTIVATIONLOCKALLOWED_METHOD:Ljava/lang/String; = "isActivationLockAllowed"

.field public static final whitelist RESTRICTIONPOLICY_AIRPLANEMODEALLOWED_METHOD:Ljava/lang/String; = "isAirplaneModeAllowed"

.field public static final whitelist RESTRICTIONPOLICY_ANDROIDBEAMALLOWED_METHOD:Ljava/lang/String; = "isAndroidBeamAllowed"

.field public static final whitelist RESTRICTIONPOLICY_AUDIORECORDALLOWED_METHOD:Ljava/lang/String; = "isAudioRecordAllowed"

.field public static final whitelist RESTRICTIONPOLICY_BACKGROUNDDATAENABLED_METHOD:Ljava/lang/String; = "isBackgroundDataEnabled"

.field public static final whitelist RESTRICTIONPOLICY_BACKGROUNDPROCESSLIMIT_METHOD:Ljava/lang/String; = "isBackgroundProcessLimitEnabled"

.field public static final whitelist RESTRICTIONPOLICY_BACKUPALLOWED_METHOD:Ljava/lang/String; = "isBackupAllowed"

.field public static final whitelist RESTRICTIONPOLICY_BLUETOOTHTETHERINGENABLED_METHOD:Ljava/lang/String; = "isBluetoothTetheringEnabled"

.field public static final whitelist RESTRICTIONPOLICY_CAMERAENABLED_METHOD:Ljava/lang/String; = "isCameraEnabled"

.field public static final whitelist RESTRICTIONPOLICY_CELLULARDATAALLOWED_METHOD:Ljava/lang/String; = "isCellularDataAllowed"

.field public static final whitelist RESTRICTIONPOLICY_CHECKPACKAGESOURCE_METHOD:Ljava/lang/String; = "checkPackageSource"

.field public static final whitelist RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD:Ljava/lang/String; = "isClipboardAllowedAsUser"

.field public static final whitelist RESTRICTIONPOLICY_CLIPBOARDALLOWED_METHOD:Ljava/lang/String; = "isClipboardAllowed"

.field public static final whitelist RESTRICTIONPOLICY_CLIPBOARDSHAREALLOWEDASUSER_METHOD:Ljava/lang/String; = "isClipboardShareAllowedAsUser"

.field public static final whitelist RESTRICTIONPOLICY_CLIPBOARDSHAREALLOWED_METHOD:Ljava/lang/String; = "isClipboardShareAllowed"

.field public static final blacklist RESTRICTIONPOLICY_DATASAVINGALLOWED_METHOD:Ljava/lang/String; = "isDataSavingAllowed"

.field public static final whitelist RESTRICTIONPOLICY_DEVELOPERMODEALLOWED_METHOD:Ljava/lang/String; = "isDeveloperModeAllowed"

.field public static final whitelist RESTRICTIONPOLICY_FACTORYRESETALLOWED_METHOD:Ljava/lang/String; = "isFactoryResetAllowed"

.field public static final whitelist RESTRICTIONPOLICY_FASTENCRYPTIONALLOWED_METHOD:Ljava/lang/String; = "isFastEncryptionAllowed"

.field public static final whitelist RESTRICTIONPOLICY_FIRMWAREAUTOUPDATEALLOWED_METHOD:Ljava/lang/String; = "isFirmwareAutoUpdateAllowed"

.field public static final whitelist RESTRICTIONPOLICY_FIRMWARERECOVERYALLOWED_METHOD:Ljava/lang/String; = "isFirmwareRecoveryAllowed"

.field public static final whitelist RESTRICTIONPOLICY_FOTAUPDATEALLOWED_METHOD:Ljava/lang/String; = "isFotaVersionAllowed"

.field public static final whitelist RESTRICTIONPOLICY_GEARPOLICYENABLED_INTENT:Ljava/lang/String; = "com.samsung.edm.intent.action.GEARPOLICY_ENABLE_INTERNAL"

.field public static final whitelist RESTRICTIONPOLICY_GEARPOLICYENABLED_METHOD:Ljava/lang/String; = "isGearPolicyEnabled"

.field public static final blacklist RESTRICTIONPOLICY_GET_SELECTIVE_FOTA_METHOD:Ljava/lang/String; = "getAllowedFOTAInfo"

.field public static final whitelist RESTRICTIONPOLICY_GOOGLEACCOUNTSAUTOSYNCALLOWED_METHOD:Ljava/lang/String; = "isGoogleAccountsAutoSyncAllowed"

.field public static final whitelist RESTRICTIONPOLICY_GOOGLECRASHREPORTED_METHOD:Ljava/lang/String; = "isGoogleCrashReportedAllowed"

.field public static final whitelist RESTRICTIONPOLICY_HEADPHONE_METHOD:Ljava/lang/String; = "isHeadPhoneEnabled"

.field public static final whitelist RESTRICTIONPOLICY_HOMEKEY_METHOD:Ljava/lang/String; = "isHomeKeyEnabled"

.field public static final blacklist RESTRICTIONPOLICY_IRISCAMERAENABLEDASUSER_METHOD:Ljava/lang/String; = "isIrisCameraEnabledAsUser"

.field public static final whitelist RESTRICTIONPOLICY_KILLINGACTIVITIESONLEAVE_METHOD:Ljava/lang/String; = "isKillingActivitiesOnLeaveAllowed"

.field public static final whitelist RESTRICTIONPOLICY_LOCKSCREENENABLED_METHOD:Ljava/lang/String; = "isLockScreenEnabled"

.field public static final whitelist RESTRICTIONPOLICY_LOCKSCREENVIEW_METHOD:Ljava/lang/String; = "isLockScreenViewAllowed"

.field public static final whitelist RESTRICTIONPOLICY_MICROPHONEASUSER_METHOD:Ljava/lang/String; = "isMicrophoneEnabledAsUser"

.field public static final whitelist RESTRICTIONPOLICY_MICROPHONE_METHOD:Ljava/lang/String; = "isMicrophoneEnabled"

.field public static final whitelist RESTRICTIONPOLICY_MOCKLOCATION_METHOD:Ljava/lang/String; = "isMockLocationEnabled"

.field public static final whitelist RESTRICTIONPOLICY_NEWADMININSTALLATION_METHOD:Ljava/lang/String; = "isNewAdminInstallationEnabled"

.field public static final blacklist RESTRICTIONPOLICY_NFCENABLEDWITHMSG_METHOD:Ljava/lang/String; = "isNFCEnabledWithMsg"

.field public static final blacklist RESTRICTIONPOLICY_NFCENABLED_METHOD:Ljava/lang/String; = "isNFCEnabled"

.field public static final whitelist RESTRICTIONPOLICY_NONMARKETAPP_METHOD:Ljava/lang/String; = "isNonMarketAppAllowed"

.field public static final whitelist RESTRICTIONPOLICY_NONTRUSTEDAPPINSTALLBLOCKED_METHOD:Ljava/lang/String; = "isNonTrustedAppInstallBlocked"

.field public static final whitelist RESTRICTIONPOLICY_ODETRUSTEDBOOTVERIFICATION_METHOD:Ljava/lang/String; = "isOdeTrustedBootVerificationEnabled"

.field public static final whitelist RESTRICTIONPOLICY_OTAUPGRADE_METHOD:Ljava/lang/String; = "isOTAUpgradeAllowed"

.field public static final whitelist RESTRICTIONPOLICY_POWEROFF_METHOD:Ljava/lang/String; = "isPowerOffAllowed"

.field public static final blacklist RESTRICTIONPOLICY_POWERSAVINGMODE_ALLOWED_METHOD:Ljava/lang/String; = "isPowerSavingModeAllowed"

.field public static final whitelist RESTRICTIONPOLICY_SAFEMODE_METHOD:Ljava/lang/String; = "isSafeModeAllowed"

.field public static final whitelist RESTRICTIONPOLICY_SBEAM_METHOD:Ljava/lang/String; = "isSBeamAllowed"

.field public static final blacklist RESTRICTIONPOLICY_SCREENCAPTUREENABLED_METHOD:Ljava/lang/String; = "isScreenCaptureEnabledInternal"

.field public static final whitelist RESTRICTIONPOLICY_SCREENCAPTURE_METHOD:Ljava/lang/String; = "isScreenCaptureEnabled"

.field public static final blacklist RESTRICTIONPOLICY_SCREENPINNINGALLOWEDASUSER_METHOD:Ljava/lang/String; = "isScreenPinningAllowedAsUser"

.field public static final whitelist RESTRICTIONPOLICY_SDCARDENABLED_METHOD:Ljava/lang/String; = "isSdCardEnabled"

.field public static final whitelist RESTRICTIONPOLICY_SDCARDMOVEALLOWED_METHOD:Ljava/lang/String; = "isSDCardMoveAllowed"

.field public static final whitelist RESTRICTIONPOLICY_SDCARDWRITEALLOW_METHOD:Ljava/lang/String; = "isSDCardWriteAllowed"

.field public static final blacklist RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD:Ljava/lang/String; = "isSettingsChangesAllowedAsUser"

.field public static final whitelist RESTRICTIONPOLICY_SETTINGSCHANGES_METHOD:Ljava/lang/String; = "isSettingsChangesAllowed"

.field public static final whitelist RESTRICTIONPOLICY_SHARELIST_METHOD:Ljava/lang/String; = "isShareListAllowed"

.field public static final whitelist RESTRICTIONPOLICY_SMARTCLIPMODE_METHOD:Ljava/lang/String; = "isSmartClipModeAllowed"

.field public static final whitelist RESTRICTIONPOLICY_STATUSBAREXPANSIONALLOWEDASUSER_METHOD:Ljava/lang/String; = "isStatusBarExpansionallowedAsUser"

.field public static final whitelist RESTRICTIONPOLICY_STOPSYSTEMAPP_METHOD:Ljava/lang/String; = "isStopSystemAppAllowed"

.field public static final whitelist RESTRICTIONPOLICY_SVOICEALLOWED_METHOD:Ljava/lang/String; = "isSVoiceAllowed"

.field public static final whitelist RESTRICTIONPOLICY_USBDEBUGGING_METHOD:Ljava/lang/String; = "isUsbDebuggingEnabled"

.field public static final whitelist RESTRICTIONPOLICY_USBHOSTSTORAGE_METHOD:Ljava/lang/String; = "isUsbHostStorageAllowed"

.field public static final whitelist RESTRICTIONPOLICY_USBMASSSTORAGE_METHOD:Ljava/lang/String; = "isUsbMassStorageEnabled"

.field public static final whitelist RESTRICTIONPOLICY_USBMEDIAPLAYERAVAILABLE_METHOD:Ljava/lang/String; = "isUsbMediaPlayerAvailable"

.field public static final whitelist RESTRICTIONPOLICY_USBTETHERING_METHOD:Ljava/lang/String; = "isUsbTetheringEnabled"

.field public static final whitelist RESTRICTIONPOLICY_USERMOBILEDATALIMIT_METHOD:Ljava/lang/String; = "isUserMobileDataLimitAllowed"

.field public static final whitelist RESTRICTIONPOLICY_USESECUREKEYPAD_METHOD:Ljava/lang/String; = "isUseSecureKeypadEnabled"

.field public static final whitelist RESTRICTIONPOLICY_VIDEORECORD_METHOD:Ljava/lang/String; = "isVideoRecordAllowed"

.field public static final whitelist RESTRICTIONPOLICY_VPNALLOWED_METHOD:Ljava/lang/String; = "isVpnAllowed"

.field public static final whitelist RESTRICTIONPOLICY_WALLPAPERCHANGE_METHOD:Ljava/lang/String; = "isWallpaperChangeAllowed"

.field public static final whitelist RESTRICTIONPOLICY_WIFIDIRECT_METHOD:Ljava/lang/String; = "isWifiDirectAllowed"

.field public static final whitelist RESTRICTIONPOLICY_WIFIENABLED_METHOD:Ljava/lang/String; = "isWifiEnabled"

.field public static final whitelist RESTRICTIONPOLICY_WIFITETHERING_METHOD:Ljava/lang/String; = "isWifiTetheringEnabled"

.field public static final whitelist ROAMINGPOLICY:Ljava/lang/String; = "RoamingPolicy"

.field public static final whitelist ROAMINGPOLICY_DATA_METHOD:Ljava/lang/String; = "isRoamingDataEnabled"

.field public static final whitelist ROAMINGPOLICY_PUSH_METHOD:Ljava/lang/String; = "isRoamingPushEnabled"

.field public static final whitelist ROAMINGPOLICY_SYNC_METHOD:Ljava/lang/String; = "isRoamingSyncEnabled"

.field public static final whitelist ROAMINGPOLICY_VOICECALL_METHOD:Ljava/lang/String; = "isRoamingVoiceCallsEnabled"

.field public static final whitelist ROAMING_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RoamingPolicy"

.field public static final blacklist SEAMSPOLICY:Ljava/lang/String; = "SeamsPolicy"

.field public static final blacklist SEAMS_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SeamsPolicy"

.field public static final whitelist SECURITYPOLICY:Ljava/lang/String; = "SecurityPolicy"

.field public static final whitelist SECURITYPOLICY_DODBANNERVISIBLE_METHOD:Ljava/lang/String; = "isDodBannerVisible"

.field public static final whitelist SECURITYPOLICY_GETCREDENTIALSTORAGESTATUS:Ljava/lang/String; = "getCredentialStorageStatus"

.field public static final whitelist SECURITYPOLICY_SETDODBANNERVISIBLESTATUS_METHOD:Ljava/lang/String; = "setDodBannerVisibleStatus"

.field public static final whitelist SECURITY_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SecurityPolicy"

.field public static final whitelist SMARTCARDBROWSERPOLICY:Ljava/lang/String; = "SmartCardBrowserPolicy"

.field public static final whitelist SMARTCARDBROWSERPOLICY_AUTHENTICATION_METHOD:Ljava/lang/String; = "isAuthenticationEnabled"

.field public static final whitelist SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE_METHOD:Ljava/lang/String; = "getClientCertificateAlias"

.field public static final whitelist SMARTCARDBROWSER_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SmartCardBrowserPolicy"

.field public static final whitelist SMARTCARDEMAILPOLICY:Ljava/lang/String; = "SmartCardEmailPolicy"

.field public static final whitelist SMARTCARDEMAILPOLICY_CREDENTIALREQUIRED_METHOD:Ljava/lang/String; = "isCredentialRequired"

.field public static final whitelist SMARTCARDEMAILPOLICY_SMIMEENCRYPTIONCERTIFICATE_METHOD:Ljava/lang/String; = "getSMIMEEncryptionCertificate"

.field public static final whitelist SMARTCARDEMAILPOLICY_SMIMESIGNATURECERTIFICATE_METHOD:Ljava/lang/String; = "getSMIMESignatureCertificate"

.field public static final whitelist SMARTCARDEMAIL_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SmartCardEmailPolicy"

.field public static final whitelist SMARTCARD_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SmartCardBrowserPolicy"

.field public static final whitelist VPNPOLICY:Ljava/lang/String; = "vpnPolicy"

.field public static final whitelist VPNPOLICY_CHECKRACOONSECURITY_METHOD:Ljava/lang/String; = "checkRacoonSecurity"

.field public static final whitelist VPNPOLICY_USERADDPROFILESALLOWED_METHOD:Ljava/lang/String; = "isUserAddProfilesAllowed"

.field public static final whitelist VPNPOLICY_USERCHANGEPROFILESALLOWED_METHOD:Ljava/lang/String; = "isUserChangeProfilesAllowed"

.field public static final whitelist VPNPOLICY_USERSETALWAYSONALLOWED_METHOD:Ljava/lang/String; = "isUserSetAlwaysOnAllowed"

.field public static final whitelist VPNPOLICY_VPNALLOWED_METHOD:Ljava/lang/String; = "isVpnAllowed"

.field public static final whitelist VPN_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/vpnPolicy"

.field public static final whitelist WIFIPOLICY:Ljava/lang/String; = "WifiPolicy"

.field public static final whitelist WIFIPOLICY_ALLOWUSERPOLICYCHANGES_METHOD:Ljava/lang/String; = "getAllowUserPolicyChanges"

.field public static final whitelist WIFIPOLICY_ALLOWUSERPROFILES_METHOD:Ljava/lang/String; = "getAllowUserProfiles"

.field public static final whitelist WIFIPOLICY_AUTOMATICCONNECTION_METHOD:Ljava/lang/String; = "getAutomaticConnectionToWifi"

.field public static final whitelist WIFIPOLICY_EDMADDORUPDATE_METHOD:Ljava/lang/String; = "edmAddOrUpdate"

.field public static final whitelist WIFIPOLICY_ENTERPRISENETWORK_METHOD:Ljava/lang/String; = "isEnterpriseNetwork"

.field public static final whitelist WIFIPOLICY_OPENWIFIAPALLOWED_METHOD:Ljava/lang/String; = "isOpenWifiApAllowed"

.field public static final whitelist WIFIPOLICY_PASSWORDHIDDEN_METHOD:Ljava/lang/String; = "getPasswordHidden"

.field public static final whitelist WIFIPOLICY_PROMPTCREDENTIAL_METHOD:Ljava/lang/String; = "getPromptCredentialsEnabled"

.field public static final whitelist WIFIPOLICY_REMOVENETWORKCONFIGURATION_METHOD:Ljava/lang/String; = "removeNetworkConfiguration"

.field public static final blacklist WIFIPOLICY_SHOWTOASTFROMWIFIMODULE_WIFIBLOCKEDNETWORK:I = 0x0

.field public static final blacklist WIFIPOLICY_SHOWTOASTFROMWIFIMODULE_WIFINETWORKINSECURE:I = 0x1

.field public static final whitelist WIFIPOLICY_WIFIAPSETTINGUSERMODIFICATION_METHOD:Ljava/lang/String; = "isWifiApSettingUserModificationAllowed"

.field public static final whitelist WIFIPOLICY_WIFISCANNINGALLOWED_METHOD:Ljava/lang/String; = "isWifiScanningAllowed"

.field public static final whitelist WIFIPOLICY_WIFISTATECHANGEALLOWED_METHOD:Ljava/lang/String; = "isWifiStateChangeAllowed"

.field public static final whitelist WIFI_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/WifiPolicy"

.field private static blacklist list_supportContentObserver:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 2646
    const-string/jumbo v0, "isRCSEnabled"

    const-string/jumbo v1, "isSettingsChangesAllowed"

    const-string/jumbo v2, "isEmailNotificationsEnabled"

    const-string/jumbo v3, "isClipboardAllowed"

    const-string/jumbo v4, "isClipboardShareAllowed"

    const-string/jumbo v5, "isScreenCaptureEnabled"

    const-string/jumbo v6, "isCameraEnabled"

    const-string/jumbo v7, "getPackagesFromDisableClipboardBlackList"

    const-string/jumbo v8, "getPackagesFromDisableClipboardWhiteList"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/content/SecContentProviderURI;->list_supportContentObserver:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static whitelist isContentObserverSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "selection"    # Ljava/lang/String;

    .line 2633
    if-eqz p0, :cond_0

    .line 2634
    sget-object v0, Landroid/sec/enterprise/content/SecContentProviderURI;->list_supportContentObserver:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2635
    const/4 v0, 0x1

    return v0

    .line 2638
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
