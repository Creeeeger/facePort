.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 6

    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-boolean v4, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz v4, :cond_0

    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateImmersiveState(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-boolean v4, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    if-eqz v4, :cond_2

    iput-boolean v1, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->finish()V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput v1, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    const/high16 v2, -0x31000000

    iput v2, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mLastScrollPosition:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFirstScrollTouchedPosition:F

    :cond_6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v2, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    iget v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFirstScrollTouchedPosition:F

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;->updateScrollView(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mLastScrollPosition:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v4, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollVibrationThreshold:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_8

    iput v0, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mLastScrollPosition:F

    iget-object v0, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-boolean v1, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsScreenRecordingStarted:Z

    if-nez v1, :cond_8

    const/16 v1, 0x32

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_8
    move v1, v3

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_a
    :goto_2
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
