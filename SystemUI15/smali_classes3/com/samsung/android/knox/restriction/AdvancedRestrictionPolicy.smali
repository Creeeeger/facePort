.class public Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CCMODE_STATE_DISABLED:I = 0x1

.field public static final CCMODE_STATE_ENABLED:I = 0x4

.field public static final CCMODE_STATE_ENFORCING:I = 0x3

.field public static final CCMODE_STATE_NONE:I = 0x0

.field public static final CCMODE_STATE_NOT_SUPPORTED:I = -0x1

.field public static final CCMODE_STATE_READY:I = 0x2

.field public static final CONSTRAINED_STATE_DISABLED:I = 0x0

.field public static final CONSTRAINED_STATE_ENABLED_AND_DEVICE_CONSTRAINED:I = 0x2

.field public static final CONSTRAINED_STATE_ENABLED_BUT_DEVICE_NOT_CONSTRAINED:I = 0x1

.field public static final CONSTRAINED_STATE_RESTRICT_BLUETOOTH:I = 0x8

.field public static final CONSTRAINED_STATE_RESTRICT_CAMERA:I = 0x1

.field public static final CONSTRAINED_STATE_RESTRICT_EXTERNAL_SDCARD:I = 0x2

.field public static final CONSTRAINED_STATE_RESTRICT_MTP:I = 0x4

.field public static final CONSTRAINED_STATE_RESTRICT_SCREEN_CAPTURE:I = 0x40

.field public static final CONSTRAINED_STATE_RESTRICT_TETHERING:I = 0x10

.field public static final CONSTRAINED_STATE_RESTRICT_USB_DEBUGGING:I = 0x20

.field public static TAG:Ljava/lang/String; = "AdvancedRestrictionPolicy"


# instance fields
.field public lVpnService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

.field public mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

.field public mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

.field public mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field public mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public allowBLE(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowBLE"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with bluetooth policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowFaceRecognitionEvenCameraBlocked(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFaceRecognitionEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowFirmwareAutoUpdate(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowFirmwareAutoUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFirmwareAutoUpdate(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowIntelligenceOnlineProcessing(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowIntelligenceOnlineProcessing"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowIntelligenceOnlineProcessing(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowLocalContactStorage(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowLocalContactStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowOnlySecureConnections(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowOnlySecureConnections"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getVpnService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->lVpnService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowOnlySecureConnections(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at advanced restriction policy API allowOnlySecureConnections "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowRemoteControl(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowRemoteControl"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Remote Control Service is not yet ready"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x1

    invoke-interface {v0, p0, p1, v2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at AdvancedRestrictionPolicy API allowRemoteControl "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public allowUserSetAlwaysOn(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowUserSetAlwaysOn"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getVpnService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->lVpnService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserSetAlwaysOn(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with advanced restriction policy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowWifiScanning(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowWifiScanning"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowWifiScanning(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with wifi policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public disableConstrainedState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.disableConstrainedState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "exception occured! "

    invoke-static {v1, p0, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableConstrainedState(Ljava/lang/String;I)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->enableConstrainedState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public enableConstrainedState(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.enableConstrainedState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "exception occured! "

    invoke-static {p2, p0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableConstrainedState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.enableConstrainedState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "exception occured! "

    invoke-static {p2, p0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public enableODETrustedBootVerification(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.enableODETrustedBootVerification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableODETrustedBootVerification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    if-nez v0, :cond_0

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    return-object p0
.end method

.method public getCCModeState()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getConstrainedState()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getConstrainedState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "exception occured! "

    invoke-static {v1, p0, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    if-nez v0, :cond_0

    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object p0
.end method

.method public final getVpnService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->lVpnService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->lVpnService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->lVpnService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    return-object p0
.end method

.method public final getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    return-object p0
.end method

.method public isBLEAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with bluetooth policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFaceRecognitionAllowedEvenCameraBlocked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFirmwareAutoUpdateAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIntelligenceOnlineProcessingAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isKnoxDelegationEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLocalContactStorageAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isODETrustedBootVerificationEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOnlySecureConnectionsAllowed()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getVpnService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->lVpnService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isOnlySecureConnectionsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at advanced restriction policy API isOnlySecureConnectionsAllowed "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteControlAllowed()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Remote Control Service is not yet ready"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at AdvancedRestrictionPolicy API isRemoteControlAllowed "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isUserSetAlwaysOnAllowed()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getVpnService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->lVpnService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to communicate with advanced restriction policy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWifiScanningAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with wifi policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setCCMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.setCCMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCCMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setKnoxDelegationEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.setKnoxDelegationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
