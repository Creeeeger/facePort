.class public final Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ambient/touch/scrim/ScrimController;
.implements Lcom/android/systemui/unfold/util/CallbackController;


# instance fields
.field public final mCallbacks:Ljava/util/HashSet;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/PowerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mPowerManager:Landroid/os/PowerManager;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mCallbacks:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final expand(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 4

    iget-boolean v0, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "com.android.systemui:SwipeUp"

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
