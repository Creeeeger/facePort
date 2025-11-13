.class public Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/animation/LaunchableView;


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NOW_BAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static mIsLaunchPanelRunning:Z

.field public static mIsShowBouncerAnimation:Z

.field public static mWaitForReset:Z


# instance fields
.field public final delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

.field public mAffordancePivotY:I

.field public mAnimatorSet:Ljava/util/List;

.field public final mBackgroundCirclePaint:Landroid/graphics/Paint;

.field public mBlurPanelRadius:I

.field public mBlurPanelRoot:Landroid/widget/FrameLayout;

.field public mBlurPanelView:Landroid/view/View;

.field public mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mBottomIconAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;

.field public mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

.field public final mBottomIconScaleEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;

.field public mCanDismissLockScreen:Z

.field public mCenterX:I

.field public mCenterY:I

.field public mClockView:Landroid/view/View;

.field public mDeviceInteractive:Z

.field public final mDisplayObserver:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;

.field public mDrawBackgroundColor:I

.field protected mFling:Z

.field public final mForegroundCirclePaint:Landroid/graphics/Paint;

.field public final mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

.field public mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

.field public mImageScale:F

.field public mInitialPeekAnimator:Landroid/animation/Animator;

.field public final mInitialPeekAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;

.field public mInitialPeekDistance:F

.field public mInitialPeekShowing:Z

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsAnimFromNowBarRunning:Z

.field public mIsBlurBgApplied:Z

.field public mIsDown:Z

.field public mIsDrawBackgroundCircle:Z

.field public mIsLandScape:Z

.field public mIsNoUnlockNeeded:Z

.field public mIsNowBarExpanded:Z

.field public mIsNowBarVisible:Z

.field public mIsSecure:Z

.field public mIsShortcutForPhone:Z

.field public mIsShortcutLaunching:Z

.field public mIsTargetView:Z

.field public mIsTaskTypeShortcut:Z

.field public mIsTaskTypeShortcutEnabled:Z

.field public mIsTransitIconNeeded:Z

.field public mIsWhiteWallpaper:Z

.field public mJustClicked:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLastBlockingArea:Landroid/graphics/Rect;

.field public mLaunchThresholdAchieved:Z

.field public mLockIconContainerView:Landroid/view/View;

.field public mLockStarContainer:Landroid/view/View;

.field public mMaxBackgroundAlpha:I

.field public mMaxDimBackground:F

.field public mMaxForegroundAlpha:I

.field public mMaxTaskOnBackgroundAlpha:I

.field public mMusicContainer:Landroid/view/View;

.field public mNotificationPanelIconOnlyContainer:Landroid/view/View;

.field public mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public mNowBarVisibilitySizeAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mNowBarVisibilityXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mNowBarVisibilityYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mOldPanelBackgroundAlpha:I

.field public mPanelBackground:Landroid/view/View;

.field public mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

.field public mPanelDimView:Landroid/view/View;

.field public mPanelIcon:Landroid/widget/ImageView;

.field public mQsExpanded:Z

.field public mRectangleAlphaAnimator:Landroid/animation/Animator;

.field public final mRectangleAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;

.field public final mRectangleBounds:Landroid/graphics/Rect;

.field public mRectangleColor:I

.field public mRectangleDistanceCovered:F

.field public mRectangleIconAlpha:I

.field public final mRectangleIconBounds:Landroid/graphics/Rect;

.field public mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mRectangleIconMargin:I

.field public mRectangleIconScale:F

.field public mRectangleIconScaleAnimator:Landroid/animation/Animator;

.field public final mRectangleIconScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;

.field public mRectangleIconScaleStart:F

.field public mRectangleIconSize:I

.field public final mRectanglePaint:Landroid/graphics/Paint;

.field public mRectangleScaleAnimator:Landroid/animation/Animator;

.field public final mRectangleScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;

.field public mRectangleScaleStart:F

.field public mRectangleShrinkAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mRectangleShrinkAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;

.field public mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

.field public final mRectangleShrinkAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;

.field public mRight:Z

.field public mScreenHeight:I

.field public mScreenOnAnimator:Landroid/animation/Animator;

.field public final mScreenOnAnimatorListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;

.field public mScreenWidth:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mShortcutForCamera:Z

.field public mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

.field public final mShortcutLaunchAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;

.field public mShortcutLaunchAnimator:Landroid/animation/Animator;

.field public final mShortcutLaunchAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;

