.class public Landroid/sec/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final blacklist ACTION_RESTRICTION_DISABLE_WFD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RESTRICTION_DISABLE_WFD_INTERNAL"

.field public static final blacklist KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field public static final blacklist LOCKSCREEN_MULTIPLE_WIDGET_VIEW:I = 0x1

.field public static final blacklist LOCKSCREEN_SHORTCUTS_VIEW:I = 0x2

.field public static final blacklist SVOICE_PACKAGE1:Ljava/lang/String; = "com.vlingo.midas"

.field public static final blacklist SVOICE_PACKAGE2:Ljava/lang/String; = "com.samsung.voiceserviceplatform"

.field private static blacklist TAG:Ljava/lang/String;

.field public static final blacklist settingsExceptions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 28

    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v26, "com.android.settings.KnoxFingerprintNotice"

    const-string v27, "com.samsung.settings.PRIVATEBOX_SETTINGS"

    const-string v1, "com.android.settings.ActivityPicker"

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    const-string v4, "com.android.settings.ChooseLockAdditionalPin"

    const-string v5, "com.android.settings.ChooseLockFaceWarning"

    const-string v6, "com.android.settings.ChooseLockGeneric"

    const-string v7, "com.android.settings.ChooseLockMotion"

    const-string v8, "com.android.settings.ChooseLockPassword"

    const-string v9, "com.android.settings.ChooseLockPattern"

    const-string v10, "com.android.settings.ConfirmLockPassword"

    const-string v11, "com.android.settings.ConfirmLockPattern"

    const-string v12, "com.android.settings.DeviceAdminAdd"

    const-string v13, "com.android.settings.bluetooth.DevicePickerActivity"

    const-string v14, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    const-string v15, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    const-string v16, "com.android.settings.wfd.WfdPickerActivity"

    const-string v17, "com.android.settings.bluetooth.BluetoothPairingDialog"

    const-string v18, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    const-string v19, "com.android.settings.bluetooth.BluetoothEnableActivity"

    const-string v20, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    const-string v21, "com.android.settings.fingerprint.FingerprintLockSettings"

    const-string v22, "com.android.settings.fingerprint.RegisterFingerprint"

    const-string v23, "com.android.settings.KnoxSetLockFingerprintPassword"

    const-string v24, "com.android.settings.KnoxChooseLockFingerprintPassword"

    const-string v25, "com.android.settings.notification.RedactionInterstitial"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isAudioRecordAllowed(Z)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isAudioRecordAllowed(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isBackupAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isBackupAllowed(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBackupAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isClipboardAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardAllowed(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isClipboardAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isClipboardShareAllowed()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isClipboardShareAllowed()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isFactoryResetAllowed()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isFactoryResetAllowed()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isFactoryResetAllowed returning default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isMicrophoneEnabled(Z)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isMicrophoneEnabled(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isMockLocationEnabled()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isMockLocationEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isVideoRecordAllowed(Z)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isVideoRecordAllowed(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
