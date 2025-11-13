.class public interface abstract Lcom/android/systemui/util/wakelock/WakeLock;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_LEVELS_AND_FLAGS:I

.field public static final DEFAULT_MAX_TIMEOUT:J = 0x4e20L

.field public static final REASON_WRAP:Ljava/lang/String; = "wrap"

.field public static final TAG:Ljava/lang/String; = "WakeLock"


# direct methods
.method public static synthetic $r8$lambda$1HoLBFl9LDx2gBAFnYkWZwn0v44(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->lambda$wrapImpl$0(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SELF_POKE_DRAW_LOCK:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/systemui/util/wakelock/WakeLock;->DEFAULT_LEVELS_AND_FLAGS:I

    return-void
.end method

.method public static createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 2

    const-wide/16 v0, 0x4e20

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;J)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1

    sget v0, Lcom/android/systemui/util/wakelock/WakeLock;->DEFAULT_LEVELS_AND_FLAGS:I

    invoke-static {p0, p2, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createWakeLockInner(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-static {p0, p1, p3, p4}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static createWakeLock(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;IJ)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 0

    invoke-static {p0, p2, p3}, Lcom/android/systemui/util/wakelock/WakeLock;->createWakeLockInner(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-static {p0, p1, p4, p5}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static createWakeLockInner(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/PowerManager$WakeLock;
    .locals 1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, p2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$wrapImpl$0(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1

    const-string/jumbo v0, "wrap"

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrap(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)V

    return-object v0
.end method

.method public static wrapImpl(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    const-string/jumbo v0, "wrap"

    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-object v0
.end method


# virtual methods
.method public abstract acquire(Ljava/lang/String;)V
.end method

.method public abstract release(Ljava/lang/String;)V
.end method

.method public abstract wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method
