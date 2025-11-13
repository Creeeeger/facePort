.class Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KillApplicationHandler"
.end annotation


# instance fields
.field private final blacklist mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    return-void
.end method

.method private blacklist ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iget-boolean v0, v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist getSilentResetInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "NPE by silent reset. It\'s normal operation caused by device care"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Auto restart by DeviceCare"

    return-object v1

    :cond_1
    const-string v2, "HeapFull"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    if-eqz v2, :cond_2

    const-string v1, "Auto restart by Heap Memory Full"

    return-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "AndroidRuntime"

    const/16 v1, 0xa

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmCrashing()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfputmCrashing(Z)V

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->stopProfiling()V

    :cond_1
    const-string/jumbo v2, "sys.system_server.pid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_3

    const-string v2, "P|EX"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->getSilentResetInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "P|SR"

    move-object v2, v5

    move-object v3, v4

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@*** saveResetReason with reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smMlog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2, v3}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v4, p2}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    instance-of v3, v2, Landroid/os/DeadObjectException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    :try_start_3
    const-string v3, "Error reporting crash"

    invoke-static {v0, v3, v2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    nop

    return-void

    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    throw v0
.end method
