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

    .line 9
    const-class v0, Landroid/os/SemHqmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SemHqmManager;->TAG:Ljava/lang/String;

    .line 10
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock_sys:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ISemHqmManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Landroid/os/ISemHqmManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    .line 21
    iput-object p1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    .line 22
    iput-object p2, p0, Landroid/os/SemHqmManager;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method private static blacklist printExceptionTrace(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 154
    sget-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getCFServerEnable()Z
    .locals 3

    .line 137
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 141
    :cond_0
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
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

    .line 147
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 149
    return v1

    .line 147
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getDVServerEnable()Z
    .locals 3

    .line 120
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
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

    .line 130
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 132
    return v1

    .line 130
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getHqmEnable()Z
    .locals 3

    .line 102
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return v1

    .line 106
    :cond_0
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
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

    .line 113
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 115
    return v1

    .line 113
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "type"    # I
    .param p2, "Id"    # Ljava/lang/String;
    .param p3, "Ver"    # Ljava/lang/String;
    .param p4, "Manufacture"    # Ljava/lang/String;
    .param p5, "HitType"    # Ljava/lang/String;
    .param p6, "Feature"    # Ljava/lang/String;
    .param p7, "logMaps"    # Ljava/lang/String;
    .param p8, "envlogMaps"    # Ljava/lang/String;

    .line 28
    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 29
    return v2

    .line 32
    :cond_0
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    .line 34
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

    .line 40
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit v3

    .line 42
    return v2

    .line 40
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;
    .param p6, "manufacture"    # Ljava/lang/String;
    .param p7, "dev_custom_dataset"    # Ljava/lang/String;
    .param p8, "custom_dataset"    # Ljava/lang/String;
    .param p9, "pri_custom_dataset"    # Ljava/lang/String;

    .line 49
    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 50
    return v2

    .line 53
    :cond_0
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    .line 55
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

    .line 61
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit v3

    .line 63
    return v2

    .line 61
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;
    .param p6, "manufacture"    # Ljava/lang/String;
    .param p7, "dev_custom_dataset"    # Ljava/lang/String;
    .param p8, "custom_dataset"    # Ljava/lang/String;
    .param p9, "pri_custom_dataset"    # Ljava/lang/String;
    .param p10, "appID"    # Ljava/lang/String;

    .line 70
    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 71
    return v2

    .line 74
    :cond_0
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
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

    .line 82
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit v3

    .line 84
    return v2

    .line 82
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "dataset"    # Ljava/lang/String;
    .param p3, "sub_dataset"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    sget-object v0, Landroid/os/SemHqmManager;->BDlock_sys:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISemHqmManager;->sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
