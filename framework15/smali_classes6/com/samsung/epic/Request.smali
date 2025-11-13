.class public Lcom/samsung/epic/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "EpicRequest"

.field private static blacklist mEpicManager:Landroid/os/epic/IEpicManager;

.field private static blacklist mHasLoad:Z


# instance fields
.field private blacklist mEpicObject:Landroid/os/epic/IEpicObject;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/epic/Request;->mHasLoad:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/epic/Request;->get_service()V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/epic/Request;-><init>()V

    :try_start_0
    sget-object v0, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    invoke-interface {v0, p1}, Landroid/os/epic/IEpicManager;->Create(I)Landroid/os/epic/IEpicObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    :goto_0
    return-void
.end method

.method public constructor blacklist <init>([I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/epic/Request;-><init>()V

    :try_start_0
    sget-object v0, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    invoke-interface {v0, p1}, Landroid/os/epic/IEpicManager;->Creates([I)Landroid/os/epic/IEpicObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    :goto_0
    return-void
.end method

.method private blacklist get_service()V
    .locals 3

    const-class v0, Lcom/samsung/epic/Request;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/epic/Request;->mHasLoad:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    const-string v1, "epic"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/epic/IEpicManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/epic/IEpicManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    sput-boolean v2, Lcom/samsung/epic/Request;->mHasLoad:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_3
    sput-object v2, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist acquire_lock()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    invoke-interface {v1}, Landroid/os/epic/IEpicObject;->acquire_lock()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist acquire_lock(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    invoke-interface {v1, p1, p2}, Landroid/os/epic/IEpicObject;->acquire_lock_option(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist acquire_lock([I[I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    invoke-interface {v1, p1, p2}, Landroid/os/epic/IEpicObject;->acquire_lock_option_multi([I[I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist hint_release(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    invoke-interface {v1, p1}, Landroid/os/epic/IEpicObject;->hint_release(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist perf_hint(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    invoke-interface {v1, p1}, Landroid/os/epic/IEpicObject;->perf_hint(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist release_lock()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    invoke-interface {v1}, Landroid/os/epic/IEpicObject;->release_lock()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method
