.class public final Lcom/samsung/android/gtscell/utils/GtsProcessController;
.super Ljava/lang/Object;
.source "GtsProcessController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsProcessController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsProcessController.kt\ncom/samsung/android/gtscell/utils/GtsProcessController\n*L\n1#1,72:1\n66#1,6:73\n*E\n*S KotlinDebug\n*F\n+ 1 GtsProcessController.kt\ncom/samsung/android/gtscell/utils/GtsProcessController\n*L\n32#1,6:73\n*E\n"
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

    .line 11
    new-instance v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/utils/GtsProcessController;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    .line 15
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->token:Landroid/os/IBinder;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->forcingToImportant:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->shouldCheckPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->permissionState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getForcingToImportant$p(Lcom/samsung/android/gtscell/utils/GtsProcessController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 11
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->forcingToImportant:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getToken$p(Lcom/samsung/android/gtscell/utils/GtsProcessController;)Landroid/os/IBinder;
    .locals 0

    .line 11
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method private final getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "activity"

    .line 17
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
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 69
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
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->shouldCheckPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.permission.SET_PROCESS_LIMIT"

    .line 27
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    .line 28
    sget-object v1, Lcom/samsung/android/gtscell/utils/GtsProcessController;->permissionState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 31
    :cond_0
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->permissionState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_5

    .line 33
    :try_start_0
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->forcingToImportant:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    sget-object p0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProcessImportant isForeground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/gtscell/log/GLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/utils/GtsProcessController;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object p0

    .line 36
    sget-object p1, Lcom/samsung/android/gtscell/utils/GtsProcessController;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/ActivityManager;->semSetProcessImportant(Landroid/os/IBinder;IZ)V

    if-eqz p2, :cond_2

    .line 39
    new-instance p1, Lcom/samsung/android/gtscell/utils/GtsTimer;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0x7530

    new-instance v3, Lcom/samsung/android/gtscell/utils/GtsProcessController$setProcessImportant$1$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/gtscell/utils/GtsProcessController$setProcessImportant$1$1$1;-><init>(Landroid/app/ActivityManager;)V

    invoke-direct {p1, p2, v1, v2, v3}, Lcom/samsung/android/gtscell/utils/GtsTimer;-><init>(Landroid/os/Handler;JLjava/lang/Runnable;)V

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/utils/GtsTimer;->start()V

    .line 49
    sput-object p1, Lcom/samsung/android/gtscell/utils/GtsProcessController;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    goto :goto_1

    .line 53
    :cond_2
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->stop()V

    :cond_3
    const/4 p0, 0x0

    .line 54
    sput-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 57
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 58
    sget-object p0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    const-string/jumbo p1, "timer refresh"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/gtscell/log/GLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object p0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 69
    sget-object p1, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Lcom/samsung/android/gtscell/log/GLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method
