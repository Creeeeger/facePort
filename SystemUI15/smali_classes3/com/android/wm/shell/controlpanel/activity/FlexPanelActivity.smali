.class public Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/wm/shell/controlpanel/GridUIManager;


# static fields
.field public static final mEditPanelItemSize:I

.field public static final mIsFold:Z

.field public static sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public static sTalkbackEnabled:Z


# instance fields
.field public i_22_25_0_1:Landroid/view/animation/Interpolator;

.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActions:Ljava/util/ArrayList;

.field public final mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mBasicGridViewHeight:I

.field public mBasicGridViewWidth:I

.field public final mBrightnessObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

.field public mBrightnessVolumeType:I

.field public mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

.field public final mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

.field public mCloseState:Z

.field public mCustomDimen:Ljava/util/Map;

.field public final mDesktopModeListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

.field public mDragEnteredTime:J

.field public mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public mEditActions:Ljava/util/ArrayList;

.field public mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

.field public mFadeIn:Landroid/view/animation/Animation;

.field public mFadeOut:Landroid/view/animation/Animation;

.field public mFirstScrollTouchedPosition:F

.field public mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

.field public mForceTouchPadRemoved:Z

.field public mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

.field public mGridLayout:Landroid/widget/GridLayout;

.field public mGridView:Landroid/widget/GridView;

.field public mImmersiveState:I

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsDimTouched:Z

.field public mIsDisplayTouchPad:Z

.field public mIsEditPanel:Z

.field public mIsMediaPanel:Z

.field public mIsResumeCalled:Z

.field public mIsScreenRecordingStarted:Z

.field public mLastScrollPosition:F

.field public mMediaController:Landroid/media/session/MediaController;

.field public mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public mMediaView:Landroid/widget/LinearLayout;

.field public final mModeEnableObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

.field public mOnDragAnimation:Z

.field public mOnDragEnded:Z

.field public mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public mPanelInit:Z

.field public mPanelView:Landroid/widget/LinearLayout;

.field public mPendingShowTouchPad:Z

.field public mPrevOrientation:I

.field public final mReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

.field public mScrollVibrationThreshold:I

.field public mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mSliderIn:Landroid/view/animation/Animation;

.field public mSliderOut:Landroid/view/animation/Animation;

.field public final mTalkbackObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

.field public final mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

.field public mToolbarTipPopup:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

.field public mTooltipInit:Z

.field public mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

.field public mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

.field public mUpperArea:Landroid/widget/LinearLayout;

.field public mWindowAttached:Z

.field public mX:I

.field public mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDragEnteredTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPendingShowTouchPad:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mWindowAttached:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsResumeCalled:Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mModeEnableObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTalkbackObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;

    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollVibrationThreshold:I

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsScreenRecordingStarted:Z

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    return-void
.end method

