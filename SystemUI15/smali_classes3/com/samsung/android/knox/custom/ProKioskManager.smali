.class public Lcom/samsung/android/knox/custom/ProKioskManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProKioskManager"

.field public static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public static sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;


# instance fields
.field public mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/custom/ProKioskManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getExitUI(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHardKeyIntentState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHideNotificationMessages()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getHomeActivity()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputMethodRestrictionState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInputMethodRestrictionState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMultiWindowFixedState(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getPowerDialogItems()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPowerDialogOptionMode()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getProKioskState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method

.method public getSettingsEnabledItems()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getStatusBarClockState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarClockState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getStatusBarIconsState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarIconsState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getStatusBarMode()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getStatusBarNotificationsState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarNotificationsState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getUsbMassStorageState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbMassStorageState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getUsbNetAddress(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUsbNetState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVolumeKeyAppState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVolumeKeyAppsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setExitUI"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExitUI(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setHardKeyIntentState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setHardKeyIntentState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setHideNotificationMessages(I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setHideNotificationMessages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHideNotificationMessages(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setHomeActivity(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setHomeActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeActivity(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setInputMethodRestrictionState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setInputMethodRestrictionState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethodRestrictionState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setMultiWindowFixedState(II)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public setPassCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setPassCode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPassCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setPowerDialogCustomItems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setPowerDialogCustomItems"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItems(Ljava/util/List;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setPowerDialogCustomItemsState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setPowerDialogCustomItemsState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItemsState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setPowerDialogItems(I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setPowerDialogItems"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogItems(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setPowerDialogOptionMode(I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setPowerDialogOptionMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogOptionMode(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setProKioskState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setProKioskString(ILjava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setProKioskString"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskString(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setSettingsEnabledItems(ZI)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setSettingsEnabledItems"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsEnabledItems(ZI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setStatusBarClockState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setStatusBarClockState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarClockState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setStatusBarIconsState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setStatusBarIconsState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarIconsState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setStatusBarMode(I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setStatusBarMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarMode(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setStatusBarNotificationsState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setStatusBarNotificationsState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarNotificationsState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setUsbMassStorageState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setUsbMassStorageState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbMassStorageState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setUsbNetAddresses"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setUsbNetState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setUsbNetState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setVolumeKeyAppState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setVolumeKeyAppState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setVolumeKeyAppsList(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setVolumeKeyAppsList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppsList(Ljava/util/List;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public startProKioskMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.startProKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startProKioskMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public stopProKioskMode(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.stopProKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stopProKioskMode(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
