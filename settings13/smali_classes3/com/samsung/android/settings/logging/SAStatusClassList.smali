.class public Lcom/samsung/android/settings/logging/SAStatusClassList;
.super Ljava/lang/Object;
.source "SAStatusClassList.java"


# static fields
.field private static final mListStatusSupportClass:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    const-string v0, "com.samsung.android.settings.connection.ConnectionsSettings"

    const-string v1, "com.samsung.android.settings.connection.WirelessSettings"

    const-string v2, "com.samsung.android.settings.account.CloudAccountSettings"

    const-string v3, "com.android.settings.users.UserSettings"

    const-string v4, "com.android.settings.accounts.AccountDashboardFragment"

    const-string v5, "com.android.settings.DisplaySettings"

    const-string v6, "com.android.settings.applications.DefaultAppSettings"

    const-string v7, "com.samsung.android.settings.general.GeneralDeviceSettings"

    const-string v8, "com.android.settings.datausage.DataSaverSummary"

    const-string v9, "com.android.settings.datausage.DataUsageSummary"

    const-string v10, "com.samsung.android.settings.as.audio.SoundSettings"

    const-string v11, "com.samsung.android.settings.as.audio.SecVolumeSettings"

    const-string v12, "com.samsung.android.settings.biometrics.fingerprint.FingerprintSettings"

    const-string v13, "com.samsung.android.settings.biometrics.face.FaceSettings"

    const-string v14, "com.samsung.android.settings.biometrics.intelligentscan.IntelligentScanSettings"

    const-string v15, "com.samsung.android.settings.fmm.FindMyMobileSettings"

    const-string v16, "com.samsung.android.settings.lockscreen.LockScreenNotificationSettings"

    const-string v17, "com.samsung.android.settings.lockscreen.LockScreenSettings"

    const-string v18, "com.samsung.android.settings.lockscreen.SecuredLockSettingsMenu"

    const-string v19, "com.samsung.android.settings.lockscreen.LockAppShortcutSettings"

    const-string v20, "com.samsung.android.settings.display.FrontScreenAppsFragment"

    const-string v21, "com.samsung.android.settings.display.FullScreenAppHideCameraSettings"

    const-string v22, "com.samsung.android.settings.bluetooth.BluetoothAdvancedSettings"

    const-string v23, "com.samsung.android.settings.bluetooth.BluetoothSettings"

    const-string v24, "com.samsung.android.settings.navigationbar.NavigationBarSettings"

    const-string v25, "com.samsung.android.settings.smartpopupview.SmartPopupViewSettings"

    const-string v26, "com.samsung.android.settings.notification.BadgeAppIconSettings"

    const-string v27, "com.android.settings.notification.SecAssistantCapabilityPreferenceController"

    const-string v28, "com.android.settings.notification.app.AllConversationsPreferenceController"

    const-string v29, "com.android.settings.notification.app.PriorityConversationsPreferenceController"

    const-string v30, "com.android.settings.notification.history.NotificationHistoryActivity"

    const-string v31, "com.android.settings.notification.zen.ZenModeBlockedEffectsSettings"

    const-string v32, "com.android.settings.notification.zen.ZenModeSettings"

    const-string v33, "com.android.settings.notification.zen.ZenModePeopleSettings"

    const-string v34, "com.android.settings.notification.zen.ZenModeSoundVibrationSettings"

    const-string v35, "com.android.settings.notification.zen.ZenModeBypassingAppsSettings"

    const-string v36, "com.samsung.android.settings.notification.brief.BriefPopupListController"

    const-string v37, "com.samsung.android.settings.notification.FloatingIconsNotificationSettings"

    const-string v38, "com.samsung.android.settings.notification.NotificationIconOnStatusBarController"

    const-string v39, "com.samsung.android.settings.notification.NotificationPopUpStylePreferenceController"

    const-string v40, "com.samsung.android.settings.notification.LedIndicatorPreferenceController"

    const-string v41, "com.samsung.android.settings.notification.StatusBarBatteryPercentageController"

    const-string v42, "com.samsung.android.settings.notification.StatusBarNetworkSpeedController"

    const-string v43, "com.samsung.android.settings.notification.reminder.controller.VibratePreferenceController"

    const-string v44, "com.samsung.android.settings.notification.reminder.NotificationReminderPreferenceFragment"

    const-string v45, "com.samsung.android.settings.notification.reminder.NotificationReminderAppListSettings"

    const-string v46, "com.samsung.android.settings.notification.reminder.controller.NotificationReminderTimeIntervalController"

    const-string v47, "com.samsung.android.settings.usefulfeature.controller.FullScreenInSplitScreenViewPreferenceController"

    const-string v48, "com.android.settings.wifi.ConfigureWifiSettings"

    const-string v49, "com.samsung.android.settings.wifi.intelligent.IntelligentWifiSettings"

    .line 7
    filled-new-array/range {v0 .. v49}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/logging/SAStatusClassList;->mListStatusSupportClass:[Ljava/lang/String;

    return-void
.end method

.method public static getSettingsStatusClassList()[Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusClassList;->mListStatusSupportClass:[Ljava/lang/String;

    return-object v0
.end method
