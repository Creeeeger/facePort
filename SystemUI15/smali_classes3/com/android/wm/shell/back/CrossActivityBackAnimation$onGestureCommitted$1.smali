.class public final Lcom/android/wm/shell/back/CrossActivityBackAnimation$onGestureCommitted$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$onGestureCommitted$1;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$onGestureCommitted$1;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->onPostCommitProgress(F)V

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$onGestureCommitted$1;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->background:Lcom/android/wm/shell/back/BackAnimationBackground;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/UiThreadContext;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Lcom/android/internal/view/AppearanceRegion;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
