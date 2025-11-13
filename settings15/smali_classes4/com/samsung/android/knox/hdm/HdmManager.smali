.class public Lcom/samsung/android/knox/hdm/HdmManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CURRENT_HDM_VERSION:Ljava/lang/String; = "1.0"

.field public static final ERROR_FAIL:I = -0x1

.field public static final TAG:Ljava/lang/String; = "HDM - HdmManager"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/hdm/IHdmManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string p1, "HdmManager.java Started"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getHdmVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v1, "getHdmVersion() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getHdmId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v1, "getHdmId() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Calling getHdmId() using HDM Service on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/hdm/IHdmManager;->getHdmId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Fail to call getHdmId() using HDM Service on HdmManager.java"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v1, "getHdmPolicy() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Calling getHdmPolicy() using HDM Service on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/hdm/IHdmManager;->getHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Fail to call getHdmPolicy() using HDM Service on HdmManager.java"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/hdm/IHdmManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    if-nez v0, :cond_0

    const-string v0, "hdm_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/hdm/IHdmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    return-object p0
.end method

.method public isNFCBlockedByHDM()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v1, "isNFCBlockedByHDM() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Calling isNFCBlockedByHDM() using HDM Service on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/hdm/IHdmManager;->isNFCBlockedByHDM(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Fail to call isNFCBlockedByHDM() using HDM Service on HdmManager.java"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSwBlockEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v1, "isSwBlockEnabled() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Calling isSwBlockEnabled() using HDM Service on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/hdm/IHdmManager;->isSwBlockEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Fail to call isSwBlockEnabled() using HDM Service on HdmManager.java"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setHdmPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHdmPolicy() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Calling setHdmPolicy() using HDM Service on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/hdm/IHdmManager;->setHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Fail to call setHdmPolicy() using HDM Service on HdmManager.java"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public setHdmTaCmd(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHdmTaCmd() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Calling setHdmTaCmd() using HDM Service on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/hdm/IHdmManager;->setHdmTaCmd(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "Fail to call setHdmTaCmd() using HDM Service on HdmManager.java"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public setSwBlock(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSwBlock() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Calling setSwBlock() using HDM Service on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/hdm/IHdmManager;->setSwBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Fail to call setSwBlock() using HDM Service on HdmManager.java"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public syncSwBlockFromBoot()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncSwBlockFromBoot() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Calling syncSwBlockFromBoot() using HDM Service on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/hdm/IHdmManager;->syncSwBlockFromBoot()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "Fail to call syncSwBlockFromBoot() using HDM Service on HdmManager.java"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method
