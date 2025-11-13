.class Lcom/android/internal/os/RuntimeInit$LoggingHandler;
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
    name = "LoggingHandler"
.end annotation


# instance fields
.field public volatile blacklist mTriggered:Z


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    .line 109
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmCrashing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidRuntime"

    invoke-static {v1, v0, p2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const-string v0, "P|EX"

    .line 118
    .local v0, "reason":Ljava/lang/String;
    :try_start_0
    const-string v2, "NPE by silent reset. It\'s normal operation caused by device care"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HeapFull"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ro.boot.debug_level"

    .line 120
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x4f4c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    :cond_1
    const-string v2, "P|SR"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 125
    :cond_2
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v2

    .line 126
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@*** saveResetReason with reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smMlog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/android/internal/os/RuntimeInit;->logUncaught(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 131
    :goto_1
    return-void
.end method
