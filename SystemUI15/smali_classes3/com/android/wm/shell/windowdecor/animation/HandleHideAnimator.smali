.class public final Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEnabled:Z

.field public final mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

.field public final mHandler:Landroid/os/Handler;

.field public final mHide:Landroid/animation/Animator;

.field public final mHideRunnable:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;

.field public mIsShowing:Z

.field public final mShow:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/widget/HandleView;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHideRunnable:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mIsShowing:Z

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_70:Landroid/view/animation/PathInterpolator;

    const-wide/16 v2, 0x3e8

    invoke-static {p2, v0, v2, v3, v1}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mShow:Landroid/animation/Animator;

    new-instance v4, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$1;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$1;-><init>(Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p2, p1, v2, v3, v1}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHide:Landroid/animation/Animator;

    new-instance p2, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$2;-><init>(Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
