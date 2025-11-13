.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;


# instance fields
.field public final mAllowDiagonalScrolling:Z

.field public mAllowDiagonalScrollingSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mAllowDiagonalScrollingTitle:Landroid/widget/TextView;

.field public mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

.field public final mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

.field public final mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

.field public final mContext:Landroid/content/Context;

.field public mDoneButton:Landroid/widget/Button;

.field final mDraggableWindowBounds:Landroid/graphics/Rect;

.field public mEditButton:Landroid/widget/TextView;

.field public mFullScreenButton:Landroid/widget/ImageButton;

.field public final mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

.field public mIsVisible:Z

.field public mLargeButton:Landroid/widget/ImageButton;

.field public final mMagnificationCapabilityObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

.field public mMagnifierSizeTv:Landroid/widget/TextView;

.field public mMediumButton:Landroid/widget/ImageButton;

.field public final mPanelDelegate:Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;

.field final mParams:Landroid/view/WindowManager$LayoutParams;

.field public mScale:F

.field public final mScreenOffReceiver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mSeekBarMagnitude:I

.field public mSettingView:Landroid/widget/LinearLayout;

.field public final mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

.field public mSingleTapDetected:Z

.field public mSmallButton:Landroid/widget/ImageButton;

.field public final mWindowInsetChangeRunnable:Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowScaleChangeObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;

.field public mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

.field public mZoomTv:Landroid/widget/TextView;


# direct methods
.method public static -$$Nest$msetMagnifierSize(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_change_magnification_size"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "accessibility_magnification_mode"

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    check-cast p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    check-cast p1, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v0, p1, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v1, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v3, v2}, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/Magnification$4;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    check-cast v1, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    iget-object v1, v1, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    iget-object v4, v1, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget v1, v1, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    check-cast v4, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v5, v4, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v6, v5, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v7, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v1, p1, v8}, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/Magnification$4;III)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_WINDOW_SIZE_SELECTED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    iget-object v4, v5, Lcom/android/systemui/accessibility/Magnification;->mA11yLogger:Lcom/android/systemui/accessibility/AccessibilityLogger;

    iget-object v4, v4, Lcom/android/systemui/accessibility/AccessibilityLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v1, v5, v6, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v0, v4, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    check-cast v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    iget-object v1, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    check-cast v1, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v2, v1, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v2, v2, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v5, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v0, v4, v6}, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/Magnification$4;III)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1300d2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1300d0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1300cf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSingleTapDetected:Z

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrolling:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScale:F

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mPanelDelegate:Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScreenOffReceiver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowScaleChangeObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f14055d

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    iput-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string p2, "accessibility_allow_diagonal_scrolling"

    const/4 p3, 0x1

    const/4 v1, -0x2

    invoke-interface {p4, p2, p3, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p2

    if-ne p2, p3, :cond_0

    move v0, p3

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrolling:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    const/4 v6, -0x2

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7e8

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p4, 0x33

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const p4, 0x7f1300d8

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p4

    if-nez p4, :cond_1

    sget-boolean p4, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    if-nez p4, :cond_1

    const/4 p4, 0x3

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iput-boolean p3, p2, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    const-string p3, "MagnificationModeSwitch"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowInsetChangeRunnable:Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->inflateView()V

    new-instance p2, Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMagnificationCapabilityObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

    return-void
.end method

.method public static applyUpToLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    div-float/2addr p2, p0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v2, 0x3ff4ccccc0000000L    # 1.2999999523162842

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "WindowMagnificationSettings"

    const-string p1, "parameter error"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getDraggableWindowBounds$1()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v2, v2, v0, v4}, Landroid/graphics/Rect;->inset(IIII)V

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070913

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v3, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    return-object v3
.end method

.method public getSettingView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final hideSettingPanel(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMagnificationCapabilityObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScreenOffReceiver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    check-cast p1, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    iget-object p1, p1, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    iget-object v1, p1, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget p1, p1, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    check-cast v1, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v2, v1, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v2, v2, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v3, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v0, v4}, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/Magnification$4;IZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowScaleChangeObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final inflateView()V
    .locals 6

    sget-boolean v0, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0579

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d057a

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mPanelDelegate:Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0678

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a067b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSmallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0677

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMediumButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0676

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLargeButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0670

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDoneButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0679

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0671

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0672

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0674

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a067d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    iget v3, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarChangeMagnitude:I

    int-to-float v3, v3

    sget v4, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v0, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    iget v0, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarChangeMagnitude:I

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSeekBarMagnitude:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v3, "accessibility_display_magnification_scale"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getFloatForUser(Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScale:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->setScaleSeekbar(F)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    new-instance v3, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V

    iget-object v0, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;

    iput-object v3, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSmallButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f1300d6

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMediumButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f1300cc

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLargeButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f1300c7

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f1300d7

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    new-instance v3, Lcom/android/systemui/accessibility/WindowMagnificationSettings$SliderA11yDelegate;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$SliderA11yDelegate;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScale:F

    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setSeekbarStateDescription(F)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    new-instance v3, Lcom/android/systemui/accessibility/WindowMagnificationSettings$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$6;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMagnifierSizeTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a067c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070918

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->applyUpToLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->applyUpToLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMagnifierSizeTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->applyUpToLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->applyUpToLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->applyUpToLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0675

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0673

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrolling:Z

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSmallButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMediumButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLargeButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDoneButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public isDiagonalScrollingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrolling:Z

    return p0
.end method

.method public final moveButton$1(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;FF)V

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final onDrag(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton$1(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onFinish()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSingleTapDetected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->showSettingPanel(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSingleTapDetected:Z

    return v1
.end method

.method public final onLongPressed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onSingleTap(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSingleTapDetected:Z

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public setDiagonalScrolling(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "accessibility_allow_diagonal_scrolling"

    const/4 v2, -0x2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    check-cast v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    iget-object v1, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    check-cast v1, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v2, v1, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v2, v2, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v3, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, p1, v4}, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/Magnification$4;IZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final setScaleSeekbar(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSeekBarMagnitude:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    iget-object v0, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    iget-object p1, p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setProgress(I)V

    return-void
.end method

.method public final showSettingPanel(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    const/4 v1, 0x0

    const-string v2, "accessibility_display_magnification_scale"

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->updateUIControlsIfNeeded()V

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScale:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->setScaleSeekbar(F)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->getDraggableWindowBounds$1()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getFloatForUser(Ljava/lang/String;FI)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    div-float/2addr v3, v5

    float-to-int v3, v3

    if-gez v3, :cond_1

    move v3, v1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setProgress(I)V

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMagnificationCapabilityObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

    const-string v5, "accessibility_magnification_capability"

    invoke-interface {v0, v5, v3, v4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    check-cast v3, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    iget-object v3, v3, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    iget-object v4, v3, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget v3, v3, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    check-cast v4, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v5, v4, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v5, v5, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v6, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v3, v0, v7}, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/Magnification$4;IZI)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1300d5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScreenOffReceiver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowScaleChangeObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public updateButtonViewLayoutIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final updateUIControlsIfNeeded()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "accessibility_magnification_capability"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_am_magnification_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v2, :cond_0

    move v4, v6

    :cond_0
    const/4 v5, 0x4

    const/16 v8, 0x8

    if-eq v4, v2, :cond_5

    if-eq v4, v6, :cond_4

    const/4 v9, 0x3

    if-eq v4, v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    const-string v1, "accessibility_magnification_mode"

    invoke-interface {v0, v1, v6, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
