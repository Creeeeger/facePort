.class public abstract Lcom/android/settings/search/CustomSiteMapRegistry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CUSTOM_SITE_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/search/CustomSiteMapRegistry;->CUSTOM_SITE_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/security/SecuritySettings;

    const-class v3, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;

    const-class v3, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/location/LocationSettings;

    const-class v3, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    const-class v3, Lcom/android/settings/backup/UserBackupSettingsActivity;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/system/SystemDashboardFragment;

    const-class v3, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/notification/zen/ZenModeRestrictNotificationsSettings;

    const-class v3, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    const-class v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    const-class v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/samsunglegal/SamsungLegalInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;

    const-class v3, Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;

    const-class v3, Lcom/android/settings/applications/assist/ManageAssist;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    const-class v3, Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;

    const-class v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;

    const-class v3, Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/security/SecurityAdvancedSettings;

    const-class v3, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    const-class v3, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/datausage/DataUsageSummary;

    const-class v3, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/DisplaySettings;

    const-class v3, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    const-class v3, Lcom/samsung/android/settings/notification/StatusBarNotificationSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/notification/ConfigureNotificationSettings;

    const-class v3, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/notification/ConfigureNotificationSettings;

    const-class v3, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/accessibility/home/SecAccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
