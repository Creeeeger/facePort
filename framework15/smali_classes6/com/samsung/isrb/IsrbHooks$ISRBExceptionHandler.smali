.class Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;
.super Ljava/lang/Object;
.source "IsrbHooks.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/isrb/IsrbHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISRBExceptionHandler"
.end annotation


# instance fields
.field private final blacklist mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final blacklist mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    iput-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;)V

    return-void
.end method

.method private blacklist ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    iget-boolean v0, v0, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "IsrbHooks"

    const-string v2, "Ignored !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist handleException(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "IsrbHooks"

    if-nez v1, :cond_1

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isBooting(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "is booting cause crash!"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isChoreographerException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "is viewroot cause crash!"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isBooting(Ljava/lang/Throwable;)Z
    .locals 7

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smcheckServiceState()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    sub-int/2addr v3, v1

    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_5

    array-length v4, v2

    sub-int/2addr v4, v3

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    const-string v1, "IsrbHooks"

    const-string v4, "isBooting---stack to long"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    aget-object v4, v2, v3

    const-string v5, "startOtherServices"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "startCoreServices"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v0
.end method

.method private blacklist isChoreographerException(Ljava/lang/Throwable;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_6

    array-length v4, v1

    sub-int/2addr v4, v2

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    const-string v3, "IsrbHooks"

    const-string v4, "isChoreographerException---stack to long"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    aget-object v4, v1, v2

    const-string v5, "android.view.Choreographer"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Choreographer.java"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "doFrame"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v3

    :cond_3
    const-string v5, "onCreate"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "onStart"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "onResume"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onPause"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "onStop"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "onDestroy"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_5
    :goto_1
    return v3

    :cond_6
    return v0
.end method

.method private blacklist isInHandleMessage(Ljava/lang/Throwable;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_4

    array-length v4, v1

    sub-int/2addr v4, v2

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    const-string v3, "IsrbHooks"

    const-string v4, "isInHandleMessage---stack to long"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    aget-object v4, v1, v2

    const-string v5, "handleMessage"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmApplicationObject(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    const-string v4, "IsrbHooks"

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v3, v1, :cond_1

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smcheckServiceState()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "checkServiceState is NULL"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v1

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v1

    if-ne v1, v5, :cond_5

    const-string v1, "back to RESCUEPARTY,begin to default handler!"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->useDefaultSetting()V

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-static {v6}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_6

    const-string v1, "Use DefaultHanlder!"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    const-string v1, "android.bg"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "set NULL to instance"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->isrbresetInstance()V

    :cond_7
    const-string v1, "WifiHandlerThread"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "set SystemProperties for wifi"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "sys.isrb.wificrash"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connectivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    :cond_9
    const-string v1, "set SystemProperties for networkcrash"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "sys.isrb.networkcrash"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v1, "android.fg"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "android.ui"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "PackageManager"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.anim"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "android.display"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ObserverHandler"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "android.io"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v3, v1, :cond_c

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;

    invoke-direct {v2, p0}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;-><init>(Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;)V

    const-wide/32 v6, 0x15f90

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne p1, v1, :cond_10

    const/4 p2, 0x0

    :goto_1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    :goto_2
    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isInHandleMessage(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "count ++ !"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    :cond_e
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v1

    if-eq v1, v5, :cond_f

    const/4 v1, 0x5

    if-lt p2, v1, :cond_d

    :cond_f
    const-string v1, "back to RESCUEPARTY,call default handler!"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->useDefaultSetting()V

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_10
    return-void

    :cond_11
    :goto_3
    const-string p1, "android thread loop"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    goto :goto_4

    :catchall_1
    move-exception p1

    const-string p2, "Catch Exception in thread again!"

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
