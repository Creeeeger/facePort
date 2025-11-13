.class public final Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory_Impl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/wakelock/DelayedWakeLock$Factory;


# instance fields
.field private final delegateFactory:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory_Impl;->delegateFactory:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;

    return-void
.end method

.method public static create(Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;",
            ")",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory_Impl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory_Impl;-><init>(Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p0

    return-object p0
.end method

.method public static createFactoryProvider(Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;)Ldagger/internal/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;",
            ")",
            "Ldagger/internal/Provider;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory_Impl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory_Impl;-><init>(Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory_Impl;->delegateFactory:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Factory;->get(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-result-object p0

    return-object p0
.end method
