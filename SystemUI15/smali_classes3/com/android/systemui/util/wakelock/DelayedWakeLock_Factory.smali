.class public final Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final bgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->loggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/wakelock/WakeLockLogger;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock;"
        }
    .end annotation

    new-instance v6, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/wakelock/WakeLockLogger;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->newInstance(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-result-object p0

    return-object p0
.end method
