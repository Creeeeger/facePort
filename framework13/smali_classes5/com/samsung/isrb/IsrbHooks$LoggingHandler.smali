.class Lcom/samsung/isrb/IsrbHooks$LoggingHandler;
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
    name = "LoggingHandler"
.end annotation


# instance fields
.field public volatile blacklist mTriggered:Z


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;->mTriggered:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/isrb/IsrbHooks$LoggingHandler-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;->mTriggered:Z

    .line 139
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmCrashing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 145
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

    const-string v1, "IsrbHooks"

    invoke-static {v1, v0, p2}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P|EX"

    invoke-static {v1, v0}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/samsung/isrb/IsrbHooks;->logUncaught(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 150
    :goto_0
    return-void
.end method
