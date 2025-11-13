.class public Lcom/samsung/android/chimera/ChimeraMemManager;
.super Ljava/lang/Object;
.source "ChimeraMemManager.java"


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "ChimeraMemManager"

.field private static final greylist mLock:Ljava/lang/Object;

.field private static greylist sService:Lcom/samsung/android/chimera/IChimera;


# instance fields
.field private greylist mContext:Landroid/content/Context;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/chimera/ChimeraMemManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/chimera/ChimeraMemManager;->getService()Lcom/samsung/android/chimera/IChimera;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Lcom/samsung/android/chimera/IChimera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/chimera/ChimeraMemManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/chimera/ChimeraMemManager;->setService(Lcom/samsung/android/chimera/IChimera;)V

    return-void
.end method

.method private greylist getService()Lcom/samsung/android/chimera/IChimera;
    .locals 2

    sget-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

    if-nez v1, :cond_0

    const-string v1, "ChimeraManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/chimera/IChimera$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/chimera/IChimera;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

    :cond_0
    sget-object v1, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist setService(Lcom/samsung/android/chimera/IChimera;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public greylist getAvailableMemInfo(JJ)Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/chimera/PSIAvailableMem;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "ChimeraMemManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailableMemInfo  startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/chimera/ChimeraMemManager;->getService()Lcom/samsung/android/chimera/IChimera;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/chimera/IChimera;->getAvailableMemInfo(JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method
