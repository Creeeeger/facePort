.class public Landroid/os/SemHqmManager;
.super Ljava/lang/Object;
.source "SemHqmManager.java"


# static fields
.field private static final blacklist BDlock:Ljava/lang/Object;

.field private static final blacklist BDlock_sys:Ljava/lang/Object;

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist mHandler:Landroid/os/Handler;

.field blacklist mService:Landroid/os/ISemHqmManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-class v0, Landroid/os/SemHqmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SemHqmManager;->TAG:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock_sys:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ISemHqmManager;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    iput-object p1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    iput-object p2, p0, Landroid/os/SemHqmManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static blacklist printExceptionTrace(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getCFServerEnable()Z
    .locals 3

    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v2}, Landroid/os/ISemHqmManager;->getCFServerEnable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getDVServerEnable()Z
    .locals 3

    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v2}, Landroid/os/ISemHqmManager;->getDVServerEnable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getHqmEnable()Z
    .locals 3

    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v2}, Landroid/os/ISemHqmManager;->getHqmEnable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-interface/range {v4 .. v12}, Landroid/os/ISemHqmManager;->sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    monitor-exit v3

    return v2

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v4 .. v13}, Landroid/os/ISemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    monitor-exit v3

    return v2

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-interface/range {v4 .. v14}, Landroid/os/ISemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    monitor-exit v3

    return v2

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist sendHWParamToHQMwithFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-interface/range {v4 .. v15}, Landroid/os/ISemHqmManager;->sendHWParamToHQMwithFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    monitor-exit v3

    return v2

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/os/SemHqmManager;->BDlock_sys:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISemHqmManager;->sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
