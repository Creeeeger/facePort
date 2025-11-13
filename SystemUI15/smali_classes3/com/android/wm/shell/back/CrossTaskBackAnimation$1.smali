.class public final Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object p1, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    iget-object p1, p1, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/UiThreadContext;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Lcom/android/internal/view/AppearanceRegion;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->finishAnimation$1()V

    return-void
.end method