.field public mShortcutLaunchDistance:F

.field public final mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

.field public final mTaskOnCirclePaint:Landroid/graphics/Paint;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public mTouchCancelled:Z

.field protected mTouchHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$TouchHandlePolicy;

.field public mTrusted:Z

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVerticalScale:F

.field public mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

.field public final mVisibilityListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

.field public mWallpaperBrightness:I

.field public mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;


# direct methods
.method public static synthetic $r8$lambda$XHszcn7tbz374W8KEh3HYw03GJQ(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static -$$Nest$mresetOnTimeout(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardSecAffordanceView"

    const-string/jumbo v1, "resetOnTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->reset(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2e147b    # 0.68f

    invoke-direct {v0, v1, v4, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v1, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->NOW_BAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLaunchPanelRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLastBlockingArea:Landroid/graphics/Rect;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutForPhone:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresholdAchieved:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mQsExpanded:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTransitIconNeeded:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarExpanded:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsBlurBgApplied:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDrawBackgroundCircle:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsAnimFromNowBarRunning:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarVisible:Z

    const/16 p4, 0xff

    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mOldPanelBackgroundAlpha:I

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    const/high16 p4, 0x3e800000    # 0.25f

    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxDimBackground:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperBrightness:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mImageScale:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScale:F

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVisibilityListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDisplayObserver:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenOnAnimatorListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconScaleEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    new-instance v0, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    sget-object v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTaskOnCirclePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mForegroundCirclePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsSecure:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTrusted:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCanDismissLockScreen:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleColor()V

    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateDisplayParameters()V

    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string p1, "navibar"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz p1, :cond_1

    const p4, 0x3da3d70a    # 0.08f

    :cond_1
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxDimBackground:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setBackgroundCircleColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setForegroundCircleColor()V

    return-void
.end method

.method public static cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelAllAnimators()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method public final getColorCurvePreset()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskTypeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "getColorCurvePreset isTaskOn: "

    const-string v2, " wallpaperBrightness: "

    invoke-static {v1, v2, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperBrightness:I

    const-string v3, "KeyguardSecAffordanceView"

    invoke-static {v2, v3, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x78

    return p0

    :cond_1
    const/16 p0, 0x69

    return p0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperBrightness:I

    const/4 v1, -0x1

    const/16 v2, 0x6a

    if-eq v0, v1, :cond_5

    if-ltz v0, :cond_3

    const/16 p0, 0x1c

    if-gt v0, p0, :cond_3

    return v2

    :cond_3
    const/16 p0, 0x1d

    if-gt p0, v0, :cond_4

    const/16 p0, 0x4d

    if-gt v0, p0, :cond_4

    const/16 p0, 0x79

    return p0

    :cond_4
    const/16 p0, 0x7a

    return p0

    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz p0, :cond_6

    const/16 p0, 0x75

    return p0

    :cond_6
    return v2
.end method

.method public final getForegroundAlpha(I)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxForegroundAlpha:I

    int-to-float v0, p0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public final getShortcutType()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    if-eqz p0, :cond_0

    const-string p0, "RightShortcut"

    goto :goto_0

    :cond_0
    const-string p0, "LeftShortcut"

    :goto_0
    return-object p0
.end method

.method public final init()V
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$GeneralTouchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$TouchHandlePolicy;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method public final isSecure$1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsSecure:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTrusted:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCanDismissLockScreen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launchShortcut(FF)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchX:F

    sub-float/2addr p1, v5

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchY:F

    sub-float/2addr p2, v5

    float-to-double v5, p1

    float-to-double v7, p2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v2, p1

    mul-float/2addr v4, p2

    add-float/2addr v4, v2

    div-float/2addr v4, v5

    :goto_0
    const/high16 p1, -0x3a860000    # -4000.0f

    cmpl-float p1, v4, p1

    if-lez p1, :cond_9

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->isSecure$1()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isUnlockWaitNeeded(I)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    sput-boolean p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    if-nez p2, :cond_3

    if-nez p1, :cond_5

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isUnlockWaitNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move p1, v0

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    sget-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutForPhone:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInManagedCall()Z

    move-result p1

    xor-int/2addr p1, v0

    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    :cond_6
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    const-string/jumbo p1, "startShortcutLaunchAnimation"

    const-string p2, "KeyguardSecAffordanceView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    int-to-float v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p1, v4, v1

    aput v2, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x1c2

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    const-string/jumbo p1, "startShortcutLaunchAlphaAnimation"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    sget-boolean p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isUnlockWaitNeeded(I)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const/16 v1, 0xff

    :cond_8
    :goto_3
    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    const/16 v0, 0x9

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleScaleAnimation(F)V

    goto :goto_4

    :cond_9
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleShrinkAnimation()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_4
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIImageView;->onAttachedToWindow()V

    const-wide/16 v0, 0x100

    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDisplayObserver:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVisibilityListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->reset(Z)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateDisplayParameters()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIImageView;->onDetachedFromWindow()V

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDisplayObserver:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVisibilityListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mOldPanelBackgroundAlpha:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mOldPanelBackgroundAlpha:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ImageView;->setLeftTopRightBottom(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetBlurRadius(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSupportBlur()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDrawBackgroundCircle:Z

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTaskOnCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mForegroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean p3, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNowBarVisible:Z

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsBlurBgApplied:Z

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsBlurBgApplied:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarExpanded:Z

    if-nez p1, :cond_1

    const-class p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    const-wide/16 p2, 0x2bc

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onPostFinishedWakingUp()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    const-class v2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSupportBlur()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarExpanded:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string v2, "KeyguardSecAffordanceView"

    const-string/jumbo v3, "startScreenOnAnimator"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenOnAnimator:Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setIsDrawBackgroundCircle(Z)V

    const-string v2, "#2D2D30"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/16 v2, 0xff

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setDrawBackgroundAlpha(I)V

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenOnAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenOnAnimatorListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenOnAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_32

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_32

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$TouchHandlePolicy;

    if-eqz p0, :cond_32

    check-cast p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$GeneralTouchHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eq v4, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    const/4 v9, 0x0

    if-eqz v4, :cond_1b

    if-eq v4, v2, :cond_e

    if-eq v4, v3, :cond_4

    const/4 v0, 0x3

    if-eq v4, v0, :cond_3

    if-eq v4, v1, :cond_2

    goto/16 :goto_e

    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    goto/16 :goto_e

    :cond_3
    move v0, v6

    goto/16 :goto_6

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    if-eqz v3, :cond_5

    goto/16 :goto_e

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_6

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchX:F

    sub-float/2addr p1, v7

    goto :goto_0

    :cond_7
    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchX:F

    sub-float p1, v7, p1

    :goto_0
    cmpg-float v3, p1, v5

    if-gez v3, :cond_8

    move p1, v5

    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchY:F

    sub-float/2addr v3, v8

    cmpg-float v4, v3, v5

    if-gez v4, :cond_9

    goto :goto_1

    :cond_9
    move v5, v3

    :goto_1
    float-to-double v3, p1

    float-to-double v7, v5

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float p1, v3

    int-to-float v1, v1

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_31

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_c

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_2

    :cond_b
    iput-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    :cond_c
    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    add-float/2addr p1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_d

    sub-float/2addr p1, v3

    mul-float/2addr p1, v0

    add-float/2addr p1, v3

    :cond_d
    sub-float/2addr p1, v1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekShowing:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updatePanelViews(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_e

    :cond_e
    sput-boolean v6, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLaunchPanelRunning:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    if-eqz v0, :cond_f

    goto/16 :goto_e

    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->launchShortcut(FF)V

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v7, 0x2

    mul-long/2addr v3, v7

    cmp-long v0, v0, v3

    if-lez v0, :cond_12

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    goto :goto_5

    :cond_12
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetBlurRectangleView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    if-eqz v1, :cond_13

    goto :goto_5

    :cond_13
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    :cond_14
    :goto_5
    move v0, v2

    :goto_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    sput-boolean v6, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLaunchPanelRunning:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_15
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isUnlockWaitNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    const/16 v1, 0x3e9

    const-wide/16 v3, 0x5dc

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_17
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    if-eqz p1, :cond_18

    if-nez v0, :cond_19

    :cond_18
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleShrinkAnimation()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    filled-new-array {p1, v6}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    :cond_19
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz p1, :cond_31

    :cond_1a
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_e

    :cond_1b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    iget-object v4, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    const v10, 0x7f07047c

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconSize:I

    goto :goto_7

    :cond_1c
    const v10, 0x7f07047d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconSize:I

    :goto_7
    iput v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchX:F

    iput v8, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchY:F

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresholdAchieved:Z

    sput-boolean v6, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    sput-boolean v6, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNoUnlockNeeded(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v7, :cond_1e

    if-ge v7, v3, :cond_1e

    iget-object v8, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v8, v8, v7

    sget-object v10, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    goto :goto_8

    :cond_1d
    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelTransitDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1f

    move v4, v2

    goto :goto_9

    :cond_1e
    :goto_8
    const-string v4, "IllegalArgument : "

    const-string v8, "KeyguardShortcutManager"

    invoke-static {v7, v4, v8}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    move v4, v6

    :goto_9
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTransitIconNeeded:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    if-eqz v4, :cond_20

    const/16 v7, 0xcc

    goto :goto_a

    :cond_20
    move v7, v0

    :goto_a
    if-eqz v4, :cond_21

    const/16 v0, 0xff

    :cond_21
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    move v0, v7

    :cond_22
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScale:F

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41d00000    # 26.0f

    mul-float/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-nez v0, :cond_24

    goto :goto_b

    :cond_24
    sput-boolean v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLaunchPanelRunning:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->semSetBlurEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackground:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_b
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateRectangleIconDrawable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mClockView:Landroid/view/View;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->getClockView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mClockView:Landroid/view/View;

    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockIconContainerView:Landroid/view/View;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->getLockIconContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockIconContainerView:Landroid/view/View;

    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMusicContainer:Landroid/view/View;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-nez v0, :cond_29

    move-object v0, v9

    goto :goto_c

    :cond_29
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    :goto_c
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_d

    :cond_2a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    :cond_2b
    :goto_d
    iput-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMusicContainer:Landroid/view/View;

    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockStarContainer:Landroid/view/View;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockStarContainer:Landroid/view/View;

    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    const-string v0, "KeyguardSecAffordanceView"

    const-string/jumbo v4, "startInitialPeekAnimation"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    new-array v3, v3, [F

    aput v5, v3, v6

    aput v0, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageScale(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_30
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_31
    :goto_e
    return v2

    :cond_32
    :goto_f
    return v6
.end method

.method public final onUnlockedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsSecure:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTrusted:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCanDismissLockScreen:Z

    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->launchShortcut(FF)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final performClick()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->performClick()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final reset(Z)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLaunchPanelRunning:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    const-string v2, "KeyguardSecAffordanceView"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WaitForReset "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cancel reset keyguard not showing "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetBlurRectangleView()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "reset "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTransitIconNeeded:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsAnimFromNowBarRunning:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_6
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mQsExpanded:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updatePanelViews(F)V

    :cond_7
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleColor()V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetBlurRectangleView()V

    return-void
.end method

.method public final resetBlurRectangleView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLaunchPanelRunning:Z

    if-eqz v1, :cond_1

    const-string p0, "KeyguardSecAffordanceView"

    const-string v0, "dont reset panel anim running"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetBlurEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final sendBlockingTouchAreaToWallpaper(Landroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLastBlockingArea:Landroid/graphics/Rect;

    if-eq v0, p1, :cond_2

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "which"

    const/4 v1, 0x2

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "rightShortcut"

    goto :goto_0

    :cond_0
    const-string v0, "leftShortcut"

    :goto_0
    const-string v1, "id"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    const-string v1, "left"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "right"

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "top"

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bottom"

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const-string/jumbo v3, "samsung.android.wallpaper.blocktoucharea"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLastBlockingArea:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendBlockingTouchAreaToWallpaper rect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSecAffordanceView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    return-void
.end method

.method public final setBackgroundCircleColor()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDrawBackgroundCircle:Z

    if-eqz v0, :cond_8

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isReduceTransparencyEnabled:Z

    const/high16 v2, -0x1000000

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v4, :cond_1

    const v4, 0x7f060932

    goto :goto_0

    :cond_1
    const v4, 0x7f060933

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxBackgroundAlpha:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTaskOnCirclePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v4, :cond_4

    const v4, 0x7f060934

    goto :goto_2

    :cond_4
    const v4, 0x7f060935

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v0, :cond_5

    const-wide v3, 0x4044666666666667L    # 40.800000000000004

    goto :goto_3

    :cond_5
    const-wide v3, 0x405fe00000000000L    # 127.5

    :goto_3
    double-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxBackgroundAlpha:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTaskOnCirclePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    const/16 v0, 0x7f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxTaskOnBackgroundAlpha:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTaskOnCirclePaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final setDrawBackgroundAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxBackgroundAlpha:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final setForegroundCircleColor()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxForegroundAlpha:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isReduceTransparencyEnabled:Z

    const-string v1, "#FFFFFF"

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "#979797"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v1, :cond_1

    const-wide v1, 0x4059800000000000L    # 102.0

    goto :goto_1

    :cond_1
    const-wide v1, 0x405fe00000000000L    # 127.5

    :goto_1
    double-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxForegroundAlpha:I

    goto :goto_5

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SHORTCUT_BLUR_BG:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperBrightness:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    if-ltz v0, :cond_3

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_3

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x33

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxForegroundAlpha:I

    goto :goto_5

    :cond_3
    const/16 v1, 0x1d

    const/16 v2, 0x19

    const-string v3, "#000000"

    if-gt v1, v0, :cond_4

    const/16 v1, 0x4d

    if-gt v0, v1, :cond_4

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxForegroundAlpha:I

    goto :goto_5

    :cond_4
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxForegroundAlpha:I

    goto :goto_5

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v0, :cond_6

    const-string v0, "#2D2D30"

    :goto_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_6
    const-string v0, "#E4E4E4"

    goto :goto_2

    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v1, :cond_7

    const-wide v1, 0x4039800000000000L    # 25.5

    goto :goto_4

    :cond_7
    const-wide v1, 0x4049800000000000L    # 51.0

    :goto_4
    double-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxForegroundAlpha:I

    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mForegroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mForegroundCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final setImageAlpha(FZ)V
    .locals 9

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public final setImageAlpha(FZJJLandroid/view/animation/Interpolator;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsAnimFromNowBarRunning:Z

    if-eqz v0, :cond_1

    if-nez p8, :cond_1

    return-void

    :cond_1
    iget-object p8, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p8}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/high16 p8, 0x437f0000    # 255.0f

    mul-float/2addr p1, p8

    float-to-int p1, p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move p1, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v0

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsAnimFromNowBarRunning:Z

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez p2, :cond_c

    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_a

    if-eqz v0, :cond_4

    if-ne p2, p3, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getForegroundAlpha(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSupportBlur()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDrawBackgroundCircle:Z

    if-eqz p2, :cond_9

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTaskOnCirclePaint:Landroid/graphics/Paint;

    int-to-float p3, p1

    div-float/2addr p3, p8

    iget p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxTaskOnBackgroundAlpha:I

    int-to-float p5, p4

    mul-float/2addr p5, p3

    float-to-int p5, p5

    if-le p5, p4, :cond_7

    goto :goto_0

    :cond_7
    move p4, p5

    :goto_0
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    iget p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxBackgroundAlpha:I

    int-to-float p5, p4

    mul-float/2addr p3, p5

    float-to-int p3, p3

    if-le p3, p4, :cond_8

    goto :goto_1

    :cond_8
    move p4, p3

    :goto_1
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mForegroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getForegroundAlpha(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_a
    if-gtz p1, :cond_b

    const/4 p1, 0x1

    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsAnimFromNowBarRunning:Z

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result p2

    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p7, :cond_d

    sget-object p7, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :cond_d
    invoke-virtual {p1, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p7, -0x1

    cmp-long p0, p3, p7

    if-nez p0, :cond_e

    const-wide/16 p3, 0x12c

    :cond_e
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    new-instance p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setImageScale(FZ)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mImageScale:F

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    aput v1, p2, v2

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconScaleEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final setIsDrawBackgroundCircle(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDrawBackgroundCircle:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setBackgroundCircleColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setForegroundCircleColor()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mForegroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getForegroundAlpha(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setNowBarExpandMode(Z)V
    .locals 10

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarVisible:Z

    if-nez v0, :cond_0

    goto :goto_6

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenOnAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenOnAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsAnimFromNowBarRunning:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarExpanded:Z

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_4

    const-wide/16 v0, 0xc8

    :goto_2
    move-wide v4, v0

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x12c

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_5

    const-wide/16 v0, 0x32

    :goto_4
    move-wide v6, v0

    goto :goto_5

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_4

    :goto_5
    sget-object v8, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->NOW_BAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v9, 0x1

    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Z)V

    return-void

    :cond_6
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setNowBarExpandMode interactive: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsNowBarVisible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarVisible:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSecAffordanceView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setNowBarVisibility(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;Z)V
    .locals 10

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setNowBarVisibility old: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarVisible:Z

    const-string v3, ", new: "

    const-string v4, ", "

    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardSecAffordanceView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarVisible:Z

    if-ne v1, p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setNowBarVisibility same visibility skipped "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p4, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    if-eqz v3, :cond_8

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result p4

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result v1

    if-ne p4, v1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setNowBarVisibility same size "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilitySizeAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p3, :cond_3

    iget-boolean v2, p3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_3
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilitySizeAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilityXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_4

    iget-boolean v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_4
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilityXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilityYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_5

    iget-boolean v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_5
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilityYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutSideMargin()I

    move-result p3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutSideMargin()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarVisible:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutBottomMargin(Z)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutBottomMargin(Z)I

    move-result v4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarVisible:Z

    new-instance v5, Landroidx/dynamicanimation/animation/FloatValueHolder;

    int-to-float v6, p4

    invoke-direct {v5, v6}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v6, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    const/high16 v5, 0x43480000    # 200.0f

    const v7, 0x3f19999a    # 0.6f

    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v8

    iput-object v8, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilitySizeAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda12;

    invoke-direct {v8, p2, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda12;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result p2

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilitySizeAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;

    const/4 v9, 0x0

    invoke-direct {v8, p0, p2, v0, v9}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;ZZI)V

    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilitySizeAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v8, v1

    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    sub-int/2addr v2, p3

    add-int/2addr v2, v6

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    if-eqz p3, :cond_6

    sub-int p3, p4, v1

    add-int/2addr v2, p3

    :cond_6
    new-instance p3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    int-to-float v6, v6

    invoke-direct {p3, v6}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v6, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    iput-object p3, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilityXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;

    const/4 v8, 0x1

    invoke-direct {p3, p0, p2, v0, v8}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;ZZI)V

    invoke-virtual {v6, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilityXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p3

    if-eqz p1, :cond_7

    sub-int/2addr v4, v3

    sub-int p1, p3, v4

    sub-int/2addr p4, v1

    add-int/2addr p4, p1

    goto :goto_0

    :cond_7
    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    sub-int/2addr v1, p4

    sub-int p4, v3, v1

    :goto_0
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    int-to-float p3, p3

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iput-object p1, p3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilityYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;

    const/4 v1, 0x2

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;ZZI)V

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNowBarVisibilityYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p1, p4

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void

    :cond_8
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarVisible:Z

    if-eqz v0, :cond_9

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setNowBarVisibility animate: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mDeviceInteractive: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    const-string p3, ", isKeyguardVisible: "

    invoke-static {p1, p2, p3, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setRectangleBounds(F)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    mul-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v5, v1, v3

    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScale:F

    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconSize:I

    int-to-float v8, v7

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iget v9, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconMargin:I

    sub-int v10, v8, v7

    const/4 v11, 0x2

    div-int/2addr v10, v11

    sub-int v10, v9, v10

    mul-int/2addr v9, v11

    add-int/2addr v9, v8

    iget v12, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    int-to-float v13, v9

    cmpl-float v13, v12, v13

    if-lez v13, :cond_0

    float-to-int v12, v12

    invoke-static {v12, v9, v11, v10}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v10

    :cond_0
    sub-float v9, v5, v3

    div-float/2addr v9, v4

    add-float/2addr v9, v3

    div-int/lit8 v4, v8, 0x2

    int-to-float v12, v4

    sub-float/2addr v9, v12

    float-to-int v9, v9

    add-int v12, v9, v8

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_5

    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    int-to-float v11, v7

    sub-float v16, v11, p1

    cmpg-float v17, v16, v14

    if-gez v17, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v14, v16

    :goto_0
    add-float v16, v14, v11

    cmpl-float v11, v16, v11

    if-lez v11, :cond_2

    add-int/lit8 v11, v7, 0x4e

    int-to-float v11, v11

    move/from16 v16, v11

    :cond_2
    float-to-int v11, v14

    add-int/2addr v11, v10

    div-int/lit8 v10, v7, 0x2

    sub-int/2addr v10, v4

    if-ge v11, v10, :cond_3

    move v11, v10

    :cond_3
    add-int v4, v11, v8

    add-int/2addr v7, v8

    if-le v4, v7, :cond_4

    move/from16 v7, v16

    :goto_1
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_5

    :cond_4
    move/from16 v7, v16

    goto :goto_5

    :cond_5
    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    int-to-float v15, v4

    cmpl-float v17, p1, v15

    if-lez v17, :cond_6

    move v11, v15

    goto :goto_2

    :cond_6
    move/from16 v11, p1

    :goto_2
    sub-float v15, v11, v15

    cmpg-float v14, v15, v14

    if-gez v14, :cond_7

    const/high16 v14, -0x3d640000    # -78.0f

    goto :goto_3

    :cond_7
    move v14, v15

    :goto_3
    float-to-int v15, v11

    sub-int/2addr v15, v10

    const/4 v10, 0x2

    div-int/2addr v4, v10

    div-int/lit8 v10, v7, 0x2

    add-int/2addr v10, v4

    if-le v15, v10, :cond_8

    move v4, v10

    goto :goto_4

    :cond_8
    move v4, v15

    :goto_4
    sub-int v8, v4, v8

    mul-int/lit8 v7, v7, -0x1

    if-ge v8, v7, :cond_9

    move v7, v11

    goto :goto_1

    :cond_9
    move v7, v11

    move v11, v8

    :goto_5
    if-eqz v13, :cond_a

    iget v8, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    int-to-float v8, v8

    sub-float/2addr v8, v14

    goto :goto_6

    :cond_a
    move v8, v7

    :goto_6
    iput v8, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    iget v10, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    int-to-float v10, v10

    cmpl-float v10, v8, v10

    if-ltz v10, :cond_b

    goto :goto_7

    :cond_b
    move v1, v5

    :goto_7
    iput v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleStart:F

    iput v6, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleStart:F

    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    cmpl-float v5, v8, v2

    const-string v6, "KeyguardSecAffordanceView"

    const/16 v10, 0xcc

    const/16 v13, 0xff

    const/16 v15, 0x66

    if-ltz v5, :cond_f

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresholdAchieved:Z

    if-nez v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "updateOnThreshold launch achieved "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresholdAchieved:Z

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleScaleAnimation(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleIconScaleAnimation()V

    iput v13, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    if-eqz v2, :cond_c

    move v13, v15

    :cond_c
    iput v13, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    if-eqz v2, :cond_d

    move v10, v15

    :cond_d
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTransitIconNeeded:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateRectangleIconDrawable(Z)V

    :cond_e
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleAlphaAnimation(I)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v5, 0x6c

    invoke-virtual {v2, v5}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    goto :goto_b

    :cond_f
    cmpg-float v2, v8, v2

    if-gez v2, :cond_13

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresholdAchieved:Z

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "updateOnThreshold launch not achieved "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresholdAchieved:Z

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleScaleAnimation(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleIconScaleAnimation()V

    iput v15, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    move v13, v15

    :goto_8
    iput v13, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    if-eqz v2, :cond_11

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    move v10, v15

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateRectangleIconDrawable(Z)V

    move v15, v10

    :cond_12
    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleAlphaAnimation(I)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v5, 0x6d

    invoke-virtual {v2, v5}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    :cond_13
    :goto_b
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    float-to-int v5, v14

    float-to-int v3, v3

    float-to-int v6, v7

    float-to-int v1, v1

    invoke-virtual {v2, v5, v3, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v9, v4, v12}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final setRectangleColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDarkPanel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#262626"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    goto :goto_0

    :cond_0
    const-string v0, "#F2F2F2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final setUScaleAnimator(Landroid/view/View;FF)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mClockView:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    if-ge v0, p0, :cond_1

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    :cond_1
    mul-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-ne p1, v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    :cond_5
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->sendBlockingTouchAreaToWallpaper(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final startRectangleAlphaAnimation(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final startRectangleIconScaleAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleStart:F

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final startRectangleScaleAnimation(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleStart:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final startRectangleShrinkAnimation()V
    .locals 4

    const-string v0, "KeyguardSecAffordanceView"

    const-string/jumbo v1, "startRectangleShrinkAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageScale(FZ)V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekShowing:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1c2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final updateBgBlur(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/view/SemBlurInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getColorCurvePreset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateDisplayParameters()V
    .locals 6

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x10502c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07148f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    const v5, 0x3e4ccccd    # 0.2f

    if-nez v4, :cond_0

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    const v1, 0x7f070486

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    goto :goto_0

    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    const v1, 0x7f070487

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    const v1, 0x7f0713cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconMargin:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mForegroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final updatePanelViews(F)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    sub-float v0, p1, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelDimView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    div-float v3, v0, v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxDimBackground:F

    mul-float/2addr v3, v4

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    div-float v2, v0, v2

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    const/16 v3, 0x190

    if-le v2, v3, :cond_3

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    div-float v4, v0, v2

    sub-float v4, v3, v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_5

    move v4, v1

    :cond_5
    div-float v2, v0, v2

    const v5, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v2, v5

    sub-float v2, v3, v2

    const v5, 0x3f733333    # 0.95f

    cmpg-float v6, v2, v5

    if-gez v6, :cond_6

    move v2, v5

    :cond_6
    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleBounds(F)V

    return-void
.end method

.method public final updateRectangleIconDrawable(Z)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "KeyguardShortcutManager"

    const-string v3, "IllegalArgument : "

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ltz v0, :cond_2

    if-lt v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    if-eqz p1, :cond_1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelTransitDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0, v3, v2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDarkPanel(I)Z

    move-result p1

    xor-int/lit8 v8, p1, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->convertTaskDrawable(Landroid/graphics/drawable/Drawable;ZZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v0, :cond_6

    if-lt v0, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    if-eqz p1, :cond_5

    aget-object p1, v1, v0

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelTransitDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :cond_5
    aget-object p1, v1, v0

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {v0, v3, v2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object p1, v5

    :goto_3
    if-eqz p1, :cond_8

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_8
    move-object v1, v5

    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDarkPanel(I)Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v0, :cond_a

    if-lt v0, v4, :cond_9

    goto :goto_5

    :cond_9
    iget-object v2, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_a
    :goto_5
    invoke-static {v0, v3, v2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_6
    if-eqz v1, :cond_d

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isARShortcutIcon(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v6, :cond_c

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const v0, 0x7f06093a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_7

    :cond_c
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const v0, 0x7f06093b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_7
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    sget-object v3, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v2, p1, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_d
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_e
    :goto_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-super/range {p0 .. p3}, Lcom/android/systemui/widget/SystemUIImageView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    const-string v0, "navibar"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "KeyguardSecAffordanceView"

    if-nez v2, :cond_0

    const-string/jumbo v0, "updateWallpaperProperties: null"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_0
    const-wide/16 v5, 0x100

    :try_start_0
    invoke-virtual {v2, v5, v6}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getHSV()[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    ushr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v0, v0, 0xff

    int-to-double v7, v5

    const-wide v9, 0x406fe00000000000L    # 255.0

    div-double/2addr v7, v9

    int-to-double v5, v6

    div-double/2addr v5, v9

    int-to-double v11, v0

    div-double/2addr v11, v9

    const-wide v9, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v0, v7, v9

    const-wide v13, 0x4003333333333333L    # 2.4

    const-wide v15, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v17, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v19, 0x3faab1232f514a03L    # 0.05213270142180095

    if-gez v0, :cond_1

    div-double v7, v7, v17

    goto :goto_0

    :cond_1
    div-double/2addr v7, v15

    add-double v7, v7, v19

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    :goto_0
    cmpg-double v0, v5, v9

    if-gez v0, :cond_2

    div-double v5, v5, v17

    goto :goto_1

    :cond_2
    div-double/2addr v5, v15

    add-double v5, v5, v19

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    :goto_1
    cmpg-double v0, v11, v9

    if-gez v0, :cond_3

    div-double v11, v11, v17

    goto :goto_2

    :cond_3
    div-double/2addr v11, v15

    add-double v11, v11, v19

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    :goto_2
    const-wide v9, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v7, v9

    const-wide v9, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v5, v9

    add-double/2addr v5, v7

    const-wide v7, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v11, v7

    add-double/2addr v11, v5

    const-wide v5, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v11, v5

    if-lez v0, :cond_4

    invoke-static {v11, v12}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v5

    goto :goto_3

    :cond_4
    const-wide v5, 0x401f25f5682a5f56L    # 7.787068965517241

    mul-double/2addr v11, v5

    const-wide v5, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double/2addr v5, v11

    :goto_3
    const-wide/high16 v7, 0x405d000000000000L    # 116.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    sub-double/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-int v0, v5

    iput v0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateWallpaperProperties: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v4}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "brightness: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperBrightness:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " preset: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getColorCurvePreset()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " which: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getShortcutType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eq v0, v3, :cond_5

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_5
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsWhiteWallpaper:Z

    if-eqz v3, :cond_6

    const v0, 0x3da3d70a    # 0.08f

    goto :goto_6

    :cond_6
    const/high16 v0, 0x3e800000    # 0.25f

    :goto_6
    iput v0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxDimBackground:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setBackgroundCircleColor()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setForegroundCircleColor()V

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    return-void
.end method
