.class public Lcom/samsung/android/wifi/aware/SemWifiAwareManager;
.super Ljava/lang/Object;
.source "SemWifiAwareManager.java"


# static fields
.field public static final blacklist EXTRA_VENDOR_NAN_COMMAND_ID:Ljava/lang/String; = "wifi_vendor_nan_command_id"

.field public static final blacklist EXTRA_VENDOR_NAN_RESPONSE:Ljava/lang/String; = "wifi_vendor_nan_response"

.field public static final blacklist EXTRA_VENDOR_NAN_STATUS_CODE:Ljava/lang/String; = "wifi_vendor_nan_status_code"

.field public static final blacklist SEM_WIFI_VENDOR_NAN_COMMAND_RESPONSE_ACTION:Ljava/lang/String; = "com.samsung.android.wifi.aware.NAN_COMMAND_RESPONSE"

.field public static final blacklist STATUS_FALSE:I = 0x2

.field public static final blacklist STATUS_TRUE:I = 0x1

.field public static final blacklist STATUS_UNABLE_TO_CHECK:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiAwareManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    return-void
.end method


# virtual methods
.method public blacklist getMaxNdpCountForAwareP2p()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->getMaxNdpCountForAwareP2p()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    return v1
.end method

.method public blacklist getMaxNdpCountForAwareSoftAp()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->getMaxNdpCountForAwareSoftAp()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/16 v1, 0x8

    return v1
.end method

.method public blacklist getStdPlusFeature()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->getStdPlusFeature()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist isAwareP2pConcurrencySupported()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->isAwareP2pConcurrencySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAwareP2pConcurrencySupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiAwareManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isAwareSoftApConcurrencySupported()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->isAwareSoftApConcurrencySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAwareSoftApConcurrencySupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiAwareManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isPreEnabled()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->isPreEnabled()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isVendorNanServiceAvailable()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->isVendorNanServiceAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setClusterMergingEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->setClusterMergingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setNanCommand(I[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->setNanCommand(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
