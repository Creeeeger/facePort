.class public Lcom/samsung/android/smartface/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;,
        Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;
    }
.end annotation


# static fields
.field public static final blacklist FALSE:Ljava/lang/String; = "false"

.field public static final blacklist FEATURE_SMART_STAY:Ljava/lang/String; = "com.sec.android.smartface.smart_stay"

.field public static final blacklist MSG_FACEINFO:I = 0x0

.field public static final blacklist MSG_REGISTERED:I = 0x1

.field public static final blacklist MSG_UNREGISTERED:I = 0x2

.field private static final blacklist NULL_VALUE:Ljava/lang/String; = ""

.field public static final blacklist SERVICETYPE_STAY:I = 0x4

.field public static final blacklist SMARTFACE_SERVICE:Ljava/lang/String; = "samsung.smartfaceservice"

.field public static final blacklist SMART_SCREEN_DUMP_PREVIEW:Ljava/lang/String; = "smart-screen-dump"

.field public static final blacklist SMART_STAY_DELAY:I = 0xabe

.field public static final blacklist SMART_STAY_FRAMECOUNT_RESET:Ljava/lang/String; = "smart-stay-framecount-reset"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartFaceManager"

.field public static final blacklist TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final blacklist complete:Ljava/util/concurrent/locks/Condition;

.field private final blacklist lock:Ljava/util/concurrent/locks/Lock;

.field private blacklist mCallbackData:I

.field private final blacklist mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private final blacklist mEventHandlerLock:Ljava/lang/Object;

.field private blacklist mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private blacklist mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field private final blacklist mListenerLock:Ljava/lang/Object;

.field private blacklist mService:Lcom/samsung/android/smartface/ISmartFaceService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandlerLock(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 105
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    .line 113
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    .line 114
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    .line 190
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    .line 191
    new-instance v2, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-direct {v2, p0}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    .line 193
    monitor-enter v1

    .line 195
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .local v3, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 196
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v0, p0, p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    .line 198
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v0, p0, p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0

    .line 200
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 202
    .end local v3    # "looper":Landroid/os/Looper;
    :goto_0
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized blacklist ensureServiceConnected()Z
    .locals 4

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    const-string v2, "empty key for ping"

    const-string v3, "empty value"

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_0

    .line 136
    .end local p0    # "this":Lcom/samsung/android/smartface/SmartFaceManager;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-nez v0, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->startSmartFaceService()V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForService()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static blacklist getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/smartface/SmartFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist startSmartFaceService()V
    .locals 4

    .line 177
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartface"

    const-string v3, "com.samsung.android.smartface.SmartFaceServiceStarter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "SmartFaceManager"

    const-string v2, "Service is being installed. Ignore smart stay request."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method

.method private blacklist waitForCallback(I)J
    .locals 7
    .param p1, "waitMilli"    # I

    .line 435
    const-wide/16 v0, -0x1

    .line 438
    .local v0, "ret":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    move-wide v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-string v2, "SmartFaceManager"

    const-string v3, "No Callback!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    goto :goto_0

    .line 439
    :catch_0
    move-exception v2

    .line 442
    :goto_0
    return-wide v0
.end method

.method private blacklist waitForService()V
    .locals 5

    .line 158
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 159
    const-string/jumbo v1, "samsung.smartfaceservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 161
    const-string v2, "SmartFaceManager"

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "Service connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_0
    const-wide/16 v3, 0x12c

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit16 v3, v0, 0x12c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist checkForSmartStay()Z
    .locals 6

    monitor-enter p0

    .line 313
    :try_start_0
    const-string v0, "SmartFaceManager"

    const-string v1, "checkForSmartStay S"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "ret":Z
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Smart Stay Wait Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, "waitThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 319
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 320
    :try_start_1
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 321
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 324
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 325
    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 326
    .local v3, "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 328
    :try_start_4
    new-instance v2, Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 341
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 345
    :try_start_5
    const-string/jumbo v2, "smart-stay-framecount-reset"

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/smartface/SmartFaceManager;->start(I)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_1

    .line 348
    const/4 v2, -0x1

    :try_start_6
    iput v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 349
    const/16 v4, 0x49e

    invoke-direct {p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 350
    iget v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    if-lez v4, :cond_0

    const/4 v0, 0x1

    .line 353
    :cond_0
    iput v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 354
    const/16 v2, 0x3f9

    invoke-direct {p0, v2}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 355
    iget v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    nop

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->stop()V

    .line 365
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 366
    :try_start_8
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 367
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 368
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 369
    :try_start_9
    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 371
    const-string v2, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForSmartStay X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 372
    monitor-exit p0

    return v0

    .line 368
    .end local p0    # "this":Lcom/samsung/android/smartface/SmartFaceManager;
    :catchall_1
    move-exception v4

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v4

    .line 360
    :catchall_2
    move-exception v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 326
    .end local v3    # "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    :catchall_3
    move-exception v3

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 321
    :catchall_4
    move-exception v3

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 312
    .end local v0    # "ret":Z
    .end local v1    # "waitThread":Landroid/os/HandlerThread;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getSupportedServices()I
    .locals 2

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 385
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    invoke-interface {v0}, Lcom/samsung/android/smartface/ISmartFaceService;->getSupportedServices()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .local v0, "ret":I
    goto :goto_0

    .line 386
    .end local v0    # "ret":I
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    const/4 v1, 0x0

    move v0, v1

    .line 391
    .local v0, "ret":I
    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$checkForSmartStay$0$com-samsung-android-smartface-SmartFaceManager(Lcom/samsung/android/smartface/FaceInfo;I)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/smartface/FaceInfo;
    .param p2, "service_type"    # I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkForSmartStay onInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 333
    :try_start_0
    iget v0, p1, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    iput v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 334
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 337
    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 337
    throw v0

    .line 339
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 402
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 404
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public blacklist setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist start(I)Z
    .locals 3
    .param p1, "serviceType"    # I

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 220
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist startAsync(I)V
    .locals 2
    .param p1, "serviceType"    # I

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist stop()V
    .locals 3

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    :cond_2
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist stopAsync()V
    .locals 3

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    :cond_2
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
