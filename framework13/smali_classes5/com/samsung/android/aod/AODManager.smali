.class public Lcom/samsung/android/aod/AODManager;
.super Ljava/lang/Object;
.source "AODManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;,
        Lcom/samsung/android/aod/AODManager$AODDozeCallback;,
        Lcom/samsung/android/aod/AODManager$AODDozeLock;,
        Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;,
        Lcom/samsung/android/aod/AODManager$AODChangeListener;
    }
.end annotation


# static fields
.field public static final blacklist AOD_MANAGER_VERSION:I = 0x4

.field public static final blacklist AOD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.aodservice"

.field public static final blacklist INTERVAL_100:I = 0x0

.field public static final blacklist INTERVAL_1000:I = 0x3

.field public static final blacklist INTERVAL_200:I = 0x1

.field public static final blacklist INTERVAL_500:I = 0x2

.field public static final blacklist INTERVAL_DEBUG:I = 0x3e7

.field public static final blacklist ROTATE_0:I = 0x0

.field public static final blacklist ROTATE_180:I = 0x2

.field public static final blacklist ROTATE_270:I = 0x3

.field public static final blacklist ROTATE_90:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AODManager"

.field public static final blacklist TYPE_ACTIVE_ANALOG_IMAGE:I = 0x2

.field public static final blacklist TYPE_ACTIVE_DIGITAL_IMAGE:I = 0x3

.field public static final blacklist TYPE_ACTIVE_ICON_IMAGE:I = 0x1

.field private static blacklist sInstance:Lcom/samsung/android/aod/AODManager;


# instance fields
.field private blacklist mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAODCallbackLock:Ljava/lang/Object;

.field private blacklist mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

.field blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/aod/IAODManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Lcom/samsung/android/aod/AODManager;)Lcom/samsung/android/aod/IAODManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/samsung/android/aod/AODManager;->sInstance:Lcom/samsung/android/aod/AODManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/aod/AODManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/aod/AODManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/aod/AODManager;->sInstance:Lcom/samsung/android/aod/AODManager;

    :goto_0
    return-object v0
.end method

.method private blacklist getService()Lcom/samsung/android/aod/IAODManager;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "AODManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/aod/IAODManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    .line 85
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v0, :cond_1

    .line 86
    const-string v0, "AODManager"

    const-string v1, "getService fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-object v0
.end method


