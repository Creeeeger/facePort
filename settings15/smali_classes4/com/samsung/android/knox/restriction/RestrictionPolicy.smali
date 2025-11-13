.class public Lcom/samsung/android/knox/restriction/RestrictionPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    }
.end annotation


# static fields
.field public static final ACTION_ALLOW_SETTINGS_CHANGES_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ALLOW_SETTINGS_CHANGES_INTERNAL"

.field public static final ACTION_MTP_DISABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

.field public static final ACTION_UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

.field public static final ACTION_UPDATE_FOTA_VERSION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UPDATE_FOTA_VERSION_RESULT"

.field public static final ERROR_UPDATE_FOTA_ENABLED_BY_OTHER_ADMIN:I = 0x2

.field public static final ERROR_UPDATE_FOTA_INVALID_PARAMETER:I = 0x3

.field public static final ERROR_UPDATE_FOTA_NONE:I = 0x0

.field public static final ERROR_UPDATE_FOTA_UNKNOWN:I = 0x4

.field public static final ERROR_UPDATE_FOTA_UNKNOWN_SERVER:I = 0x1

.field public static final EXTERNAL_STORAGE_PATH_SD:Ljava/lang/String; = "/storage/extSdCard"

.field public static final EXTRA_UPDATE_FOTA_VERSION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.UPDATE_FOTA_VERSION_STATUS"

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final KC_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field public static final LOCKSCREEN_MULTIPLE_WIDGET_VIEW:I = 0x1

.field public static final LOCKSCREEN_SHORTCUTS_VIEW:I = 0x2

.field public static final PERMISSION_KNOX_MTP_DISABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MTP_DISABLED_INTERNAL"

.field public static final STATUS_UPDATE_FOTA_ALREADY_LATEST_VERSION:I = 0x6

.field public static final STATUS_UPDATE_FOTA_FAILURE:I = 0x8

.field public static final STATUS_UPDATE_FOTA_PROCESSING:I = 0x7

.field public static final STATUS_UPDATE_FOTA_SUCCESS:I = 0x5

.field public static final SVOICE_PACKAGE1:Ljava/lang/String; = "com.vlingo.midas"

.field public static final SVOICE_PACKAGE2:Ljava/lang/String; = "com.samsung.voiceserviceplatform"

.field public static TAG:Ljava/lang/String; = "RestrictionPolicy"

.field public static final TASK_MANAGER_PKGNAME:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field public static final UPDATE_FOTA_CORPID:Ljava/lang/String; = "update_fota_corpid"

.field public static final USB_HOST_STORAGE_PATH:Ljava/lang/String; = "/storage/UsbDrive"

.field public static final WEARABLE_GEAR_DEVICE:I = 0x1

