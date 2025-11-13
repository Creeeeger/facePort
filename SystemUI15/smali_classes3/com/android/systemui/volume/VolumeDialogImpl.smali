.class public final Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field public final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field public mActiveStream:I

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

.field public mAutomute:Z

.field public final mChangeVolumeRowTintWhenInactive:Z

.field public mConfigChanged:Z

.field public mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field public final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogImpl$7;

.field public final mCrossWindowBlurEnabledListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;

.field public mCsdDialog:Lcom/android/systemui/volume/CsdWarningDialog;

.field public final mCsdWarningDialogFactory:Lcom/android/systemui/volume/CsdWarningDialog$Factory;

.field public mDevicePosture:I

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field public mDialogCornerRadius:I

.field public final mDialogHideAnimationDurationMs:I

.field public mDialogRowsView:Landroid/view/ViewGroup;

.field public mDialogRowsViewBackground:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field public mDialogRowsViewContainer:Landroid/view/ViewGroup;

.field public final mDialogShowAnimationDurationMs:I

.field public mDialogTimeoutMillis:I

.field public mDialogView:Landroid/view/ViewGroup;

.field public mDialogWidth:I

.field public final mDynamic:Landroid/util/SparseBooleanArray;

.field public final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field public final mHasSeenODICaptionsTooltip:Z

.field public mHovering:Z

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mInteractor:Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;

.field public mIsAnimatingDismiss:Z

.field public mIsRingerDrawerOpen:Z

.field public final mIsTv:Z

.field public final mKeyguard:Landroid/app/KeyguardManager;

.field public final mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

.field public mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

.field mODICaptionsTooltipView:Landroid/view/View;

.field public mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

.field public mODICaptionsView:Landroid/view/ViewGroup;

.field public mOrientation:I

.field public mOriginalGravity:I

.field public mPrevActiveStream:I

.field public mRinger:Landroid/view/ViewGroup;

.field public mRingerAndDrawerContainer:Landroid/view/View;

.field public mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

.field public mRingerCount:I

.field public mRingerDrawerClosedAmount:F

.field public mRingerDrawerContainer:Landroid/view/ViewGroup;

.field public mRingerDrawerIconAnimatingDeselected:Landroid/widget/ImageView;

.field public mRingerDrawerIconAnimatingSelected:Landroid/widget/ImageView;

.field public final mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

.field public mRingerDrawerItemSize:I

.field public mRingerDrawerMute:Landroid/view/ViewGroup;

.field public mRingerDrawerMuteIcon:Landroid/widget/ImageView;

.field public mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

.field public mRingerDrawerNormal:Landroid/view/ViewGroup;

.field public mRingerDrawerNormalIcon:Landroid/widget/ImageView;

.field public mRingerDrawerVibrate:Landroid/view/ViewGroup;

.field public mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

.field public mRingerIcon:Landroid/widget/ImageButton;

.field public mRingerRowsPadding:I

.field public final mRows:Ljava/util/List;

.field public mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field public final mSafetyWarningLock:Ljava/lang/Object;

.field public final mSecureSettings:Ldagger/Lazy;

.field public mSelectedRingerContainer:Landroid/view/ViewGroup;

.field public mSelectedRingerIcon:Landroid/widget/ImageView;

.field public mSettingsIcon:Landroid/widget/ImageButton;

.field public mSettingsView:Landroid/view/View;

.field public final mShouldListenForJank:Z

.field public mShowA11yStream:Z

.field public final mShowLowMediaVolumeIcon:Z

.field public mShowVibrate:Z

.field public mShowing:Z

.field public mSilentMode:Z

.field public mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public mTopContainer:Landroid/view/View;

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public final mUseBackgroundBlur:Z

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mVolumeNavigator:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

.field public final mVolumePanelFlag:Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;

.field public final mVolumePanelNavigationInteractor:Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;

.field final mVolumeRingerIconDrawableId:I

.field final mVolumeRingerMuteIconDrawableId:I

.field public mWindow:Landroid/view/Window;

.field public mWindowGravity:I


