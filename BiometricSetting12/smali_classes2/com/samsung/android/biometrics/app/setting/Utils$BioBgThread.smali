.class public Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;
.super Landroid/os/HandlerThread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BioBgThread"
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static sInstance:Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "BioSysUi.bg"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static declared-synchronized ensureThreadLocked()V
    .locals 3

    const-class v0, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;

    invoke-direct {v1}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;-><init>()V

    sput-object v1, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static get()Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;
    .locals 1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->ensureThreadLocked()V

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;

    return-object v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->ensureThreadLocked()V

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->ensureThreadLocked()V

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->sHandler:Landroid/os/Handler;

    return-object v0
.end method
