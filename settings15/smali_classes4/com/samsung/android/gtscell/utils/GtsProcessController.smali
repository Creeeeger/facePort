.class public final Lcom/samsung/android/gtscell/utils/GtsProcessController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0018H\u0082\u0008J\u0016\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\u00020\u0011*\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/utils/GtsProcessController;",
        "",
        "()V",
        "forcingToImportant",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "permission",
        "",
        "permissionState",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "shouldCheckPermission",
        "timeout",
        "",
        "timer",
        "Lcom/samsung/android/gtscell/utils/GtsTimer;",
        "token",
        "Landroid/os/IBinder;",
        "activityManager",
        "Landroid/app/ActivityManager;",
        "Landroid/content/Context;",
        "getActivityManager",
        "(Landroid/content/Context;)Landroid/app/ActivityManager;",
        "safe",
        "",
        "block",
        "Lkotlin/Function0;",
        "setProcessImportant",
        "context",
        "isForeground",
        "",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

.field private static final forcingToImportant:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final permission:Ljava/lang/String; = "android.permission.SET_PROCESS_LIMIT"

.field private static final permissionState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final shouldCheckPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final timeout:J = 0x7530L

.field private static timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

.field private static final token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/utils/GtsProcessController;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->token:Landroid/os/IBinder;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->forcingToImportant:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->shouldCheckPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->permissionState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getForcingToImportant$p(Lcom/samsung/android/gtscell/utils/GtsProcessController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->forcingToImportant:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getToken$p(Lcom/samsung/android/gtscell/utils/GtsProcessController;)Landroid/os/IBinder;
    .locals 0

    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method private final getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 0

    const-string p0, "activity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string/jumbo p1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final safe(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/gtscell/log/GLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final setProcessImportant(Landroid/content/Context;Z)V
    .locals 4

    const-string/jumbo p0, "setProcessImportant isForeground:"

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->shouldCheckPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.SET_PROCESS_LIMIT"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/samsung/android/gtscell/utils/GtsProcessController;->permissionState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->permissionState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->forcingToImportant:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/gtscell/log/GLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/utils/GtsProcessController;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/gtscell/utils/GtsProcessController;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ActivityManager;->semSetProcessImportant(Landroid/os/IBinder;IZ)V

    if-eqz p2, :cond_1

    new-instance p1, Lcom/samsung/android/gtscell/utils/GtsTimer;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/gtscell/utils/GtsProcessController$setProcessImportant$1$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/utils/GtsProcessController$setProcessImportant$1$1$1;-><init>(Landroid/app/ActivityManager;)V

    const-wide/16 v2, 0x7530

    invoke-direct {p1, p2, v2, v3, v0}, Lcom/samsung/android/gtscell/utils/GtsTimer;-><init>(Landroid/os/Handler;JLjava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/utils/GtsTimer;->start()V

    sput-object p1, Lcom/samsung/android/gtscell/utils/GtsProcessController;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->stop()V

    :cond_2
    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    const-string/jumbo p1, "timer refresh"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/gtscell/log/GLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Lcom/samsung/android/gtscell/log/GLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