# direct methods
.method public static -$$Nest$mshowH(Lcom/android/systemui/volume/VolumeDialogImpl;IZI)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "VolumeDialogImpl#showH"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showH r="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v3, v0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/systemui/volume/ConfigurableTexts;->mUpdateAll:Lcom/android/systemui/volume/ConfigurableTexts$2;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH(I)V

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInteractor:Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;

    iget-object p3, p3, Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;->repository:Lcom/android/systemui/volume/data/repository/VolumeDialogRepository;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    iget-object p3, p3, Lcom/android/systemui/volume/data/repository/VolumeDialogRepository;->_isDialogVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p3, v3, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateBackgroundForDrawerClosedAmount()V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object p2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    new-instance p3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;ZLcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Landroid/os/Looper;Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;Lcom/android/systemui/dump/DumpManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogManager;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;",
            "Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;",
            "Z",
            "Lcom/android/systemui/volume/CsdWarningDialog$Factory;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    iput v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerClosedAmount:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const v6, 0x7f080b17

    iput v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerIconDrawableId:I

    const v6, 0x7f080b16

    iput v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    new-instance v6, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogImpl$7;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    const v7, 0x7f1408fd

    invoke-direct {v6, p1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-object/from16 v8, p13

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-object/from16 v7, p17

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v7, p18

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move/from16 v7, p10

    iput-boolean v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShouldListenForJank:Z

    move-object v7, p2

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    move-object v7, p3

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-object v7, p4

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v7, p5

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v7, p6

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    move-object/from16 v7, p11

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdWarningDialogFactory:Lcom/android/systemui/volume/CsdWarningDialog$Factory;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.software.leanback"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.type.television"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsTv:Z

    const-string v3, "HasSeenODICaptionsTooltip"

    invoke-static {p1, v3, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowLowMediaVolumeIcon:Z

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mChangeVolumeRowTintWhenInactive:Z

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b001e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogShowAnimationDurationMs:I

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mUseBackgroundBlur:Z

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelNavigationInteractor:Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeNavigator:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSecureSettings:Ldagger/Lazy;

    const/16 v3, 0xbb8

    iput v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogTimeoutMillis:I

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelFlag:Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInteractor:Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "VolumeDialogImpl"

    move-object/from16 v4, p15

    invoke-static {v4, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    if-eqz v1, :cond_2

    const v1, 0x7f060acf

    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v3, 0x7f060ace

    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;II)V

    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCrossWindowBlurEnabledListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDimens()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:I

    iput-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    if-eqz v2, :cond_3

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePosture:I

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    goto :goto_1

    :cond_3
    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getVolumeFromProgress(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;Landroid/widget/SeekBar;I)I
    .locals 5

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    int-to-float p0, p0

    sub-float/2addr p1, v0

    sub-float v2, p0, v1

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-eqz v4, :cond_1

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, v0

    div-float/2addr p2, p1

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    invoke-static {p2, v1, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    :cond_1
    :goto_0
    float-to-int p0, v1

    return p0
.end method


# virtual methods
.method public final addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStringDescriptionResourceForRingerMode(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final addRow(IIZZI)V
    .locals 9

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding row for stream "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>(I)V

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p5

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object p2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addSliderHapticsToRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sSliderHapticFeedbackConfig:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sSliderTrackerConfig:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;)V

    iput-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    :goto_0
    iget-object p0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    invoke-static {p0, p1}, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder;->bind(Landroid/view/View;Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;)V

    return-void
.end method

.method public addSliderHapticsToRows()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addSliderHapticsToRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canDeliverProgressHapticsToStream(IZI)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, p1, :cond_0

    invoke-virtual {v0, p3, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->deliverOnProgressChangedHaptics(IZ)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final checkODICaptionsTooltip(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearInternalHandlerAfterTest()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "destroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogImpl$7;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final dismissH(I)V
    .locals 11

    const-string v0, "VolumeDialogImpl#dismissH"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mDialog.dismiss() reason: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dismissH: volume dialog possible in inconsistent state:mShowing="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mDialog==null?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v0

    :goto_2
    invoke-static {v5, v6, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    const-string p0, "dismissH: skipping dismiss because isAnimatingDismiss is true and showingStateInconsistent is false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInteractor:Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;

    iget-object v2, v2, Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;->repository:Lcom/android/systemui/volume/data/repository/VolumeDialogRepository;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v2, Lcom/android/systemui/volume/data/repository/VolumeDialogRepository;->_isDialogVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v3, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v2, :cond_5

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    int-to-long v5, v0

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowGravity:I

    const/4 v2, 0x3

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    const/4 v0, -0x1

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const-string v8, "dismiss"

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    int-to-long v9, v0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShouldListenForJank:Z

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    move-object v5, v3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;Ljava/lang/String;J)V

    :goto_5
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_9

    const-string v0, "SafetyWarning dismissed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_9
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_a
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-class p2, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string p2, "VolumeDialogImpl state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mShowing: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mIsAnimatingDismiss: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mActiveStream: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  mDynamic: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mAutomute: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mSilentMode: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v0, 0x0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-object p0
.end method

.method public final getDrawerIconViewForMode(I)Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getRingerDrawerOpenExtraSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public getSelectedRingerContainerDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find translation for stream "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getStringDescriptionResourceForRingerMode(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const p0, 0x7f131474

    return p0

    :cond_0
    const p0, 0x7f131476

    return p0

    :cond_1
    const p0, 0x7f131475

    return p0
.end method

.method public final getTranslationInDrawerForRingerMode(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    neg-int p0, p0

    mul-int/lit8 p0, p0, 0x2

    :goto_0
    int-to-float p0, p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    neg-int p0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getVisibleRowsExtraSize()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogWidth:I

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    add-int/2addr v0, p0

    mul-int/2addr v0, v2

    return v0
.end method

.method public getWindowGravity()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowGravity:I

    return p0
.end method

.method public final hideRingerDrawer()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getDrawerIconViewForMode(I)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateSelectedRingerContainerDescription(Z)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    return-void
.end method

.method public final init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog(I)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogImpl$7;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final initDialog(I)V
    .locals 12

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "initDialog: called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDimens()V

    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0028

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "VolumeDialogImpl"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOriginalGravity:I

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0d0553

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e3d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSecureSettings:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v1, "volume_dialog_dismiss_timeout"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogTimeoutMillis:I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e3f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mUseBackgroundBlur:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0e40

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsViewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0e41

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTopContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0e73

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0814b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a09e6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const v1, 0x7f0a09e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e57

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e58

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e43

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMute:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e45

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormal:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e49

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e44

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e4a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e46

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e48

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerIconDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0e42

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowVibrate:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0e47

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v1

    xor-int/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateSelectedRingerContainerDescription(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMute:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    invoke-direct {v1, p0, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormal:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v1, 0x1010435

    invoke-static {v0, v1, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x10104e2

    invoke-static {v1, v2, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a082f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    const v1, 0x7f0a0830

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0831

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0b38

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0b33

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0xa

    const v2, 0x7f080b55

    const v5, 0x7f080b55

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIZZI)V

    :cond_b
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v1, 0x3

    const v2, 0x7f080b5c

    const v5, 0x7f080b60

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIZZI)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    const v2, 0x7f080aba

    const v5, 0x7f080abb

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIZZI)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x4

    const v2, 0x7f0807fb

    const v5, 0x7f080b57

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIZZI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const v2, 0x108059c

    const v5, 0x108059c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIZZI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x6

    const v2, 0x7f080b58

    const v5, 0x7f080b58

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIZZI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const v2, 0x7f080b6e

    const v5, 0x7f080b6f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIZZI)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v7

    :goto_2
    if-ge v10, v9, :cond_d

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v2, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    iget v3, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    iget v4, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    iget-boolean v5, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    iget-boolean v6, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->defaultStream:Z

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v1, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v11}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setAccessibilityLiveRegion(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_f

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iput-object v1, v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mConfirmedTapListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda16;

    iget-object v1, v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_f

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureListener:Lcom/android/systemui/volume/CaptionsToggleImageButton$1;

    invoke-direct {v1, v3, v4, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v7}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final initDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071793

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogWidth:I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071794

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogCornerRadius:I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071796

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowVibrate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    return-void
.end method

.method public final initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 4

    iput p2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    iput p3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    iput p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    iput-boolean p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    iput-boolean p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->defaultStream:Z

    iget-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {p4}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    const p5, 0x7f0d0554

    const/4 p6, 0x0

    invoke-virtual {p4, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    iput-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    iget p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p4, p5}, Landroid/view/View;->setId(I)V

    iget-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const p5, 0x7f0a0e76

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    iget p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    mul-int/lit8 p5, p5, 0x14

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setId(I)V

    const/4 p4, 0x0

    const/16 p5, 0xa

    if-ne p2, p5, :cond_0

    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const v1, 0x7f0a0e79

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addSliderHapticsToRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const v0, 0x7f0a0e5a

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->number:Landroid/widget/TextView;

    iget-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogSeekBarAccessibilityDelegate;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogSeekBarAccessibilityDelegate;-><init>(I)V

    invoke-virtual {p4, v0}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iput-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    iget-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0814b8

    invoke-virtual {p4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x102000d

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a0e83

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressSolid:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0a0e82

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    check-cast p6, Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    :cond_1
    iput-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    iget-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p6, p4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const p6, 0x7f0a0e77

    invoke-virtual {p4, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageButton;

    iput-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    iget-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    if-eqz p6, :cond_2

    invoke-virtual {p6, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    iget-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    if-eqz p6, :cond_3

    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p6, p3}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object p3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    if-eqz p3, :cond_5

    iget p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-eq p4, p5, :cond_4

    new-instance p4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final initSettingsH(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final isLandscape()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRtl$1()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->unionViewBoundstoTouchableRegion(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->unionViewBoundstoTouchableRegion(Landroid/view/View;)V

    :cond_1
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:I

    return-void
.end method

.method public onPostureChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePosture:I

    return-void
.end method

.method public final onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 9

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStateChangedH() state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eq v0, v2, :cond_1

    if-ne v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v5, v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v5, v4, :cond_3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    const v8, 0x7f080b69

    const/4 v6, 0x1

    const v5, 0x7f080b68

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIZZI)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, p1, :cond_7

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateSelectedRingerContainerDescription(Z)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f13144a

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public final recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 3

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "recheckH ALL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recheckH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_3
    return-void
.end method

.method public removeDismissMessages()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final rescheduleTimeoutH()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v3, 0x3e80

    invoke-virtual {v0, v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    const/4 v3, 0x6

    const/16 v4, 0x1388

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v4, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v4, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogTimeoutMillis:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "rescheduleTimeout "

    const-string v3, " "

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public final setRingerMode(I)V
    .locals 10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "manual_ringer_toggle_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_0

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->scheduleTouchFeedback()V

    :cond_1
    move-object v3, v0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v5, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3, p1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "RingerGuidanceCount"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v6, 0xc

    if-le v3, v6, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v0, 0x104100a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    int-to-long v6, v1

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    int-to-long v8, p1

    long-to-double v6, v6

    long-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f131449

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v0, 0x1041009

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    add-int/2addr v3, v4

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v5, v3}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public final shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 5

    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    iget p2, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsTv:Z

    const/4 v3, 0x0

    if-nez v2, :cond_7

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0

    :cond_1
    if-ne p2, v2, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    if-ne v0, v4, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->defaultStream:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_4

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    return v1

    :cond_7
    return v3
.end method

.method public showCsdWarningH(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdDialog:Lcom/android/systemui/volume/CsdWarningDialog;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdWarningDialogFactory:Lcom/android/systemui/volume/CsdWarningDialog$Factory;

    invoke-interface {v2, p1, v1}, Lcom/android/systemui/volume/CsdWarningDialog$Factory;->create(ILjava/lang/Runnable;)Lcom/android/systemui/volume/CsdWarningDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdDialog:Lcom/android/systemui/volume/CsdWarningDialog;

    invoke-virtual {p1}, Lcom/android/systemui/volume/CsdWarningDialog;->show()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    if-lez p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "scheduleCsdTimeoutH "

    const-string v1, "ms "

    invoke-static {p2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final showRingerDrawer()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    sub-int/2addr v6, v4

    mul-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    sub-int/2addr v6, v4

    mul-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v0, v4, :cond_6

    const/16 v0, 0xaf

    goto :goto_5

    :cond_6
    const/16 v0, 0xfa

    :goto_5
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v2, v4, :cond_7

    const-wide/16 v8, 0x4b

    goto :goto_6

    :cond_7
    const-wide/16 v8, 0x0

    :goto_6
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_7
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateSelectedRingerContainerDescription(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    return-void
.end method

.method public toggleRingerDrawer(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showRingerDrawer()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideRingerDrawer()V

    :goto_0
    return-void
.end method

.method public final trimObsoleteH()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "trimObsoleteH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final unionViewBoundstoTouchableRegion(Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTopContainer:Landroid/view/View;

    if-ne p1, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getVisibleRowsExtraSize()I

    move-result v6

    if-le v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getVisibleRowsExtraSize()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v2, v5

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    float-to-int v6, v2

    float-to-int v7, v4

    aget p0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v8, v1, p0

    aget p0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int v9, p1, p0

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void
.end method

.method public final updateBackgroundForDrawerClosedAmount()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerClosedAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerClosedAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateRingerH()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_2

    if-ne v3, v6, :cond_1

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v6

    :goto_1
    xor-int/lit8 v3, v2, 0x1

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const v7, 0x7f131472

    if-eqz v3, :cond_a

    const v8, 0x7f131471

    if-eq v3, v6, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v0, :cond_6

    :cond_5
    move v5, v6

    :cond_6
    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerIconDrawableId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerIconDrawableId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f131473

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    const v1, 0x7f080b6c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 11

    const-string v0, "VolumeDialogImpl#updateRowsH"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRowsH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isRtl$1()Z

    move-result v0

    const/16 v1, 0x7fff

    const/4 v2, -0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v6, 0x1

    if-ne v4, p1, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_2
    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v8

    iget-object v9, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    move v6, v5

    :goto_3
    if-ne v6, v8, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    const/16 v5, 0x8

    :goto_4
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_5
    if-eqz v8, :cond_c

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isRtl$1()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v6, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v6, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_6
    iget-object v5, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_b

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isRtl$1()Z

    move-result v6

    if-nez v6, :cond_a

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_7

    :cond_a
    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_b
    :goto_7
    iget-object v5, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v8, 0x7f0814b7

    invoke-virtual {v6, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    iget-object v5, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    goto/16 :goto_1

    :cond_d
    if-le v0, v2, :cond_e

    if-ge v0, v1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_e

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateBackgroundForDrawerClosedAmount()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateSelectedRingerContainerDescription(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStringDescriptionResourceForRingerMode(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string p1, ", "

    invoke-static {v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f131470

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateVolumeRowH s="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v4, v2, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v2, :cond_2

    return-void

    :cond_2
    iput-object v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v3, :cond_3

    iput v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    :cond_3
    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    if-ne v3, v4, :cond_4

    const/4 v3, -0x1

    iput v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    :cond_4
    iget v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/4 v4, 0x1

    if-nez v3, :cond_5

    move v7, v4

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0xa

    if-ne v3, v8, :cond_6

    move v8, v4

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x2

    if-ne v3, v9, :cond_7

    move v10, v4

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_2
    if-ne v3, v4, :cond_8

    move v11, v4

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x4

    if-ne v3, v12, :cond_9

    move v12, v4

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x3

    if-ne v3, v13, :cond_a

    move v3, v4

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v10, :cond_b

    iget-object v14, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v14, v4, :cond_b

    move v14, v4

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    if-eqz v10, :cond_c

    iget-object v15, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v15, v15, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v15, :cond_c

    move v15, v4

    goto :goto_7

    :cond_c
    const/4 v15, 0x0

    :goto_7
    iget-object v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v9, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v9, v4, :cond_d

    move/from16 v16, v4

    goto :goto_8

    :cond_d
    const/16 v16, 0x0

    :goto_8
    if-ne v9, v13, :cond_e

    move/from16 v17, v4

    const/4 v4, 0x2

    goto :goto_9

    :cond_e
    const/4 v4, 0x2

    const/16 v17, 0x0

    :goto_9
    if-ne v9, v4, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    if-eqz v17, :cond_12

    if-nez v10, :cond_11

    if-eqz v11, :cond_10

    goto :goto_b

    :cond_10
    const/4 v3, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :cond_12
    if-eqz v4, :cond_13

    if-nez v10, :cond_11

    if-nez v11, :cond_11

    if-nez v12, :cond_11

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_13
    if-eqz v16, :cond_10

    if-eqz v12, :cond_14

    iget-boolean v4, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-nez v4, :cond_11

    :cond_14
    if-eqz v3, :cond_15

    iget-boolean v3, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v3, :cond_11

    :cond_15
    if-eqz v10, :cond_16

    iget-boolean v3, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-nez v3, :cond_11

    :cond_16
    if-eqz v11, :cond_10

    iget-boolean v3, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-eqz v3, :cond_10

    goto :goto_b

    :goto_c
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    if-eq v4, v5, :cond_17

    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_17
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMin()I

    move-result v5

    if-eq v4, v5, :cond_18

    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setMin(I)V

    :cond_18
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_19

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_1a

    :cond_19
    const/4 v9, 0x0

    :cond_1a
    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1b

    goto :goto_d

    :cond_1b
    move-object v12, v5

    goto :goto_e

    :cond_1c
    :goto_d
    const/4 v12, 0x0

    :goto_e
    invoke-static {v9, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    iget v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    if-nez v5, :cond_1e

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_10

    :cond_1e
    iget-object v12, v4, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    iget-object v4, v4, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_10

    :cond_1f
    iget-object v12, v4, Lcom/android/systemui/volume/ConfigurableTexts;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v17

    div-float v17, v17, v11

    div-float v11, v17, v12

    float-to-int v11, v11

    iget-object v12, v4, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/android/systemui/volume/ConfigurableTexts$1;

    invoke-direct {v12, v4, v5, v11}, Lcom/android/systemui/volume/ConfigurableTexts$1;-><init>(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v4, v4, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    iget-boolean v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-nez v4, :cond_20

    iget-boolean v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v5, :cond_21

    :cond_20
    if-nez v3, :cond_21

    const/4 v5, 0x1

    goto :goto_11

    :cond_21
    const/4 v5, 0x0

    :goto_11
    const v11, 0x7f080b5d

    const v12, 0x7f080b5e

    const v13, 0x7f080b6c

    if-eqz v3, :cond_22

    const v4, 0x10805ad

    goto :goto_12

    :cond_22
    if-eqz v14, :cond_23

    move v4, v13

    goto :goto_12

    :cond_23
    if-eqz v15, :cond_24

    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    goto :goto_12

    :cond_24
    iget-boolean v15, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v15, :cond_29

    if-eqz v7, :cond_25

    const v4, 0x7f080b58

    goto :goto_12

    :cond_25
    if-eqz v4, :cond_26

    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz v4, :cond_27

    :cond_26
    iget-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_28

    :cond_27
    move v4, v12

    goto :goto_12

    :cond_28
    move v4, v11

    goto :goto_12

    :cond_29
    if-eqz v4, :cond_2a

    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz v4, :cond_2b

    :cond_2a
    iget-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_2d

    :cond_2b
    iget-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_2c

    const v4, 0x7f080b61

    goto :goto_12

    :cond_2c
    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    goto :goto_12

    :cond_2d
    iget-boolean v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowLowMediaVolumeIcon:Z

    if-eqz v4, :cond_2e

    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    const/4 v7, 0x2

    mul-int/2addr v4, v7

    iget v15, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    add-int/2addr v15, v7

    if-ge v4, v15, :cond_2e

    const v4, 0x7f080b5f

    goto :goto_12

    :cond_2e
    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    :goto_12
    iget-object v7, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    iget-object v15, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    if-eqz v15, :cond_2f

    invoke-virtual {v15, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2f
    iget-object v15, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    if-eqz v15, :cond_30

    iget-object v9, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_30
    if-ne v4, v13, :cond_31

    const/4 v9, 0x3

    goto :goto_15

    :cond_31
    if-eq v4, v12, :cond_35

    iget v7, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    if-ne v4, v7, :cond_32

    goto :goto_14

    :cond_32
    if-eq v4, v11, :cond_34

    iget v7, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    if-eq v4, v7, :cond_34

    const v7, 0x7f080b5f

    if-ne v4, v7, :cond_33

    goto :goto_13

    :cond_33
    const/4 v9, 0x0

    goto :goto_15

    :cond_34
    :goto_13
    const/4 v9, 0x1

    goto :goto_15

    :cond_35
    :goto_14
    const/4 v9, 0x2

    :goto_15
    iput v9, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_40

    if-eqz v5, :cond_3f

    const v5, 0x7f131479

    const v7, 0x7f13147a

    const v9, 0x7f13147b

    if-eqz v10, :cond_3a

    if-eqz v14, :cond_36

    iget-object v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    :cond_36
    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v7, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v7, :cond_37

    const v7, 0x7f13147d

    goto :goto_16

    :cond_37
    const v7, 0x7f13147c

    :goto_16
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_38
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v9, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v9, :cond_39

    move v5, v7

    :cond_39
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_3a
    if-eqz v8, :cond_3b

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_3b
    iget-boolean v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v8, :cond_3e

    iget-boolean v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v8, :cond_3c

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v8, :cond_3c

    goto :goto_17

    :cond_3c
    iget-object v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v9, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v9, :cond_3d

    move v5, v7

    :cond_3d
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_3e
    :goto_17
    iget-object v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_3f
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_40
    :goto_18
    if-eqz v3, :cond_41

    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    :cond_41
    xor-int/lit8 v2, v3, 0x1

    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v5, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v5, :cond_42

    if-nez v10, :cond_42

    if-nez v3, :cond_42

    const/4 v7, 0x0

    goto :goto_19

    :cond_42
    iget v3, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move v7, v3

    :goto_19
    const-string v3, "VolumeDialogImpl#updateVolumeRowSliderH"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_43

    const/4 v2, 0x1

    goto :goto_1a

    :cond_43
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v1, v6, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    iget-boolean v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    if-eqz v2, :cond_44

    goto/16 :goto_20

    :cond_44
    iget-object v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-static {v3, v4, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getVolumeFromProgress(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;Landroid/widget/SeekBar;I)I

    move-result v3

    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_45

    const/4 v4, 0x1

    goto :goto_1b

    :cond_45
    const/4 v4, 0x0

    :goto_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v5, v8, v10

    if-gez v5, :cond_46

    const/4 v5, 0x1

    goto :goto_1c

    :cond_46
    const/4 v5, 0x0

    :goto_1c
    iget-object v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v8, :cond_48

    if-eqz v4, :cond_48

    if-eqz v5, :cond_48

    if-eqz v0, :cond_47

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "inGracePeriod"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    add-long/2addr v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_20

    :cond_48
    if-ne v7, v3, :cond_49

    if-eqz v8, :cond_49

    if-eqz v4, :cond_49

    goto/16 :goto_20

    :cond_49
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    int-to-float v5, v7

    iget v8, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    int-to-float v8, v8

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMin()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v8

    sub-float v10, v3, v9

    const/4 v11, 0x0

    cmpl-float v12, v0, v11

    if-eqz v12, :cond_4b

    cmpl-float v11, v10, v11

    if-nez v11, :cond_4a

    goto :goto_1d

    :cond_4a
    sub-float/2addr v5, v8

    div-float/2addr v5, v0

    mul-float/2addr v5, v10

    add-float/2addr v5, v9

    invoke-static {v5, v9, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    :cond_4b
    :goto_1d
    float-to-int v8, v9

    if-eq v2, v8, :cond_53

    iget-boolean v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsTv:Z

    if-eqz v0, :cond_4c

    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto/16 :goto_20

    :cond_4c
    iget-boolean v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_51

    if-eqz v4, :cond_51

    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    if-ne v0, v8, :cond_4d

    goto :goto_20

    :cond_4d
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    const-wide/16 v9, 0x50

    if-nez v0, :cond_4f

    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    const-string/jumbo v3, "progress"

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    iget-boolean v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShouldListenForJank:Z

    if-nez v0, :cond_4e

    const/4 v11, 0x0

    goto :goto_1e

    :cond_4e
    new-instance v11, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    const-string/jumbo v3, "update"

    move-object v0, v11

    move-object/from16 v1, p0

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;Ljava/lang/String;J)V

    :goto_1e
    if-eqz v11, :cond_50

    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1f

    :cond_4f
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    filled-new-array {v2, v8}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    const/4 v0, 0x0

    invoke-virtual {v6, v8, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->deliverOnProgressChangedHaptics(IZ)Z

    :cond_50
    :goto_1f
    iput v8, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_20

    :cond_51
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_52
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_53
    :goto_20
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->number:Landroid/widget/TextView;

    if-eqz v0, :cond_54

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_54
    return-void
.end method

.method public final updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-nez p2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mChangeVolumeRowTintWhenInactive:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x1010435

    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x1120028

    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x1010553

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int p2, v0

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x10104e2

    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x112018b

    invoke-static {v2, p0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/AlphaTintDrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    :cond_6
    iget-object p0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->number:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->number:Landroid/widget/TextView;

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    return-void
.end method
