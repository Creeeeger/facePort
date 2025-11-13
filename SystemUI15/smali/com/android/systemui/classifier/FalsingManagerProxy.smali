.class public final Lcom/android/systemui/classifier/FalsingManagerProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/PluginManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/dump/DumpManager;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-direct {p1}, Lcom/android/systemui/classifier/SecFalsingManagerDummy;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    return-void
.end method


# virtual methods
.method public final addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final cleanupInternal()V
    .locals 0

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final isClassifierEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isFalseDoubleTap()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isFalseLongTap(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isFalseTap(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isFalseTouch(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isProximityNear()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isReportingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isSimpleTap()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isUnlockingDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSuccessfulUnlock()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final removeFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldEnforceBouncer()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method
