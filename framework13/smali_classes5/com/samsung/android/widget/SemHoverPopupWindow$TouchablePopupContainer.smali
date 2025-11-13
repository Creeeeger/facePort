.class public Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;
.super Landroid/widget/FrameLayout;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchablePopupContainer"
.end annotation


# static fields
.field private static final blacklist MSG_TIMEOUT:I = 0x1

.field private static final blacklist SLOP_FACTOR_POINT_IN_VIEW:I = -0x2

.field private static final blacklist TIMEOUT_DELAY:I = 0x7d0

.field private static final blacklist TIMEOUT_DISMISS_DELAY:I = 0x64


# instance fields
.field protected blacklist mContainerDismissHandler:Landroid/os/Handler;

.field private blacklist mDismissPopupRunnable:Ljava/lang/Runnable;

.field private blacklist mIsHoverExitCalled:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemHoverPopupWindow;
    .param p2, "context"    # Landroid/content/Context;

    .line 1748
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    .line 1749
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    .line 1740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1742
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    .line 1751
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;Landroid/os/Looper;Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    .line 1763
    return-void
.end method


# virtual methods
.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1787
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1789
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->pointInView(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    .line 1793
    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$3;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1798
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1800
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1801
    .local v1, "superRet":Z
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1802
    return v1

    .line 1806
    .end local v1    # "superRet":Z
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-$$Nest$fgetmToolType(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1807
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    .line 1812
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1767
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1769
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    .line 1773
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1774
    .local v0, "superRet":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-$$Nest$fgetmDismissTouchableHPWOnActionUp(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1775
    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$2;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1781
    :cond_1
    return v0
.end method

.method public blacklist resetTimeout()V
    .locals 4

    .line 1816
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1817
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1823
    :cond_1
    return-void
.end method
