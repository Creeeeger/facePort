.class public Landroid/database/sqlite/SQLiteSdpHelper;
.super Ljava/lang/Object;
.source "SQLiteSdpHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SQLiteSdpHelper"

.field private static final blacklist mIsSdpSupported:Z = true

.field private static blacklist sService:Lcom/samsung/android/knox/dar/IDarManagerService;


# instance fields
.field private blacklist mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklist mEngineId:I

.field private blacklist mIsInitialized:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDatabase(Landroid/database/sqlite/SQLiteSdpHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    .line 23
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    .line 28
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    return-void
.end method

.method private static declared-synchronized blacklist getDarService()Lcom/samsung/android/knox/dar/IDarManagerService;
    .locals 2

    const-class v0, Landroid/database/sqlite/SQLiteSdpHelper;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "dar"

    .line 69
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v1

    sput-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 71
    :cond_0
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getEngineId()I
    .locals 5

    .line 75
    const-wide/16 v0, -0x1

    .line 77
    .local v0, "ret":J
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 78
    const-string v3, "PRAGMA sdp_get_engine_id;"

    const/4 v4, 0x0

    .line 79
    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v2

    .line 83
    :cond_0
    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    long-to-int v2, v0

    return v2
.end method

.method private blacklist prepare()V
    .locals 2

    .line 32
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 33
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->getEngineId()I

    move-result v1

    iput v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    if-gez v1, :cond_1

    goto :goto_2

    .line 41
    :cond_1
    new-instance v1, Landroid/database/sqlite/SQLiteSdpHelper$1;

    invoke-direct {v1, p0}, Landroid/database/sqlite/SQLiteSdpHelper$1;-><init>(Landroid/database/sqlite/SQLiteSdpHelper;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-static {}, Landroid/database/sqlite/SQLiteSdpHelper;->getDarService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/database/sqlite/SQLiteSdpHelper;->getDarService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/knox/dar/IDarManagerService;->isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 63
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 64
    return-void

    .line 38
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist registerListener()V
    .locals 4

    .line 88
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->prepare()V

    .line 90
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v1, :cond_0

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 96
    :cond_0
    :try_start_1
    const-string v1, "SQLiteSdpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener() - Engine Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    iget v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService;->registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SQLiteSdpHelper"

    const-string v3, "RemoteException from registerClient"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist unregisterListener()V
    .locals 4

    .line 105
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v1, :cond_0

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 111
    :cond_0
    :try_start_1
    const-string v1, "SQLiteSdpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterListener() - Engine Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    iget v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService;->unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SQLiteSdpHelper"

    const-string v3, "RemoteException from unregisterClient"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