.method public static getRatioSize(DI)I
    .locals 2

    int-to-double v0, p2

    mul-double/2addr v0, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method public static setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    aput v3, v5, v0

    const-string/jumbo v2, "x"

    invoke-static {p2, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v0, [Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    new-array v3, v4, [F

    aput v2, v3, v6

    aput p1, v3, v0

    const-string/jumbo p1, "y"

    invoke-static {p2, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public final addEditPanelNone()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    const-string v2, "edit_panel_action_list"

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    :goto_0
    sget v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    :goto_1
    sget v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    sub-int/2addr v1, v0

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final buttonLoggingByString(ILjava/util/Map;)V
    .locals 2

    const-string v0, "MEDIA_PANEL"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "F003"

    goto :goto_0

    :cond_0
    const-string v0, "F002"

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "F005"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final checkActiveSession()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    filled-new-array {v1}, [I

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;[ILandroid/os/Handler;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkFromValueNone(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public final checkToValueNone(IZ)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x9

    return v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public final closeOperation()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const v1, 0x7f0101a2

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCloseState:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final createEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    const-wide v5, 0x4014800000000000L    # 5.125

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRatioLayoutParams(Landroid/content/Context;DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-static {v5, v6, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    const-wide v3, 0x4031cccccccccccdL    # 17.8

    const-wide v5, 0x400a666666666666L    # 3.3

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRatioLayoutParams(Landroid/content/Context;DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :goto_1
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getStringIdByActionValue(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f060556

    invoke-static {v3, v5, v4}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getResourceIdByActionValue(I)I

    move-result v7

    const v3, 0x7f0d0042

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-static/range {v4 .. v9}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->makeGridButton(Landroid/content/Context;Landroid/widget/RelativeLayout;IIZZ)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v2, 0x7f0a04a1

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide v2, 0x3ff3333333333333L    # 1.2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    invoke-static {v2, v3, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_3
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotationX(F)V

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide v4, 0x3ff199999999999aL    # 1.1

    invoke-static {v4, v5, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    invoke-static {v4, v5, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_2
    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    invoke-static {v2, v3, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result p0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final displayTouchPadIfNeed()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTouchPadEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPendingShowTouchPad:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mWindowAttached:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final executeAct(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "packageName"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    const-string v5, "MEDIA_PANEL"

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v6, "MEDIA_TOUCH_PAD_ENABLED"

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-nez v4, :cond_2

    const-string v4, "TOUCH_PAD_ENABLED"

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const v4, 0x7f131383

    goto :goto_0

    :cond_2
    const v4, 0x7f131384

    :goto_0
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    invoke-virtual {v0, v4, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->buttonLoggingByString(ILjava/util/Map;)V

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    if-ne v4, v1, :cond_5

    iget-boolean v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    if-eqz v4, :cond_4

    const v4, 0x7f1303b2

    goto :goto_1

    :cond_4
    const v4, 0x7f1306ab

    :goto_1
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    invoke-virtual {v0, v4, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->buttonLoggingByString(ILjava/util/Map;)V

    goto :goto_3

    :cond_5
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "F003"

    goto :goto_2

    :cond_6
    const-string v6, "F002"

    :goto_2
    invoke-static {v1, v0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getLoggingID(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v6, "F005"

    invoke-static {v1, v0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getLoggingID(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    :goto_3
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    const/4 v11, 0x0

    if-ne v4, v1, :cond_8

    const v1, 0x7f0a06f7

    invoke-virtual {v0, v1, v11}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBrightnessVolumeView(II)V

    goto/16 :goto_e

    :cond_8
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-ne v4, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "pms_notification_panel_brightness_adjustment"

    invoke-static {v1, v3, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, v1, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v7, :cond_9

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "false"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v16

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/16 v17, 0x0

    const/4 v14, 0x0

    const-string v1, "isSettingsChangesAllowed"

    move-object v15, v1

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_b

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v4, "true"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v1, v2

    goto :goto_4

    :cond_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v1, v11

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    move v1, v6

    :goto_4
    if-eq v1, v6, :cond_c

    if-nez v1, :cond_c

    const-string v1, "ControlPanelUtils"

    const-string v2, "getSettingsChangeAllowed:false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    const v1, 0x7f0a06c4

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBrightnessVolumeView(II)V

    goto/16 :goto_e

    :cond_d
    :goto_5
    const v1, 0x7f131373

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    :cond_e
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    if-ne v4, v1, :cond_18

    iget-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    const v3, 0x7f0a03eb

    if-nez v1, :cond_16

    iget-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    invoke-virtual {v0, v5, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    iput-boolean v11, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    iput-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    if-eqz v1, :cond_f

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    goto :goto_6

    :cond_f
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    :goto_6
    iput v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    const v4, 0x7f0d00f9

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    iget-boolean v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTooltipInit:Z

    const v5, 0x7f0700b1

    if-eqz v4, :cond_12

    const-string/jumbo v4, "tooltip_init"

    invoke-virtual {v0, v4, v11}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    iput-boolean v11, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTooltipInit:Z

    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mToolbarTipPopup:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    if-eqz v1, :cond_11

    iget v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide v9, 0x401b0a3d70a3d70aL    # 6.76

    invoke-static {v9, v10, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v4

    const v9, 0x7f0700b2

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v9

    add-int/2addr v9, v4

    const v4, 0x7f07173f

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    if-ne v9, v2, :cond_10

    iget v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    sub-int v4, v9, v4

    :cond_10
    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mToolbarTipPopup:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    iget v10, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    const-wide v12, 0x4052c00000000000L    # 75.0

    invoke-static {v12, v13, v10}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v10

    invoke-virtual {v9, v4, v10}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->requestShowPopUp(II)V

    goto :goto_7

    :cond_11
    iget v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    div-int/lit8 v9, v9, 0x2

    iget v10, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    invoke-static {v12, v13, v10}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v10

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v12

    sub-int/2addr v10, v12

    const v12, 0x7f07173e

    invoke-virtual {v0, v12}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v12

    sub-int/2addr v10, v12

    invoke-virtual {v4, v9, v10}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->requestShowPopUp(II)V

    :cond_12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupCommonPart()V

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-nez v4, :cond_13

    goto/16 :goto_e

    :cond_13
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    const v4, 0x7f0807ab

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setOrientation(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    sget v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setRowCount(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide v3, 0x3fc999999999999aL    # 0.2

    invoke-static {v3, v4, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide v3, 0x3ffb333333333333L    # 1.7

    invoke-static {v3, v4, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    const-wide v3, 0x4000cccccccccccdL    # 2.1

    invoke-static {v3, v4, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    const v2, 0x7f0700b4

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    const-wide v4, 0x404299999999999aL    # 37.2

    invoke-static {v4, v5, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_14
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v1, v11}, Landroid/widget/GridLayout;->setOrientation(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    sget v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setRotationX(F)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide v4, 0x405639999999999aL    # 88.9

    invoke-static {v4, v5, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v3

    invoke-direct {v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    const-wide/16 v3, 0x0

    const-wide v5, 0x3ff6666666666666L    # 1.4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    :goto_8
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->createEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto :goto_9

    :cond_15
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;

    invoke-direct {v2, v0, v12}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v11}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    goto/16 :goto_e

    :cond_16
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    goto :goto_a

    :cond_17
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    :goto_a
    iput v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;II)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->i_22_25_0_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/4 v5, 0x7

    invoke-direct {v4, v0, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e

    :cond_18
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    if-eq v4, v1, :cond_1c

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    if-ne v4, v1, :cond_19

    goto :goto_e

    :cond_19
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->values()[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v4

    array-length v5, v4

    :goto_b
    if-ge v11, v5, :cond_1b

    aget-object v6, v4, v11

    invoke-virtual {v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v7

    if-ne v7, v1, :cond_1a

    goto :goto_c

    :cond_1a
    add-int/2addr v11, v2

    goto :goto_b

    :cond_1b
    sget-object v6, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    :goto_c
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;->$SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/action/QuickSettingsAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/QuickSettingsAction;

    move-result-object v1

    goto :goto_d

    :pswitch_1
    invoke-static {}, Lcom/android/wm/shell/controlpanel/action/TouchPadAction;->createAction()Lcom/android/wm/shell/controlpanel/action/TouchPadAction;

    move-result-object v1

    goto :goto_d

    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;

    move-result-object v1

    goto :goto_d

    :pswitch_3
    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;

    move-result-object v1

    goto :goto_d

    :pswitch_4
    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;

    move-result-object v1

    goto :goto_d

    :pswitch_5
    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    move-result-object v1

    :goto_d
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;->doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V

    :cond_1c
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_2

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object p1
.end method

.method public final getActionArrayForStatusLogging(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public final getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;
    .locals 1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    return-object p0
.end method

.method public final getPixelSize(I)I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getPositionByAction(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final getPreferences(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V
    .locals 3

    const-string v0, "onActionArrayAdd list :"

    const-string v1, " addAt : "

    const-string v2, " addAction : "

    invoke-static {p2, v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlexPanelActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "basic_panel_action_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onGridViewChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    :cond_0
    const-string v0, "edit_panel_action_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->createEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final onActionArrayRemove(ILjava/lang/String;)V
    .locals 3

    const-string v0, "onActionArrayRemove list :"

    const-string v1, " removeAt : "

    const-string v2, "FlexPanelActivity"

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "basic_panel_action_list"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onGridViewChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    :cond_0
    const-string v0, "edit_panel_action_list"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->createEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V
    .locals 3

    const-string v0, "onActionArrayRemoveAdd list :"

    const-string v1, " removeAt : "

    const-string v2, " addAt : "

    invoke-static {p2, v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " addAction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlexPanelActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "basic_panel_action_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p3, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p3, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onGridViewChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    :cond_0
    const-string v0, "edit_panel_action_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p3, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->createEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mWindowAttached:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPendingShowTouchPad:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a04a3

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->executeAct(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f0a04a1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->executeAct(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPrevOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPrevOrientation:I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    if-nez v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_4

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "media_floating_only"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBasicPanel()V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupMediaPanel()V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    sget-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    if-eqz v0, :cond_6

    if-eq v2, p1, :cond_5

    const/4 v0, 0x3

    if-ne v0, p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    iput-boolean v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    :cond_6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iput-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sput-object p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    const-string v0, "flex_panel_pref"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayY(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    const v0, 0x7f0101a1

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeIn:Landroid/view/animation/Animation;

    const v0, 0x7f0101a2

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeOut:Landroid/view/animation/Animation;

    const v0, 0x7f0102ab

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderIn:Landroid/view/animation/Animation;

    const v0, 0x7f0102ac

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderOut:Landroid/view/animation/Animation;

    const v0, 0x7f0c0009

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->i_22_25_0_1:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "panel_init"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "tooltip_init"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTooltipInit:Z

    const v0, 0x7f070f23

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollVibrationThreshold:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPrevOrientation:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_1
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "packageName"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.EXPAND_FLEX_PANEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "F001"

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    const-string v3, "a"

    invoke-static {v4, v3, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string v3, "android.intent.action.AUTORUN_FLEX_PANEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    const-string v3, "b"

    invoke-static {v4, v3, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_1
    const-string v0, "FlexPanelActivity"

    const-string v3, "NullPointerException : "

    const-string v4, "ClassCastException : "

    const-string v5, "IllegalArgumentException : "

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "low_power"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_4

    const-string/jumbo v7, "sem_power_mode_limited_apps_and_home_screen"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    const/4 v7, 0x2

    if-eqz v6, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    const/4 v8, 0x5

    :try_start_0
    invoke-virtual {v6, v8}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->resizeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    new-array v8, v1, [Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v2

    invoke-static {p0, v6, v2, v2, v8}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object v6

    aget-object v8, v8, v2

    invoke-virtual {v6, v8}, Landroid/app/SemWallpaperColors;->get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_6

    move v7, v1

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_5

    :catch_2
    move-exception v4

    goto :goto_6

    :catchall_0
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    goto :goto_7

    :goto_4
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    const-string v0, "media_session"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_8

    :cond_7
    move-object v0, v3

    :goto_8
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;

    invoke-virtual {v4, v5, v3, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {p0, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    invoke-virtual {v0, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "media_floating_only"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {p0, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    if-nez p1, :cond_a

    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPendingShowTouchPad:Z

    :cond_a
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBasicPanel()V

    goto :goto_a

    :cond_b
    :goto_9
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupMediaPanel()V

    :goto_a
    const-string p1, "desktopmode"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_c

    if-ne v7, v1, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    const/16 p1, 0x10

    invoke-interface {p0, p1, p1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_c
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sput-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda5;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

    invoke-virtual {v0, v3}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    invoke-virtual {v0, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->clearController()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    if-eqz v0, :cond_8

    const-string v3, "TouchPadMediaPanel"

    const-string v4, "TouchPadMediaPanel clearController"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_8

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mToolbarTipPopup:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_9
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mWindowAttached:Z

    return-void
.end method

.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "FlexPanelActivity"

    const-string v3, "onDragAnimation start, from : "

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const v5, 0x7f0a04a1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, -0x1

    if-eqz v7, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    const v5, 0x7f0a04a3

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    if-ne v5, v8, :cond_2

    return v6

    :cond_2
    const/4 v7, 0x2

    const-wide/16 v9, 0x1c2

    const/4 v11, 0x1

    if-eq v4, v7, :cond_5

    const/4 v0, 0x4

    if-eq v4, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-boolean v0, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    iput-boolean v11, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDragEnteredTime:J

    sub-long v14, v12, v14

    cmp-long v7, v14, v9

    if-gez v7, :cond_6

    goto :goto_1

    :cond_6
    iput-wide v12, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDragEnteredTime:J

    sget-object v7, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v7}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    move-result v7

    invoke-virtual {v1, v5, v11}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkToValueNone(IZ)I

    move-result v5

    if-eq v7, v8, :cond_a

    if-eq v7, v5, :cond_a

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v8

    sget-object v12, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-ne v8, v12, :cond_7

    const/16 v8, 0xa

    if-lt v7, v8, :cond_a

    iget-object v8, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x5

    if-ne v8, v12, :cond_7

    goto :goto_1

    :cond_7
    iget-boolean v8, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    if-nez v8, :cond_9

    iget-boolean v0, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    if-eqz v0, :cond_8

    const-string v0, "panel_init"

    invoke-virtual {v1, v0, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    iput-boolean v6, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v7, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragAnimation(II)V

    goto :goto_1

    :cond_9
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;

    move-object/from16 v7, p2

    invoke-direct {v5, v1, v0, v7}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;Landroid/view/DragEvent;)V

    invoke-virtual {v3, v5, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    return v11

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "failed to Drag "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v6, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragEnded()V

    return v6
.end method

.method public final onDragAnimation(II)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->i_22_25_0_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    const/4 v3, 0x4

    const/16 v4, 0xa

    if-eqz v2, :cond_0

    if-lt p1, v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkFromValueNone(I)I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-ge p1, v4, :cond_3

    if-ge p2, v4, :cond_3

    if-ge p1, p2, :cond_1

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_2
    if-le v0, p2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$6;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_9

    :cond_3
    const/4 v2, 0x0

    if-lt p1, v4, :cond_7

    if-lt p2, v4, :cond_7

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz v5, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-ne v3, v4, :cond_4

    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkFromValueNone(I)I

    move-result p1

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkToValueNone(IZ)I

    move-result p2

    if-ge p1, p2, :cond_5

    add-int/lit8 v0, p1, -0xa

    :goto_3
    add-int/lit8 v2, p2, -0xa

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    goto :goto_3

    :cond_5
    add-int/lit8 v0, p1, -0xa

    :goto_4
    add-int/lit8 v2, p2, -0xa

    if-le v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_9

    :cond_7
    if-lt p1, v4, :cond_d

    if-ge p2, v4, :cond_d

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz v5, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkFromValueNone(I)I

    move-result v2

    new-instance v5, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;

    invoke-direct {v5, p0, v2, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    sub-int/2addr p1, v4

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_5
    if-le p1, p2, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_8
    sub-int/2addr v2, v4

    :goto_6
    if-lez v2, :cond_9

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {p1, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_9

    :cond_a
    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    sub-int/2addr v2, v4

    :goto_7
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    if-ge v2, p1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {p1, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    goto :goto_7

    :cond_b
    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v2, "basic_panel_action_list"

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;ILandroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_9

    :cond_d
    if-ge p1, v4, :cond_f

    if-lt p2, v4, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkToValueNone(IZ)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeEditPanelNone()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_8
    if-lt v0, p1, :cond_e

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->createEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/widget/GridLayout;ILandroid/animation/AnimatorSet;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_f
    :goto_9
    return-void
.end method

.method public final onDragEnded()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    move-result v0

    const-string v1, "onDragEnded, dropPosition : "

    const-string v2, "FlexPanelActivity"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    return-void

    :cond_1
    const/16 v3, 0xa

    if-lt v0, v3, :cond_2

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz v4, :cond_2

    sub-int/2addr v0, v3

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v3, "edit_panel_action_list"

    invoke-virtual {p0, v3, v0, v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    goto :goto_0

    :cond_2
    if-eq v0, v2, :cond_3

    const-string v2, "basic_panel_action_list"

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p0, v2, v0, v0, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeEditPanelNone()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "packageName"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    const v2, 0x7f131378

    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->buttonLoggingByString(ILjava/util/Map;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->updateStatusPreferences(Z)V

    :cond_4
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    return-void
.end method

.method public final onGridViewChanged()V
    .locals 12

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    const/16 v2, 0x11

    const/4 v3, -0x2

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    const-wide/high16 v4, 0x401b000000000000L    # 6.75

    const-wide v6, 0x40428ccccccccccdL    # 37.1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRatioLayoutParams(Landroid/content/Context;DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    if-nez v0, :cond_0

    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide v5, 0x401b0a3d70a3d70aL    # 6.76

    invoke-static {v5, v6, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setGravity(I)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v4, 0x5

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, v4, v5

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    const-wide v10, 0x401999999999999aL    # 6.4

    invoke-static {v10, v11, v9}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v9

    invoke-direct {v8, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    invoke-static {v6, v7, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v4

    iget v8, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    const-wide v9, 0x4012333333333333L    # 4.55

    invoke-static {v9, v10, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    iget v8, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide v9, 0x401851eb851eb852L    # 6.08

    invoke-static {v9, v10, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v8

    iget v11, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    invoke-static {v9, v10, v11}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10, v9, v10}, Landroid/widget/GridView;->setPadding(IIII)V

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    const-wide v3, 0x40263851eb851eb8L    # 11.11

    invoke-static {v3, v4, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v2

    if-le v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    iget v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    invoke-static {v6, v7, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v3, p0

    mul-int/2addr v1, v2

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    :cond_2
    return-void

    :array_0
    .array-data 8
        0x40374ccccccccccdL    # 23.3
        0x4042d9999999999aL    # 37.7
        0x404c0ccccccccccdL    # 56.1
        0x4051e00000000000L    # 71.5
        0x405639999999999aL    # 88.9
    .end array-data
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f0a04a3

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onClick(Landroid/view/View;)V

    return v1

    :cond_1
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x7f0a04a1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_3

    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-eq v3, v5, :cond_8

    sget-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-eq v3, v5, :cond_8

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a06ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v6, 0x7f080776

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v7, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {v7}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    const/high16 v8, 0x42340000    # 45.0f

    invoke-virtual {v7, v8}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v3, 0x7f0a03bd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f080777

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f070449

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result v3

    new-instance v7, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;

    invoke-direct {v7, p0, v0, v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;ILandroid/view/View;)V

    const/high16 v3, 0x100000

    invoke-virtual {v0, v6, v7, v6, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    const-string v3, "FlexPanelActivity"

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startDragAndDrop, mDraggedAction : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " draggedPosition : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x6c

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    const/16 p1, 0xa

    if-lt v2, p1, :cond_6

    const-string v0, "edit_panel_action_list"

    sub-int/2addr v2, p1

    invoke-virtual {p0, v0, v2, v2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    goto :goto_1

    :cond_6
    const-string p1, "basic_panel_action_list"

    invoke-virtual {p0, p1, v2, v2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->addEditPanelNone()V

    goto :goto_3

    :cond_7
    const-string/jumbo p1, "startDrag fail"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/GridLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->createEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    :goto_3
    return v1
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public final onPause()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mModeEnableObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTalkbackObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz v0, :cond_2

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "F004"

    const-string v2, "c"

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragEnded()V

    :cond_3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsResumeCalled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.COLLAPSE_FLEX_PANEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.screenrecorder.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.screenrecorder.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const-string v2, "caption-touch"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "flex_mode_panel_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mModeEnableObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enabled_accessibility_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTalkbackObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCloseState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public final removeEditPanelNone()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    if-ne v1, v2, :cond_0

    const-string v1, "edit_panel_action_list"

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemove(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeTouchPad(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x64

    if-eqz p1, :cond_1

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadBg:Landroid/view/View;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0101a2

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mCenterText:Landroid/view/View;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadLine:Landroid/view/View;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/TouchPad;I)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    if-eqz v3, :cond_6

    if-eqz p1, :cond_3

    iget-object p1, v3, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v3, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, v3, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-interface {p1, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v0, v3, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    iput-object v0, v3, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object p1, v3, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;->onFadeOutAnimation()V

    :cond_4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;)V

    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    :cond_6
    return-void
.end method

.method public final resizeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    if-nez v1, :cond_a

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    int-to-float v9, v5

    div-float v10, v9, v7

    mul-int v11, v4, v1

    mul-int v12, v2, v5

    if-le v11, v12, :cond_1

    int-to-float v6, v1

    div-float/2addr v6, v9

    goto :goto_0

    :cond_1
    int-to-float v9, v2

    div-float v6, v9, v6

    :goto_0
    const-string v9, "metricsHeight="

    const-string v11, " metricsWidth="

    const-string v12, "FlexPanelActivity"

    invoke-static {v1, v2, v9, v11, v12}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v9, v2

    div-float/2addr v9, v6

    int-to-float v11, v1

    div-float/2addr v11, v6

    div-float v6, v9, v7

    sub-float/2addr v8, v6

    const/4 v6, 0x0

    cmpg-float v13, v8, v6

    if-gez v13, :cond_2

    move v8, v6

    :cond_2
    div-float v7, v11, v7

    sub-float/2addr v10, v7

    cmpg-float v7, v10, v6

    if-gez v7, :cond_3

    goto :goto_1

    :cond_3
    move v6, v10

    :goto_1
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-ne v4, v7, :cond_4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-ne v5, v7, :cond_4

    const-string v1, "It doesn\'t need to crop bitmap"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v10, 0x1

    if-lt v7, v10, :cond_9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-lt v7, v10, :cond_9

    if-lt v2, v10, :cond_9

    if-ge v1, v10, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, v4, :cond_7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    if-le v2, v5, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "Cropping..."

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :cond_7
    :goto_2
    const-string v0, "Calculated crop size error"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    move-object v0, v3

    goto :goto_5

    :cond_9
    :goto_4
    const-string v0, "Math.round(width) < 1 || Math.round(height) < 1 || mMetricsWidth < 1 || mMetricsHeight < 1"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_5
    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final returnToMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setPreferences(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setupBasicPanel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    const v1, 0x7f0d0050

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupCommonPart()V

    const-string v1, "MEDIA_TOUCH_PAD_ENABLED"

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    const-string v1, "MEDIA_PANEL"

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    return-void
.end method

.method public final setupBrightnessVolumeView(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeType:I

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->callOnClick()Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->callOnClick()Z

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget-object v1, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda14;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeType:I

    return-void
.end method

.method public final setupCommonPart()V
    .locals 11

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    sget-object v0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->finish()V

    :cond_1
    iput v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0a04a1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    const v0, 0x7f0a0ea4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "FlexPanelActivity"

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_4

    const-string/jumbo v5, "sem_power_mode_limited_apps_and_home_screen"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    const/4 v5, 0x5

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->resizeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v3, v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IllegalArgumentException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ClassCastException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NullPointerException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const v0, 0x7f0a0682

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04a2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    const v0, 0x7f0a0de8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

    new-instance v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    iget-boolean v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    invoke-direct {v0, p0, v3}, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnDragListener:Landroid/view/View$OnDragListener;

    const-string v3, "basic_panel_action_list"

    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "edit_panel_action_list"

    invoke-virtual {p0, v5, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v4

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v7, "panel_init"

    if-eq v6, v4, :cond_5

    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v5, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v6, v4, :cond_6

    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    :cond_6
    :goto_5
    iget-boolean v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    if-eqz v4, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/GridItems;->ACTIVITY_BASIC:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/GridItems;->ACTIVITY_EDIT_BASIC:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v3, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    invoke-virtual {p0, v5, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_a

    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v8}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v8

    if-ne v7, v8, :cond_b

    move v4, v2

    :cond_b
    sget-object v7, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_c

    iget-object v9, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-virtual {p0, v5, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_f

    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    if-nez v4, :cond_11

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_a
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onGridViewChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    const-wide/16 v7, 0x0

    const-wide v9, 0x4000cccccccccccdL    # 2.1

    const-wide/16 v3, 0x0

    const-wide v5, 0x4000cccccccccccdL    # 2.1

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    const-wide v1, 0x3ff3333333333333L    # 1.2

    invoke-static {v1, v2, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getRatioSize(DI)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    :cond_13
    return-void
.end method

.method public final setupMediaPanel()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isSupportButton(Landroid/media/session/MediaController;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBasicPanel()V

    return-void

    :cond_0
    const-string v0, "MEDIA_PANEL"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    const v1, 0x7f0d0100

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupCommonPart()V

    const v1, 0x7f0a06c3

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    const v2, 0x7f0a06c2

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->onMediaControllerConnected(Landroid/media/session/MediaController;)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$14;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$14;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    const-string v1, "MEDIA_TOUCH_PAD_ENABLED"

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setupTouchPadMediaPanel()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    const v1, 0x7f0d0533

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupCommonPart()V

    const v1, 0x7f0a0d73

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    const v2, 0x7f0a0d72

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->onMediaControllerConnected(Landroid/media/session/MediaController;)V

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$15;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$15;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v1, "MEDIA_TOUCH_PAD_ENABLED"

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    return-void
.end method

.method public final updateStatusPreferences(Z)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "basic_panel_action_list"

    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArrayForStatusLogging(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "edit_panel_action_list"

    invoke-virtual {p0, v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArrayForStatusLogging(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v5}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "TOUCH_PAD_ENABLED"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Touchpad on"

    goto :goto_1

    :cond_0
    const-string v3, "Touchpad off"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getLoggingID(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "F006"

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move p0, v0

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception p0

    move v6, v0

    move-object v0, p0

    move p0, v6

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_5
    const-string v0, "F007"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    return-void
.end method
