.class Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private blacklist mCanceled:Z

.field private blacklist mIsTalkbackEnabled:Z

.field private blacklist mOpacityChangeModeEnabled:Z

.field final synthetic blacklist this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    .line 2499
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2500
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    return-void
.end method


# virtual methods
.method public blacklist get(ZZ)Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "talkbackEnabled"    # Z

    .line 2505
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mOpacityChangeModeEnabled:Z

    .line 2506
    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mIsTalkbackEnabled:Z

    .line 2507
    return-object p0
.end method

.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mCanceled:Z

    .line 2538
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2518
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 2519
    return-void

    .line 2521
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mOpacityChangeModeEnabled:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2522
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmButtonContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2523
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSeekBarContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2524
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mIsTalkbackEnabled:Z

    if-nez v0, :cond_2

    .line 2525
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSeekBarContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDisableOpacityChangeRunnable(Lcom/android/internal/widget/DecorCaptionView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2528
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmButtonContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2529
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSeekBarContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2530
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSeekBarContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDisableOpacityChangeRunnable(Lcom/android/internal/widget/DecorCaptionView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2532
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fputmVisibilityAnim(Lcom/android/internal/widget/DecorCaptionView;Landroid/animation/AnimatorSet;)V

    .line 2533
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2542
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2512
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setVisibility(I)V

    .line 2513
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mCanceled:Z

    .line 2514
    return-void
.end method
