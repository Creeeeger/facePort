.class public Landroid/app/SemActivityTaskManager;
.super Ljava/lang/Object;
.source "SemActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemActivityTaskManager$TaskChangeController;
    }
.end annotation


# static fields
.field public static final whitelist CAMERA_CUTOUT_SETTING_APP_DEFAULT:I = 0x0

.field public static final whitelist CAMERA_CUTOUT_SETTING_HIDE:I = 0x2

.field public static final whitelist CAMERA_CUTOUT_SETTING_SHOW:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemActivityTaskManager"

.field private static blacklist sInstance:Landroid/app/SemActivityTaskManager;


# instance fields
.field private final blacklist mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/app/SemTaskChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/app/SemActivityTaskManager$TaskChangeController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SemActivityTaskManager$TaskChangeController;-><init>(Landroid/app/SemActivityTaskManager;Landroid/app/SemActivityTaskManager$TaskChangeController-IA;)V

    iput-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Landroid/app/SemActivityTaskManager;
    .locals 2

    const-class v0, Landroid/app/SemActivityTaskManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Landroid/app/SemActivityTaskManager;

    invoke-direct {v1}, Landroid/app/SemActivityTaskManager;-><init>()V

    sput-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;

    .line 57
    :cond_0
    sget-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static blacklist getTaskService()Landroid/app/IActivityTaskManager;
    .locals 1

    .line 61
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist warningException(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 158
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warningException() : caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getCameraCutoutSetting(ILjava/lang/String;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 150
    :try_start_0
    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerTaskChangeCallback(Landroid/app/SemTaskChangeCallback;)Z
    .locals 4
    .param p1, "taskChangeCallback"    # Landroid/app/SemTaskChangeCallback;

    .line 73
    iget-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "SemActivityTaskManager"

    const-string v3, "TaskChangeCallback already registered"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 80
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    invoke-interface {v1, v3}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v0

    return v1

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    .line 86
    .end local v1    # "e":Landroid/os/RemoteException;
    monitor-exit v0

    .line 88
    return v2

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist unregisterTaskChangeCallback(Landroid/app/SemTaskChangeCallback;)Z
    .locals 4
    .param p1, "taskChangeCallback"    # Landroid/app/SemTaskChangeCallback;

    .line 100
    iget-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 102
    const-string v1, "SemActivityTaskManager"

    const-string v3, "TaskChangeCallback no registered"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 107
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    invoke-interface {v1, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v0

    return v1

    .line 114
    :cond_1
    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    .line 115
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 117
    return v2

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
