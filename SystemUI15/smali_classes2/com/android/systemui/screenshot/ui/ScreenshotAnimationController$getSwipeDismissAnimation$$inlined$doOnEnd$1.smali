.class public final Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_isAnimating:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