# virtual methods
.method public blacklist addLogText(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/aod/IAODManager;->addLogText(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist getActiveImageInfo()Ljava/lang/String;
    .locals 4

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 258
    return-object v1

    .line 261
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->getActiveImageInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-object v1
.end method

.method public blacklist isAODState()Z
    .locals 4

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->isAODState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1
.end method

.method public blacklist isSViewCoverBrightnessHigh()Z
    .locals 4

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 159
    return v1

    .line 162
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->isSViewCoverBrightnessHigh()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v1
.end method

.method public blacklist readyToScreenTurningOn()V
    .locals 3

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    return-void

    .line 314
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->readyToScreenTurningOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerAODDozeCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/aod/AODManager$AODDozeCallback;

    .line 423
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    const-string v0, "AODManager"

    if-nez p1, :cond_1

    .line 427
    const-string/jumbo v1, "registerAODDozeCallback: callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    if-nez v1, :cond_2

    .line 431
    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;-><init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V

    iput-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    .line 433
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/aod/IAODManager;->registerAODDozeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 438
    :cond_2
    const-string/jumbo v1, "registerAODDozeCallback: listener already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_1
    return-void
.end method

.method public blacklist registerAODListener(Lcom/samsung/android/aod/AODListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/aod/AODListener;

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    if-nez p1, :cond_1

    .line 331
    const-string v0, "AODManager"

    const-string/jumbo v1, "registerAODListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 337
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    .line 338
    .local v3, "temp":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    move-object v1, v3

    .line 340
    goto :goto_1

    .line 342
    .end local v3    # "temp":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :cond_2
    goto :goto_0

    .line 343
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 344
    new-instance v2, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;-><init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODListener;)V

    move-object v1, v2

    .line 345
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/aod/IAODManager;->registerAODListener(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    goto :goto_2

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AODManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AODManagerService RuntimeException?\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    nop

    .line 355
    .end local v1    # "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 356
    return-void

    .line 352
    .restart local v1    # "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :cond_4
    const-string v2, "AODManager"

    const-string/jumbo v3, "registerAODListener : listener already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    monitor-exit v0

    return-void

    .line 355
    .end local v1    # "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist requestAODToast(Lcom/samsung/android/aod/AODToast;)V
    .locals 3
    .param p1, "toast"    # Lcom/samsung/android/aod/AODToast;

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 472
    return-void

    .line 475
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/aod/IAODManager;->requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setLiveClockCommand(III[I)I
    .locals 4
    .param p1, "nodeType"    # I
    .param p2, "cmd"    # I
    .param p3, "dataSize"    # I
    .param p4, "dataArray"    # [I

    .line 292
    const/4 v0, -0x1

    .line 293
    .local v0, "result":I
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 294
    return v0

    .line 297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/aod/IAODManager;->setLiveClockCommand(III[I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public blacklist setLiveClockImage(II[BLjava/lang/String;)I
    .locals 4
    .param p1, "nodeType"    # I
    .param p2, "clockType"    # I
    .param p3, "img_buf"    # [B
    .param p4, "imageInfo"    # Ljava/lang/String;

    .line 274
    const/4 v0, -0x1

    .line 275
    .local v0, "result":I
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 276
    return v0

    .line 279
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/aod/IAODManager;->setLiveClockImage(II[BLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public blacklist setLiveClockInfo(IJJJJJJJJ)I
    .locals 21
    .param p1, "type"    # I
    .param p2, "en"    # J
    .param p4, "interval"    # J
    .param p6, "hour"    # J
    .param p8, "min"    # J
    .param p10, "second"    # J
    .param p12, "ms"    # J
    .param p14, "pos_x"    # J
    .param p16, "pos_y"    # J

    .line 222
    const/4 v1, -0x1

    .line 223
    .local v1, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    return v1

    .line 227
    :cond_0
    move-object/from16 v2, p0

    :try_start_0
    iget-object v3, v2, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    invoke-interface/range {v3 .. v20}, Lcom/samsung/android/aod/IAODManager;->setLiveClockInfo(IJJJJJJJJ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AODManagerService RuntimeException?\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AODManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v1
.end method

.method public blacklist setLiveClockNeedle([B)V
    .locals 3
    .param p1, "img_buf"    # [B

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 245
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/aod/IAODManager;->setLiveClockNeedle([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterAODDozeCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/aod/AODManager$AODDozeCallback;

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    return-void

    .line 450
    :cond_0
    const-string v0, "AODManager"

    if-nez p1, :cond_1

    .line 451
    const-string/jumbo v1, "unregisterAODDozeCallback: callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    if-nez v1, :cond_2

    .line 455
    const-string/jumbo v1, "unregisterAODDozeCallback: not registered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 458
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/aod/IAODManager;->unregisterAODDozeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    .line 464
    :goto_1
    return-void
.end method

.method public blacklist unregisterAODListener(Lcom/samsung/android/aod/AODListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/aod/AODListener;

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    if-nez p1, :cond_1

    .line 370
    const-string v0, "AODManager"

    const-string/jumbo v1, "unregisterAODListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    .line 377
    .local v3, "temp":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    move-object v1, v3

    .line 379
    goto :goto_1

    .line 381
    .end local v3    # "temp":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :cond_2
    goto :goto_0

    .line 382
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 383
    const-string v2, "AODManager"

    const-string/jumbo v3, "unregisterAODListener : cannot find the listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 387
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/aod/IAODManager;->unregisterAODListener(Landroid/os/IBinder;)V

    .line 388
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    goto :goto_2

    .line 389
    :catch_0
    move-exception v2

    .line 390
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AODManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AODManagerService RuntimeException?\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist updateAODTspRect(IIII)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    const-string v6, "com.samsung.android.app.aodservice"

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/aod/IAODManager;->updateAODTspRect(IIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist updateAODTspRect(IIIILjava/lang/String;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/aod/IAODManager;->updateAODTspRect(IIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/aod/IAODManager;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
