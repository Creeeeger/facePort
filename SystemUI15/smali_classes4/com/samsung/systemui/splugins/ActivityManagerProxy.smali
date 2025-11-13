.class public Lcom/samsung/systemui/splugins/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static TAG:Ljava/lang/String; = "ActivityManagerProxyImpl"


# instance fields
.field mUserId:I

.field mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    new-instance v0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;-><init>(Lcom/samsung/systemui/splugins/ActivityManagerProxy;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    return-void
.end method

.method private register()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    sget-object v1, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->TAG:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentUser()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->register()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public unregister()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
