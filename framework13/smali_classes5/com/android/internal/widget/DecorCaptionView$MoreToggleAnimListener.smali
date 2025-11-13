.class Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;
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
    name = "MoreToggleAnimListener"
.end annotation


# instance fields
.field private blacklist mCanceled:Z

.field private blacklist mIsVisibleAnim:Z

.field private blacklist mToPrimarySet:Z

.field final synthetic blacklist this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mget(Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;ZZ)Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->get(ZZ)Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    .line 2700
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    return-void
.end method

.method private blacklist get(ZZ)Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;
    .locals 0
    .param p1, "toPrimarySet"    # Z
    .param p2, "isVisibleAnim"    # Z

    .line 2706
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mToPrimarySet:Z

    .line 2707
    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mIsVisibleAnim:Z

    .line 2708
    return-object p0
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mCanceled:Z

    .line 2791
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2742
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 2743
    return-void

    .line 2746
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mIsVisibleAnim:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 2747
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMinimize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2748
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMaximize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2749
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmClose(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2750
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmHeaderUnpin(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2751
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSplit(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2752
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmOpacity(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2753
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDivider(Lcom/android/internal/widget/DecorCaptionView;)Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setAlpha(F)V

    .line 2754
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMinimize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2755
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMaximize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2756
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmClose(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2757
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmHeaderUnpin(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2758
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSplit(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2759
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmOpacity(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2760
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDivider(Lcom/android/internal/widget/DecorCaptionView;)Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setTranslationX(F)V

    .line 2761
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fputmMoreVisibleAnim(Lcom/android/internal/widget/DecorCaptionView;Landroid/animation/AnimatorSet;)V

    goto/16 :goto_1

    .line 2763
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mToPrimarySet:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 2764
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSecondaryContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2765
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmHeaderUnpin(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2766
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmHeaderUnpin(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2767
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSplit(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2768
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSplit(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2769
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v0, :cond_2

    .line 2770
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmOpacity(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2771
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmOpacity(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2773
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDivider(Lcom/android/internal/widget/DecorCaptionView;)Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setAlpha(F)V

    .line 2774
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDivider(Lcom/android/internal/widget/DecorCaptionView;)Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setVisibility(I)V

    goto :goto_0

    .line 2776
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmPrimaryContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2777
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMinimize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2778
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMinimize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2779
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMaximize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2780
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMaximize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2781
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmClose(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2782
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmClose(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2784
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fputmMoreInvisibleAnim(Lcom/android/internal/widget/DecorCaptionView;Landroid/animation/AnimatorSet;)V

    .line 2786
    :goto_1
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2795
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mCanceled:Z

    .line 2715
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mIsVisibleAnim:Z

    if-eqz v1, :cond_2

    .line 2716
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->mToPrimarySet:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2717
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmPrimaryContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2718
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMinimize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2719
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMinimize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2720
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMaximize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2721
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmMaximize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2722
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmClose(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2723
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmClose(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2725
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSecondaryContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2726
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmHeaderUnpin(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2727
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmHeaderUnpin(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2728
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSplit(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2729
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmSplit(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2730
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v1, :cond_1

    .line 2731
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmOpacity(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2732
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmOpacity(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2734
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDivider(Lcom/android/internal/widget/DecorCaptionView;)Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setAlpha(F)V

    .line 2735
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDivider(Lcom/android/internal/widget/DecorCaptionView;)Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setVisibility(I)V

    .line 2738
    :cond_2
    :goto_0
    return-void
.end method
