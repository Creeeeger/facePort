.class public Lcom/android/systemui/util/wakelock/DelayedWakeLock;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/wakelock/WakeLock;


# static fields
.field private static final RELEASE_DELAY_MS:J = 0x64L

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "[DelayedWakeLock] "


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInner:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public static synthetic $r8$lambda$2jvZUJqP7QqHkIdqT6Fwg4JC8uY(Lcom/android/systemui/util/wakelock/DelayedWakeLock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->lambda$release$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/wakelock/WakeLockLogger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3, p4, p5}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object p2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$release$0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/wakelock/DelayedWakeLock;Ljava/lang/String;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DelayedWakeLock] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrapImpl(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
