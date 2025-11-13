.class public Lcom/android/systemui/navigationbar/buttons/KeyButtonView;
.super Landroid/widget/ImageView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mCheckLongPress:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

.field public mCode:I

.field public final mContentDescriptionRes:I

.field public mDarkIntensity:F

.field public mDownTime:J

.field public mGestureAborted:Z

.field public mGestureAbortedByA11yGesture:Z

.field public mHasOvalBg:Z

.field public final mInputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

.field mLongClicked:Z

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mNavBarButtonClickLogger:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mOvalBgPaint:Landroid/graphics/Paint;

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public final mPlaySounds:Z

.field public final mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

.field public mSamsungKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mTouchDownX:I

.field public mTouchDownY:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v4

    new-instance v5, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v5}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManagerGlobal;Lcom/android/internal/logging/UiEventLogger;)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mBgHandler:Landroid/os/Handler;

    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManagerGlobal;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mHasOvalBg:Z

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

    iput-object p5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p5, Lcom/android/systemui/res/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, p5, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p5

    iput p5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    const/4 p5, 0x2

    invoke-virtual {p2, p5, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mPlaySounds:Z

    new-instance p5, Landroid/util/TypedValue;

    invoke-direct {p5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2, v0, p5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p5, p5, Landroid/util/TypedValue;->resourceId:I

    iput p5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mContentDescriptionRes:I

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setClickable(Z)V

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_STABLE_LAYOUT:Z

    const p5, 0x7f07047b

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    if-eq p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050029

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x3faccccd    # 1.35f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    new-instance p3, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    invoke-direct {p3, p1, p0, p5, p2}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    iput-object p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    invoke-direct {p2, p1, p0, p5}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    :goto_1
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mInputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final abortCurrentGesture()V
    .locals 3

    const-string v0, "b/63783866"

    const-string v1, "KeyButtonView.abortCurrentGesture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/systemui/assist/AssistManager;->shouldOverrideAssist(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    iput-boolean v1, v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSpeedUpNextFade:Z

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    iget-object v0, v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAborted:Z

    return-void
.end method

.method public final abortCurrentGestureByA11yGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAbortedByA11yGesture:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mSamsungKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final isClickable()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mContentDescriptionRes:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAborted:Z

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAborted:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    return v2

    :cond_1
    const/4 v3, 0x1

    if-eqz v1, :cond_13

    const/16 v4, 0x20

    if-eq v1, v3, :cond_8

    const/4 v0, 0x2

    if-eq v1, v0, :cond_6

    const/4 p1, 0x3

    if-eq v1, p1, :cond_4

    const/16 p1, 0x9

    if-eq v1, p1, :cond_3

    const/16 p1, 0xa

    if-eq v1, p1, :cond_2

    goto/16 :goto_6

    :cond_2
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->exitHoverAnim()V

    goto/16 :goto_6

    :cond_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->startHoverAnim()V

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    iget p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz p1, :cond_5

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean v4, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mTouchDownX:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mTouchDownY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_19

    :cond_7
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_8
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAbortedByA11yGesture:Z

    if-eqz p1, :cond_9

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAbortedByA11yGesture:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-ne p1, v3, :cond_9

    const-string p1, "KeyButtonView"

    const-string v0, "abortCurrentGesture by A11yGesture"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    return v2

    :cond_9
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mLongClicked:Z

    if-nez p1, :cond_a

    move p1, v3

    goto :goto_0

    :cond_a
    move p1, v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDownTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x96

    cmp-long v1, v5, v7

    if-lez v1, :cond_b

    move v1, v3

    goto :goto_1

    :cond_b
    move v1, v2

    :goto_1
    if-eqz v0, :cond_e

    if-eqz p1, :cond_f

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/VibratorHelper;->isSupportDCMotorHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrateButton()V

    goto :goto_2

    :cond_c
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    goto :goto_2

    :cond_d
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->playSoundEffect(I)V

    goto :goto_3

    :cond_e
    if-eqz v1, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mLongClicked:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_f

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :cond_f
    :goto_3
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz v0, :cond_11

    if-eqz p1, :cond_10

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto :goto_4

    :cond_10
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    goto :goto_4

    :cond_11
    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_12

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_12
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDownTime:J

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mLongClicked:Z

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mTouchDownY:I

    iget p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz p1, :cond_14

    iget-wide v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v2, v2, v4, v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(IIJ)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_17

    if-nez v0, :cond_17

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/VibratorHelper;->isSupportDCMotorHapticFeedback()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrateButton()V

    goto :goto_5

    :cond_14
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_16

    if-nez v0, :cond_17

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/VibratorHelper;->isSupportDCMotorHapticFeedback()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrateButton()V

    goto :goto_5

    :cond_15
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    goto :goto_5

    :cond_16
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :cond_17
    :goto_5
    if-nez v0, :cond_18

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->playSoundEffect(I)V

    :cond_18
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_6
    return v3
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public final performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    const/16 v0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(IIJ)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->playSoundEffect(I)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    const/16 p1, 0x80

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final playSoundEffect(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 p1, 0x66

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void
.end method

.method public final sendEvent(II)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method public final sendEvent(IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x3a3

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v5, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x3a5

    invoke-virtual {v3, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x3a4

    invoke-virtual {v3, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v14

    :goto_0
    sget-object v7, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NONE:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    if-ne v6, v3, :cond_1

    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mLongClicked:Z

    if-eqz v8, :cond_1

    goto :goto_4

    :cond_1
    if-nez v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    and-int/lit8 v8, v1, 0x20

    if-nez v8, :cond_a

    iget v8, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    if-eq v8, v4, :cond_5

    const/16 v9, 0xbb

    if-eq v8, v9, :cond_3

    move-object v5, v7

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    :goto_1
    iget-object v8, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mNavBarButtonClickLogger:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;->logBackButtonClick()V

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_2

    :cond_8
    sget-object v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    :goto_2
    iget-object v8, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mNavBarButtonClickLogger:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;->logHomeButtonClick()V

    :cond_9
    :goto_3
    if-eq v5, v7, :cond_a

    iget-object v7, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v7, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_a
    :goto_4
    iget v5, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-ne v5, v4, :cond_b

    const/16 v4, 0x80

    if-eq v1, v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Back button event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyButtonView"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v2, :cond_c

    move v8, v3

    goto :goto_5

    :cond_c
    move v8, v14

    :goto_5
    new-instance v15, Landroid/view/KeyEvent;

    iget-wide v2, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDownTime:J

    iget v7, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    or-int/lit8 v12, v1, 0x48

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/16 v13, 0x101

    move-object v1, v15

    move-wide/from16 v4, p3

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_6

    :cond_d
    move v1, v2

    :goto_6
    if-eq v1, v2, :cond_e

    invoke-virtual {v15, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    :cond_e
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mBgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_f

    new-instance v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v15}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;Landroid/view/KeyEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_f
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mInputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, v15, v14}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    :goto_7
    return-void
.end method

.method public final setDarkIntensity(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setDarkIntensity(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mSamsungKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setDarkIntensity(F)V

    iget-object v0, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mState:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mHasOvalBg:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mState:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    :goto_2
    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mType:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