.field public static final settingsExceptions:[Ljava/lang/String;


# instance fields
.field public mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field public mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-string v32, "com.android.settings.password.ConfirmLockPattern$KnoxWorkChallengeActivity"

    const-string v33, "com.android.settings.password.ConfirmDeviceCredentialActivity$InternalActivity"

    const-string v0, "com.android.settings.FallbackHome"

    const-string v1, "com.android.settings.ActivityPicker"

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    const-string v4, "com.android.settings.CryptKeeper"

    const-string v5, "com.android.settings.CryptKeeperConfirm"

    const-string v6, "com.android.settings.CryptKeeperSettings"

    const-string v7, "com.android.settings.ChooseLockAdditionalPin"

    const-string v8, "com.android.settings.ChooseLockFaceWarning"

    const-string v9, "com.android.settings.password.ChooseLockGeneric"

    const-string v10, "com.android.settings.ChooseLockMotion"

    const-string v11, "com.android.settings.password.ChooseLockPassword"

    const-string v12, "com.android.settings.password.ChooseLockPattern"

    const-string v13, "com.android.settings.password.ConfirmLockPassword"

    const-string v14, "com.android.settings.password.ConfirmLockPattern"

    const-string v15, "com.android.settings.DeviceAdminAdd"

    const-string v16, "com.android.settings.bluetooth.DevicePickerActivity"

    const-string v17, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    const-string v18, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    const-string v19, "com.android.settings.wfd.WfdPickerActivity"

    const-string v20, "com.android.settings.bluetooth.BluetoothPairingDialog"

    const-string v21, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    const-string v22, "com.android.settings.bluetooth.BluetoothEnableActivity"

    const-string v23, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    const-string v24, "com.android.settings.fingerprint.FingerprintLockSettings"

    const-string v25, "com.android.settings.fingerprint.RegisterFingerprint"

    const-string v26, "com.android.settings.KnoxSetLockFingerprintPassword"

    const-string v27, "com.android.settings.KnoxChooseLockFingerprintPassword"

    const-string v28, "com.android.settings.notification.RedactionInterstitial"

    const-string v29, "com.android.settings.KnoxFingerprintNotice"

    const-string v30, "com.samsung.settings.PRIVATEBOX_SETTINGS"

    const-string v31, "com.android.settings.password.ConfirmLockPassword$KnoxWorkChallengeActivity"

    filled-new-array/range {v0 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.knox.kccagent"

    const-string v2, "com.sec.knox.kccc.agent.receiver.KCCCAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->KC_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public addAllowedFOTAVersions(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public allowAirplaneMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowAirplaneMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAirplaneMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowAndroidBeam(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "RestrictionPolicy.allowAndroidBeam"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public allowAudioRecord(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowAudioRecord"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAudioRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowBackgroundProcessLimit(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowBackgroundProcessLimit"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowBackgroundProcessLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowBluetooth(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowBluetooth"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with bluetooth policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowClipboardShare(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "allowClipboardShare"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowClipboardShare"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowClipboardShare(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowDataSaving(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowDataSaving"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowDataSaving(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowDeveloperMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowDeveloperMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowDeveloperMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowFactoryReset(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "allowFactoryReset"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowFactoryReset"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFactoryReset(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowFastEncryption(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowFastEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFastEncryption(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowFirmwareRecovery(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowFirmwareRecovery"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFirmwareRecovery(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowGoogleAccountsAutoSync(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "allowGoogleAccountsAutoSync"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowGoogleAccountsAutoSync"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowGoogleAccountsAutoSync(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowGoogleCrashReport(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowGoogleCrashReport"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowGoogleCrashReport(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with security policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowKillingActivitiesOnLeave(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowKillingActivitiesOnLeave"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowKillingActivitiesOnLeave(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowLockScreenView(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowLockScreenView"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowLockScreenView(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowOTAUpgrade(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowOTAUpgrade"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowOTAUpgrade(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowPowerOff(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "allowPowerOff"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowPowerOff"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowPowerOff(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowPowerSavingMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowPowerSavingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowPowerSavingMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowSBeam(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "RestrictionPolicy.allowSBeam"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public allowSDCardMove(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowSDCardMove"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSDCardMove(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowSDCardWrite(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowSDCardWrite"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSDCardWrite(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with security policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowSVoice(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowSVoice"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSVoice(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowSafeMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowSafeMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSafeMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowScreenPinning(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowScreenPinning"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowScreenPinning(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowSettingsChanges(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowSettingsChanges"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowShareList(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowShareList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowSmartClipMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowSmartClipMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowStatusBarExpansion(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowStatusBarExpansion"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowStopSystemApp(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowStopSystemApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStopSystemApp(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowUWB(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "RestrictionPolicy.allowUWB"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public allowUsbHostStorage(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowUsbHostStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUsbHostStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowUserMobileDataLimit(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowUserMobileDataLimit"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUserMobileDataLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowVideoRecord(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowVideoRecord"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowVideoRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowVpn(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowVpn"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowVpn(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowWallpaperChange(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowWallpaperChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowWallpaperChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowWiFi(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowWiFi"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with allowWiFi"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowWifiDirect(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.allowWifiDirect"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowWifiDirect(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkIfRestrictionWasSetByKC(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkIfRestrictionWasSetByKC(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v1
.end method

.method public enableWearablePolicy(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.enableWearablePolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "enableWearablePolicy : support above ENTERPRISE_SDK_VERSION_5_6"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableWearablePolicy(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public getAllowedFOTAInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllowedFOTAVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllowedFOTAVersions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    if-nez v0, :cond_0

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    return-object p0
.end method

.method public getKcActionDisabledText()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getKcActionDisabledText()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v1
.end method

.method public getMultiSimPolicy()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getMultiSimPolicy()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object p0
.end method

.method public getUsbExceptionList()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getUsbExceptionList()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    return-object p0
.end method

.method public isAirplaneModeAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isAirplaneModeAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isAndroidBeamAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isAndroidBeamAllowed(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAudioRecordAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isAudioRecordAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isAudioRecordAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isBackupAllowed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isBackupAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with bluetooth policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isBluetoothTetheringEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCameraEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with device info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCellularDataAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isClipboardAllowed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isClipboardAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isClipboardAllowedAsUser(ZI)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with misc policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isClipboardShareAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isClipboardShareAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isClipboardShareAllowedAsUser(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isDataSavingAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDataSavingAllowed()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isDeveloperModeAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isDeveloperModeAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFOTAVersionAllowed(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFactoryResetAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isFactoryResetAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFastEncryptionAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFirmwareRecoveryAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isGoogleAccountsAutoSyncAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isGoogleAccountsAutoSyncAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with security policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isGoogleCrashReportAllowedAsUser(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with security policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isHeadphoneEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isHomeKeyEnabled()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public isHomeKeyEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isIrisCameraEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLockScreenEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLockScreenViewAllowed(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isMockLocationEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isNonMarketAppAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isOTAUpgradeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPowerOffAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isPowerOffAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isPowerOffAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPowerSavingModeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSBeamAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isSBeamAllowed(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSDCardMoveAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSDCardWriteAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with security policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSVoiceAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isSVoiceAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSafeModeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isScreenCaptureEnabledInternal(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isScreenPinningAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSdCardEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isShareListAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isShareListAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isShareListAllowedAsUser(IZ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSmartClipModeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSmartClipModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSmartClipModeAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isStatusBarExpansionAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isStatusBarExpansionAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStatusBarExpansionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isStopSystemAppAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isTetheringEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUWBAllowed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUsbDebuggingEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUsbHostStorageAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isUsbHostStorageAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUsbTetheringEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUseSecureKeypadEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isUserMobileDataLimitAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isVideoRecordAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isVideoRecordAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isVideoRecordAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isVpnAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWallpaperChangeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWallpaperChangeAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWearablePolicyEnabled(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "isWearablePolicyEnabled : support above ENTERPRISE_SDK_VERSION_5_6"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public isWiFiEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with isWiFiEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWifiDirectAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isWifiDirectAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWifiTetheringEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public removeAllowedFOTAVersions(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setAllowNonMarketApps(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setAllowNonMarketApps"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setAllowNonMarketApps(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAllowedFOTAVersion(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBackgroundData(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setBackgroundData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBackgroundData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBackup(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setBackup"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setBackup"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBackup(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBluetoothTethering(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setBluetoothTethering"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCameraState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setCameraState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCellularData(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setCellularData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setClipboardEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setClipboardEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setClipboardEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setClipboardEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHeadphoneState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setHeadphoneState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHeadphoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHomeKeyState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setHomeKeyState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setIrisCameraState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setIrisCameraState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setIrisCameraState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setLockScreenState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy. setLockScreenState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setLockScreenState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMicrophoneState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setMicrophoneState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMicrophoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMockLocation(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setMockLocation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMockLocation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMultiSimPolicy(II[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMultiSimPolicy(Lcom/samsung/android/knox/ContextInfo;II[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setScreenCapture(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setScreenCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSdCardState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setSdCardState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setSdCardState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTethering(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setTethering"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setUsbDebuggingEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUsbExceptionList(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setUSBExceptionList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbExceptionList(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setUsbMediaPlayerAvailability"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbMediaPlayerAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUsbTethering(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setUsbTethering"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUseSecureKeypad(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setUseSecureKeypad"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWifiTethering(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RestrictionPolicy.setWifiTethering"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
