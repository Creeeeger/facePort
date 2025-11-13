.class public Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String; = "BTSecureModePolicy"

.field public static mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    if-nez v0, :cond_0

    const-string v0, "bluetooth_secure_mode_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    return-object v0
.end method


# virtual methods
.method public addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.addBluetoothDevicesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BTSecureModePolicy"

    const-string v0, "Failed talking to BT Secure Mode service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public disableSecureMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.disableSecureMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BTSecureModePolicy"

    const-string v1, "Failed talking to BT Secure Mode service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableDeviceWhiteList(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.enableDeviceWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->enableDeviceWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BTSecureModePolicy"

    const-string v0, "Failed talking to BT Secure Mode service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableSecureMode(Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.enableSecureMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->enableSecureMode(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BTSecureModePolicy"

    const-string p2, "Failed talking to BT Secure Mode service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBluetoothDevicesFromWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BTSecureModePolicy"

    const-string v1, "Failed talking to BT Secure Mode service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecureModeConfiguration()Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->getSecureModeConfiguration(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BTSecureModePolicy"

    const-string v1, "Failed talking to BT Secure Mode service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isDeviceWhiteListEnabled()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->isDeviceWhiteListEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BTSecureModePolicy"

    const-string v1, "Failed talking to BT Secure Mode service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSecureModeEnabled()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BTSecureModePolicy"

    const-string v1, "Failed talking to BT Secure Mode service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.removeBluetoothDevicesFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BTSecureModePolicy"

    const-string v0, "Failed talking to BT Secure Mode service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
