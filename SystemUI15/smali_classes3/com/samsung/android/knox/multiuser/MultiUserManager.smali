.class public Lcom/samsung/android/knox/multiuser/MultiUserManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiUserManager"

.field public static gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

.field public static isMuSupportInfoReady:Z

.field public static isMuSupported:Z

.field public static mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "multi_user_manager_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iput-object p2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getMuSupportInfo()Z

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    if-nez v0, :cond_0

    const-string v0, "multi_user_manager_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    return-object v0
.end method


# virtual methods
.method public allowMultipleUsers(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowMultipleUsers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowMultipleUsers(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0

    const/4 p1, -0x1

    if-eq p1, p0, :cond_1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not Supported in this device"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MultiUserManager"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public allowUserCreation(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "allowUserCreation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowUserCreation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowUserCreation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public allowUserRemoval(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "allowUserRemoval"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowUserRemoval"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowUserRemoval(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createUser(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "createUser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.createUser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->createUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final enforceMultiUserSupport()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getMuSupportInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This device does not support multiple users"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMuSupportInfo()Z
    .locals 4

    const-string v0, "Failed talking with multi user service. "

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-boolean p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z

    monitor-exit v1

    return p0

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getUsers()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getUsers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.getUsers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->getUsers(Lcom/samsung/android/knox/ContextInfo;)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed talking with multi user service. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiUserManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isUserCreationAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isUserCreationAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isUserCreationAllowed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isUserCreationAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isUserRemovalAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isUserRemovalAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isUserRemovalAllowed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isUserRemovalAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public multipleUsersAllowed()Z
    .locals 1

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not Supported in this device"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public multipleUsersAllowed(Z)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MultiUserManager"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public multipleUsersSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed talking with multi user service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MultiUserManager"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeUser(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removeUser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.removeUser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->removeUser(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
