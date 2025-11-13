.class public Lcom/android/settings/core/gateway/SettingsGateway;
.super Ljava/lang/Object;
.source "SettingsGateway.java"


# static fields
.field public static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0xb4

    new-array v0, v0, [Ljava/lang/String;

    .line 251
    const-class v1, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/shortcut/CreateShortcut;

    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    .line 254
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 256
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    .line 258
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    .line 259
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-class v1, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-class v1, Lcom/android/settings/AllInOneTetherSettings;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-class v1, Lcom/android/settings/TetherSettings;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-class v1, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .line 264
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-class v1, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;

    .line 265
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-class v1, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;

    .line 266
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-class v1, Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    .line 270
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    .line 271
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v21, 0x13

    aput-object v1, v0, v21

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x14

    aput-object v1, v0, v22

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    .line 273
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v23, 0x15

    aput-object v1, v0, v23

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    .line 274
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x16

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x17

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appops/BackgroundCheckSummary;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x18

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/vpn2/VpnSettings;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x19

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/datausage/DataSaverSummary;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/datetime/DateTimeSettings;

    .line 279
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/localepicker/LocaleListEditor;

    .line 280
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    .line 281
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/language/LanguageAndInputSettings;

    .line 282
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    .line 284
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x20

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/inputmethod/UserDictionarySettings;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x21

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/DisplaySettings;

    .line 286
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x22

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x23

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/legal/ModuleLicensesDashboard;

    .line 291
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x24

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 292
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x25

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x26

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/assist/ManageAssist;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x27

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    .line 295
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x28

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/history/NotificationStation;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x29

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/location/LocationSettings;

    .line 297
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/location/WifiScanningFragment;

    .line 298
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    .line 299
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/privacy/OtherPrivacySettingsFragment;

    .line 300
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/privacy/PrivacyControlsFragment;

    .line 301
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/location/LocationServices;

    .line 302
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/security/SecuritySettings;

    .line 303
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x30

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/security/SecurityAdvancedSettings;

    .line 304
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x31

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x32

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/backup/PrivacySettings;

    .line 306
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x33

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;

    .line 307
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x34

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;

    .line 308
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x35

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 309
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x36

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    .line 310
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x37

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;

    .line 311
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x38

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x39

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    .line 313
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;

    .line 314
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;

    .line 315
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    .line 316
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 317
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    .line 318
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x40

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/nfc/AndroidBeam;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x41

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/nfc/NfcSettings;

    .line 321
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x42

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    .line 322
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x43

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    .line 323
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x44

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/nfc/OtherSettings;

    .line 324
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x45

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    .line 325
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x46

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    .line 326
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x47

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 327
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x48

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 328
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x49

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    .line 329
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/AssistGestureSettings;

    .line 330
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/SwipeToNotificationSettings;

    .line 337
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/DoubleTapPowerSettings;

    .line 338
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    .line 339
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/PickupGestureSettings;

    .line 340
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/DoubleTwistGestureSettings;

    .line 341
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x50

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    .line 342
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x51

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    .line 343
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x52

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/dream/DreamSettings;

    .line 344
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x53

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/users/UserSettings;

    .line 345
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x54

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    .line 346
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x55

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    .line 347
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x56

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;

    .line 348
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x57

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenAccessSettings;

    .line 349
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x58

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x59

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;

    .line 351
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    .line 352
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    .line 353
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/TrustedCredentialsSettings;

    .line 354
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5d

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    .line 355
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5e

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    .line 356
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5f

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 357
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x60

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeSettings;

    .line 358
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x61

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/SoundSettings;

    .line 359
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x62

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/ConversationListSettings;

    .line 360
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x63

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 361
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x64

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    .line 362
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x65

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    .line 363
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x66

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;

    .line 365
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x67

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 367
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x68

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;

    .line 368
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x69

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/AppNotificationSettings;

    .line 369
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/AppChannelListSettings;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6b

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;

    .line 371
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/NotificationAssistantPicker;

    .line 372
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 373
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/apn/ApnSettings;

    .line 375
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/apn/ApnEditor;

    .line 376
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x70

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wifi/calling/WifiCallingSettings;

    .line 377
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x71

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    .line 378
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x72

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    .line 379
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x73

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;

    .line 380
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x74

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    .line 381
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x75

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 382
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x76

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    .line 383
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x77

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    .line 384
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x78

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    .line 385
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x79

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    .line 386
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;

    .line 387
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    .line 388
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;

    .line 389
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    .line 390
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;

    .line 391
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;

    .line 392
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x80

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    .line 393
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x81

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accounts/ChooseAccountFragment;

    .line 394
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x82

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/IccLockSettings;

    .line 395
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x83

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/TestingSettings;

    .line 396
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x84

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wifi/WifiAPITest;

    .line 397
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x85

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    .line 398
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x86

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/MainClear;

    .line 399
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x87

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/MainClearConfirm;

    .line 400
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x88

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/system/ResetDashboardFragment;

    .line 401
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x89

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/display/NightDisplaySettings;

    .line 402
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

    .line 403
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    .line 404
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 405
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/system/SystemDashboardFragment;

    .line 406
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/NetworkDashboardFragment;

    .line 407
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 408
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x90

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 409
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x91

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/AppDashboardFragment;

    .line 410
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x92

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    .line 411
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x93

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    .line 412
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x94

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    .line 413
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x95

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/webview/WebViewAppPicker;

    .line 414
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x96

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/security/LockscreenDashboardFragment;

    .line 415
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x97

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 416
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x98

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;

    .line 417
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x99

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    .line 418
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    .line 419
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/backup/ToggleBackupSettingFragment;

    .line 420
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;

    .line 421
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    .line 422
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/MobileNetworkListFragment;

    .line 423
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/PowerMenuSettings;

    .line 424
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa0

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;

    .line 425
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa1

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;

    .line 426
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa2

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    .line 427
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa3

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/ButtonNavigationSettingsFragment;

    .line 428
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa4

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;

    .line 429
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa5

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    .line 430
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa6

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/sound/MediaControlsSettings;

    .line 431
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa7

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/NetworkProviderSettings;

    .line 432
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa8

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/telephony/NetworkSelectSettings;

    .line 433
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa9

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetails;

    .line 434
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xaa

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/MediaManagementAppsDetails;

    .line 435
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xab

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/display/AutoBrightnessSettings;

    .line 436
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xac

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/OneHandedSettings;

    .line 437
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xad

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    .line 438
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xae

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    .line 439
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xaf

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    .line 440
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb0

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;

    .line 441
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb1

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;

    .line 442
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb2

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;

    .line 444
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb3

    aput-object v1, v0, v24

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    .line 448
    const-class v1, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    .line 455
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$AppDashboardActivity;

    .line 456
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/Settings$DisplaySettingsActivity;

    .line 457
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    .line 458
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-class v1, Lcom/android/settings/Settings$StorageDashboardActivity;

    .line 459
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    .line 460
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-class v1, Lcom/android/settings/Settings$AccountDashboardActivity;

    .line 461
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-class v1, Lcom/android/settings/Settings$PrivacySettingsActivity;

    .line 462
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-class v1, Lcom/android/settings/Settings$SecurityDashboardActivity;

    .line 463
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-class v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    .line 464
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-class v1, Lcom/android/settings/support/SupportDashboardActivity;

    .line 470
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 472
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const-class v1, Lcom/android/settings/Settings$WifiApSettingsActivity;

    .line 473
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    const-class v1, Lcom/android/settings/Settings$WifiApClientsUsageReportActivity;

    .line 474
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v15

    const-class v1, Lcom/android/settings/Settings$WifiApClientsManageMobileHotspotActivity;

    .line 475
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v16

    const-class v1, Lcom/android/settings/Settings$WifiApOtpSettingsActivity;

    .line 476
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/Settings$WifiApFamilySharingSettingsActivity;

    .line 477
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v18

    const-class v1, Lcom/android/settings/Settings$WifiApInvitationListActivity;

    .line 478
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v19

    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 479
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v20

    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryCHNActivity;

    .line 481
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v21

    const-class v1, Lcom/android/settings/Settings$NetworkProviderSettingsActivity;

    .line 483
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v22

    const-class v1, Lcom/android/settings/Settings$NetworkSelectActivity;

    .line 484
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v23

    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 486
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x16

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 487
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x17

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$PrintSettingsActivity;

    .line 488
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x18

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 490
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x19

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$ConfigureNotificationSettingsActivity;

    .line 491
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    .line 492
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    .line 493
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$AdaptiveBrightnessActivity;

    .line 495
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$LocationSettingsActivity;

    .line 497
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$LanguageAndInputSettingsActivity;

    .line 499
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    .line 500
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x20

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$EnterprisePrivacySettingsActivity;

    .line 501
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x21

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$MyDeviceInfoActivity;

    .line 502
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x22

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$ModuleLicensesActivity;

    .line 503
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x23

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/backup/UserBackupSettingsActivity;

    .line 504
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x24

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$NfcSettingsActivity;

    .line 506
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x25

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$NfcOsaifukeitaiSettingsActivity;

    .line 507
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x26

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$AndroidBeamSettingsActivity;

    .line 508
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x27

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    .line 509
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x28

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$NfcAdvancedRoutingSettingActivity;

    .line 511
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x29

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$UsefulFeatureMainActivity;

    .line 514
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2a

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    .line 517
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2b

    aput-object v1, v0, v24

    const-class v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    .line 518
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$SecurityAndPrivacySettingsActivity;

    .line 521
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$GeneralDeviceSettingsActivity;

    .line 524
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/Settings$MultiDevicesActivity;

    .line 527
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2f

    aput-object v1, v0, v24

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    const/16 v0, 0x71

    new-array v0, v0, [Ljava/lang/String;

    .line 532
    const-class v1, Lcom/samsung/android/settings/connection/ConnectionsSettings;

    .line 534
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/connection/WirelessSettings;

    .line 535
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/samsung/android/settings/connection/AirplaneModeSettings;

    .line 536
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-class v1, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    .line 537
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-class v1, Lcom/samsung/android/settings/connection/GigaMultiPath;

    .line 538
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-class v1, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    .line 539
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-class v1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    .line 540
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-class v1, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    .line 541
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "com.samsung.android.settings.nfc.NfcSettings"

    aput-object v1, v0, v10

    const-string v1, "com.samsung.android.settings.nfc.osaifu.NfcOsaifukeitaiSettings"

    aput-object v1, v0, v11

    const-string v1, "com.samsung.android.settings.nfc.TapAndPaySettings"

    aput-object v1, v0, v12

    const-string v1, "com.samsung.android.settings.nfc.PaymentSettings"

    aput-object v1, v0, v13

    const-string v1, "com.samsung.android.settings.nfc.OtherSettings"

    aput-object v1, v0, v14

    const-string v1, "com.samsung.android.settings.nfc.AndroidBeam"

    aput-object v1, v0, v15

    const-string v1, "com.samsung.android.settings.nfc.NfcAdvancedRoutingSetting"

    aput-object v1, v0, v16

    const-class v1, Lcom/samsung/android/settings/as/audio/SoundSettings;

    .line 553
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v17

    const-class v1, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    .line 554
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v18

    const-class v1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    .line 555
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v19

    const-class v1, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    .line 556
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v20

    const-class v1, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;

    .line 557
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v21

    const-class v1, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;

    .line 558
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v22

    const-string v1, "com.samsung.android.settings.usefulfeature.SmartStaySettings"

    aput-object v1, v0, v23

    const/16 v1, 0x16

    const-string v2, "com.samsung.android.settings.usefulfeature.NewOneHandOperationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.samsung.android.settings.usefulfeature.FingerSensorGestureSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.samsung.android.settings.usefulfeature.MultiWindowSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.samsung.android.settings.usefulfeature.PanicModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.samsung.android.settings.usefulfeature.RecentsKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.samsung.android.settings.usefulfeature.Usefulfeature"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.samsung.android.settings.usefulfeature.MotionAndGestureSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.samsung.android.settings.accessories.DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.samsung.android.settings.accessories.ShowInfomationMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.samsung.android.settings.accessories.CoverScreenOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.samsung.android.settings.activekey.ActiveKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.samsung.android.settings.activekey.XcoverTopKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.samsung.android.settings.activekey.ActiveKeyAppGridView"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.samsung.android.settings.activekey.AppList"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.samsung.android.settings.usefulfeature.FunctionKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.samsung.android.settings.usefulfeature.FunctionKeyAppGridView"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.samsung.android.settings.usefulfeature.FunctionKeyTips"

    aput-object v2, v0, v1

    const-class v1, Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    .line 581
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    .line 582
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    .line 583
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    .line 584
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;

    .line 585
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;

    .line 586
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;

    .line 587
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/account/CloudAccountSettings;

    .line 591
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;

    .line 595
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    .line 596
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    .line 597
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    .line 601
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/security/SecIccLockSettings;

    .line 602
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    .line 606
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;

    .line 607
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/ResetNetwork;

    .line 608
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/general/ResetSettings;

    .line 609
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;

    .line 610
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;

    .line 611
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    .line 612
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    .line 613
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/general/AutofillPicker;

    .line 614
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const/16 v1, 0x3e

    const-string v2, "com.samsung.android.settings.deviceinfo.legalinfo.LegalInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "com.samsung.android.settings.deviceinfo.statusinfo.StatusInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.samsung.android.settings.deviceinfo.statusinfo.simstatus.SecSimStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "com.samsung.android.settings.deviceinfo.statusinfo.simlockstatus.SimLockStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.samsung.android.settings.deviceinfo.regulatoryinfo.ShowRegulatoryInformationActivity"

    aput-object v2, v0, v1

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    .line 626
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    .line 627
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;

    .line 629
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 631
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    .line 632
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    .line 633
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 634
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;

    .line 635
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const/16 v1, 0x4b

    const-string v2, "com.android.settings.UserCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "com.android.settings.security.InstallCertificateFromStorage"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "com.samsung.android.settings.connection.ethernet.EthernetSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "com.samsung.android.settings.notification.ConfigureNotificationMoreSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "com.samsung.android.settings.notification.FloatingIconsNotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "com.samsung.android.settings.bluelightfilter.BlueLightFilterSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "com.samsung.android.settings.easymode.EasyModeApp"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "com.samsung.android.settings.eyecomfort.EyeComfortSettings"

    aput-object v2, v0, v1

    const-class v1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    .line 656
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;

    .line 657
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;

    .line 658
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/display/SecDreamSettings;

    .line 659
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    .line 660
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    .line 661
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    .line 662
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    .line 663
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const/16 v1, 0x5b

    const-string v2, "com.samsung.android.settings.display.ScreenTimeoutActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "com.samsung.android.settings.display.ScreenTimeoutDockingActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "com.samsung.android.settings.display.SecFontSizePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "com.samsung.android.settings.display.SecFontStylePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "com.samsung.android.settings.easymode.EasyModeApp"

    aput-object v2, v0, v1

    const-class v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    .line 669
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    .line 670
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/taskbar/TaskBarSettings;

    .line 671
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const/16 v1, 0x63

    const-string v2, "com.samsung.android.settings.lockscreen.LockScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "com.samsung.android.settings.lockscreen.DualClockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "com.samsung.android.settings.notification.BadgeAppIconSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "com.samsung.android.settings.lockscreen.LockScreenNotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "com.samsung.android.settings.subscreen.SubScreenSettings"

    aput-object v2, v0, v1

    const-class v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    .line 691
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;

    .line 695
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    .line 696
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistory;

    .line 697
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const/16 v1, 0x6c

    const-string v2, "com.samsung.android.settings.encryption.CryptSDCardSettings"

    aput-object v2, v0, v1

    const-class v1, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;

    .line 702
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;

    .line 703
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    .line 704
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const/16 v1, 0x70

    const-string v2, "com.samsung.android.settings.inputmethod.WirelessKeyboardShareFragment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    return-void
.end method
