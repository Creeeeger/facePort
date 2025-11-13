.class public Lcom/samsung/android/sdk/command/CommandSdk;
.super Ljava/lang/Object;
.source "CommandSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandSdk"

.field private static sWaitLock:Ljava/lang/Object;


# instance fields
.field private mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/command/CommandSdk$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/sdk/command/CommandSdk;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/command/CommandSdk;
    .locals 1

    .line 47
    invoke-static {}, Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;->access$100()Lcom/samsung/android/sdk/command/CommandSdk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionHandler()Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;
    .locals 4

    .line 78
    sget-object v0, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 81
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/command/CommandSdk;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait until the handler is set (timeout 3 seconds)"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v1, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 84
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 87
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    iget-object p0, p0, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    return-object p0

    :catchall_0
    move-exception p0

    .line 87
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setHandler(Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    .line 57
    sget-object p0, Lcom/samsung/android/sdk/command/CommandSdk;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "set the action handler"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/command/CommandSdk;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "set the invalid action handler"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
