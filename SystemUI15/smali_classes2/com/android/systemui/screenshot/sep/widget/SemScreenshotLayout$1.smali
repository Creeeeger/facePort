.class public final Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "scaleAnimation: post a finishAnimation callback."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    new-instance v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
