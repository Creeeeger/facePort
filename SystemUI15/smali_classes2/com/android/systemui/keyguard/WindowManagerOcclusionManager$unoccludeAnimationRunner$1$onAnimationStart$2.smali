.class public final Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $applier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final synthetic $target:Landroid/view/RemoteAnimationTarget;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;

.field public final synthetic this$1:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;Landroid/view/SyncRtSurfaceTransactionApplier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->$target:Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->this$1:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iput-object p4, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->$applier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;

    iget-object v0, v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->unoccludeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->$target:Landroid/view/RemoteAnimationTarget;

    iget-object v3, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;

    iget-object v4, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->this$1:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;->$applier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/16 v5, 0xfa

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2$1$1;

    invoke-direct {v5, v2, v3, v4, p0}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2$1$1;-><init>(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;Landroid/view/SyncRtSurfaceTransactionApplier;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2$1$2;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2$1$2;-><init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;)V

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->unoccludeAnimator:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
