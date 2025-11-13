.class public Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;
.super Ljava/lang/Object;
.source "SemSmartMemoryManager.java"


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "SemSmartMemoryManager"

.field private static greylist sSmartMemMgr:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;->sSmartMemMgr:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    return-void
.end method

.method private constructor greylist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;
    .locals 2

    const-class v0, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;->sSmartMemMgr:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;->sSmartMemMgr:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;->sSmartMemMgr:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist prepare()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/chimera/genie/GenieHintManager;->getGenieHintManager()Lcom/samsung/android/chimera/genie/GenieHintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/chimera/genie/GenieHintManager;->setGenieSessionStart()V

    return-void
.end method

.method public whitelist release()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/chimera/genie/GenieHintManager;->getGenieHintManager()Lcom/samsung/android/chimera/genie/GenieHintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/chimera/genie/GenieHintManager;->setGenieSessionEnd()V

    return-void
.end method

.method public whitelist request(Lcom/samsung/android/chimera/genie/SemMemRequest;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/chimera/genie/MemRequest;

    invoke-virtual {p1}, Lcom/samsung/android/chimera/genie/SemMemRequest;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/chimera/genie/SemMemRequest;->getSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/chimera/genie/MemRequest;-><init>(II)V

    invoke-static {}, Lcom/samsung/android/chimera/genie/GenieHintManager;->getGenieHintManager()Lcom/samsung/android/chimera/genie/GenieHintManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/chimera/genie/GenieHintManager;->prepareMemoryRequest(Lcom/samsung/android/chimera/genie/MemRequest;)V

    return-void
.end method
