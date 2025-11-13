.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$6;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$6;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->BLUR_PRESET:[F

    const-string p1, "onAnimationFinished"

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->postFinishRunnableIfPossible(Ljava/lang/String;Z)V

    return-void
.end method
