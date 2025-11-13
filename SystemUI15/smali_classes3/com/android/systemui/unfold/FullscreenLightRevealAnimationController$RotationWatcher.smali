.class public final Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$RotationWatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$RotationWatcher;->this$0:Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$RotationWatcher;->this$0:Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "FullscreenLightRevealAnimation#onRotationChanged"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;->Companion:Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;->bgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;->currentRotation:I

    if-eq v1, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;->currentRotation:I

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not being executed in the background!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    throw p0
.end method
