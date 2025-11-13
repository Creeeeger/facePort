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

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/epic/Request;->mHasLoad:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/samsung/epic/Request;->get_service()V

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "scenario_id"    # I

    .line 22
    invoke-direct {p0}, Lcom/samsung/epic/Request;-><init>()V

    .line 25
    :try_start_0
    sget-object v0, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    invoke-interface {v0, p1}, Landroid/os/epic/IEpicManager;->Create(I)Landroid/os/epic/IEpicObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>([I)V
    .locals 2
    .param p1, "scenario_id_list"    # [I

    .line 34
    invoke-direct {p0}, Lcom/samsung/epic/Request;-><init>()V

    .line 37
    :try_start_0
    sget-object v0, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    invoke-interface {v0, p1}, Landroid/os/epic/IEpicManager;->Creates([I)Landroid/os/epic/IEpicObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist get_service()V
    .locals 3

    .line 138
    const-class v0, Lcom/samsung/epic/Request;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-boolean v1, Lcom/samsung/epic/Request;->mHasLoad:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 141
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 143
    :cond_0
    :try_start_2
    const-string v1, "epic"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/epic/IEpicManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/epic/IEpicManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    .line 145
    sput-boolean v2, Lcom/samsung/epic/Request;->mHasLoad:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_3
    sput-object v2, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist acquire_lock()Z
    .locals 2

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    .line 48
    return v0

    .line 51
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/os/epic/IEpicObject;->acquire_lock()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 54
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 56
    :goto_0
    return v0
.end method

.method public blacklist acquire_lock(II)Z
    .locals 2
    .param p1, "value"    # I
    .param p2, "usec"    # I

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x0

    return v1

    .line 81
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/epic/IEpicObject;->acquire_lock_option(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 84
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 86
    :goto_0
    return v0
.end method

.method public blacklist acquire_lock([I[I)Z
    .locals 2
    .param p1, "value_list"    # [I
    .param p2, "usec_list"    # [I

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    .line 93
    const/4 v1, 0x0

    return v1

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/epic/IEpicObject;->acquire_lock_option_multi([I[I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 99
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 101
    :goto_0
    return v0
.end method

.method public blacklist hint_release(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    return v1

    .line 128
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/epic/IEpicObject;->hint_release(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 131
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 133
    :goto_0
    return v0
.end method

.method public blacklist perf_hint(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x0

    return v1

    .line 112
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/epic/IEpicObject;->perf_hint(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 115
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 117
    :goto_0
    return v0
.end method

.method public blacklist release_lock()Z
    .locals 2

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/os/epic/IEpicObject;->release_lock()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 69
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 71
    :goto_0
    return v0
.end method
