.class public Lcom/samsung/android/sepunion/SemExclusiveTaskManager;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mService:Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

.field private static blacklist sInstance:Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

.field static final blacklist sInstanceSync:Ljava/lang/Object;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mContext:Landroid/content/Context;

    .line 53
    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mUserId:I

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
    .param p3, "userId"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mContext:Landroid/content/Context;

    .line 69
    iput p3, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mUserId:I

    .line 70
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/sepunion/SemExclusiveTaskManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    if-nez v1, :cond_2

    .line 83
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .local v1, "userId":I
    goto :goto_1

    .line 90
    .end local v1    # "userId":I
    :cond_1
    :goto_0
    const/4 v1, -0x2

    .line 94
    .restart local v1    # "userId":I
    :goto_1
    new-instance v2, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;I)V

    sput-object v2, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    .line 96
    .end local v1    # "userId":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    sget-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    return-object v0

    .line 96
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
    .locals 3

    .line 101
    sget-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 103
    .local v0, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string v1, "exclusivetask"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 104
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    .line 107
    .end local v0    # "um":Lcom/samsung/android/sepunion/SemUnionManager;
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    return-object v0
.end method


# virtual methods
.method public blacklist getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->getService()Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    move-result-object v0

    .line 112
    .local v0, "service":Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;->getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call getExclusiveTaskList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method
