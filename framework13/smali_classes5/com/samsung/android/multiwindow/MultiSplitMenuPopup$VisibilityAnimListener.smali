.class Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "MultiSplitMenuPopup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private blacklist mCanceled:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->this$0:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;-><init>(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->mCanceled:Z

    .line 743
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 730
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 731
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->this$0:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->-$$Nest$fputmVisibilityAnim(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;Landroid/animation/AnimatorSet;)V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->this$0:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->-$$Nest$fgetmMenuContainer(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->this$0:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->-$$Nest$fgetmSeekBarContainer(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->this$0:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->-$$Nest$mscheduleDismiss(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)V

    .line 738
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 747
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 723
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->this$0:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->-$$Nest$fgetmMenuContainer(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->this$0:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->-$$Nest$fgetmSeekBarContainer(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;->mCanceled:Z

    .line 726
    return-void
.end method
