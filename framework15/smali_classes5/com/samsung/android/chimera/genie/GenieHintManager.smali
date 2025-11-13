.class public Lcom/samsung/android/chimera/genie/GenieHintManager;
.super Ljava/lang/Object;
.source "GenieHintManager.java"


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "GenieHintManager"

.field private static greylist mGenieHintMgr:Lcom/samsung/android/chimera/genie/GenieHintManager;

.field private static greylist sService:Lcom/samsung/android/chimera/IChimera;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/chimera/genie/GenieHintManager;->sService:Lcom/samsung/android/chimera/IChimera;

    sput-object v0, Lcom/samsung/android/chimera/genie/GenieHintManager;->mGenieHintMgr:Lcom/samsung/android/chimera/genie/GenieHintManager;

    return-void
.end method

.method private constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/chimera/genie/GenieHintManager;->getChimeraService()Lcom/samsung/android/chimera/IChimera;

    return-void
.end method

.method private greylist getChimeraService()Lcom/samsung/android/chimera/IChimera;
    .locals 2

    sget-object v0, Lcom/samsung/android/chimera/genie/GenieHintManager;->sService:Lcom/samsung/android/chimera/IChimera;

    if-nez v0, :cond_0

    nop

    const-string v0, "ChimeraManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/chimera/IChimera$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/chimera/IChimera;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/chimera/genie/GenieHintManager;->sService:Lcom/samsung/android/chimera/IChimera;

    :cond_0
    sget-object v0, Lcom/samsung/android/chimera/genie/GenieHintManager;->sService:Lcom/samsung/android/chimera/IChimera;

    if-nez v0, :cond_1

    const-string v0, "GenieHintManager"

    const-string v1, "ChimeraManagerService not accessible from here!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/samsung/android/chimera/genie/GenieHintManager;->sService:Lcom/samsung/android/chimera/IChimera;

    return-object v0
.end method

.method public static declared-synchronized greylist getGenieHintManager()Lcom/samsung/android/chimera/genie/GenieHintManager;
    .locals 2

    const-class v0, Lcom/samsung/android/chimera/genie/GenieHintManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/chimera/genie/GenieHintManager;->mGenieHintMgr:Lcom/samsung/android/chimera/genie/GenieHintManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/chimera/genie/GenieHintManager;

    invoke-direct {v1}, Lcom/samsung/android/chimera/genie/GenieHintManager;-><init>()V

    sput-object v1, Lcom/samsung/android/chimera/genie/GenieHintManager;->mGenieHintMgr:Lcom/samsung/android/chimera/genie/GenieHintManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/chimera/genie/GenieHintManager;->mGenieHintMgr:Lcom/samsung/android/chimera/genie/GenieHintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public greylist prepareMemoryRequest(Lcom/samsung/android/chimera/genie/MemRequest;)V
    .locals 4

    const-string v0, "GenieHintManager"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/chimera/genie/GenieHintManager;->getChimeraService()Lcom/samsung/android/chimera/IChimera;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/chimera/IChimera;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;)V

    goto :goto_0

    :cond_0
    const-string v1, "Null MemRequest or Genie Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Caught while prepareMemory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public greylist setGenieSessionEnd()V
    .locals 4

    const-string v0, "GenieHintManager"

    :try_start_0
    const-string v1, "Calling setGenieSessionEnd.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/chimera/genie/GenieHintManager;->getChimeraService()Lcom/samsung/android/chimera/IChimera;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/chimera/IChimera;->setGenieSessionEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Caught while setGenieSessionEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public greylist setGenieSessionStart()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/chimera/genie/GenieHintManager;->getChimeraService()Lcom/samsung/android/chimera/IChimera;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/chimera/IChimera;->setGenieSessionStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception Caught while setGenieSessionStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenieHintManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
