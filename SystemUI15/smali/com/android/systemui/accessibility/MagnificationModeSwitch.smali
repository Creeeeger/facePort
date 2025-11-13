.class public final Lcom/android/systemui/accessibility/MagnificationModeSwitch;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;
.implements Landroid/content/ComponentCallbacks;


# static fields
.field static final DEFAULT_FADE_OUT_ANIMATION_DELAY_MS:I = 0x1388

.field static final FADING_ANIMATION_DURATION_MS:J = 0x12cL


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mClickListener:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field final mDraggableWindowBounds:Landroid/graphics/Rect;

.field public final mFadeInAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

.field public final mFadeOutAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

.field public final mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

.field public final mHideTootipRunnable:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

.field public final mImageView:Landroid/widget/ImageView;

.field public final mImeInsetsRect:Landroid/graphics/Rect;

.field mIsFadeOutAnimating:Z

.field public mIsVisible:Z

.field public mMagnificationMode:I

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public final mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

.field public mSingleTapDetected:Z

.field public mToLeftScreenEdge:Z

.field public final mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field public mUiTimeout:I

.field public final mWindowInsetChangeRunnable:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    iput v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImeInsetsRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHideTootipRunnable:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mConfiguration:Landroid/content/res/Configuration;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iput-object p4, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mClickListener:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07091c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f7

    const/16 v4, 0x8

    const/4 v5, -0x2

    move-object v0, p3

    move v1, v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p4, 0x33

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const p4, 0x10401be

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 p4, 0x3

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 p4, 0x1

    iput-boolean p4, p3, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    const-string p4, "MagnificationModeSwitch"

    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    const p3, 0x10302e3

    invoke-virtual {p1, p3}, Landroid/content/Context;->setTheme(I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    new-instance p3, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p3, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance p3, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowInsetChangeRunnable:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    new-instance p3, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    new-instance p2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    const/4 p3, 0x5

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    new-instance p2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    new-instance p2, Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    new-instance p2, Lcom/android/internal/view/TooltipPopup;

    invoke-direct {p2, p1}, Lcom/android/internal/view/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;)V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;)V

    return-void
.end method

.method public static getIconResId(I)I
    .locals 0

    const p0, 0x7f080988

    return p0
.end method


# virtual methods
.method public final applyResourcesValues(I)V
    .locals 3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getIconResId(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const v2, 0x7f060027

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f08065b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public final getDraggableWindowBounds()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07091a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImeInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3, v1, v1, p0, v1}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v1, v1, v4, p0}, Landroid/graphics/Rect;->inset(IIII)V

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    return-object v3
.end method

.method public final handleSingleTap()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mClickListener:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;->onClick(I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    const-string p0, "A11Y3190"

    const-string v0, "A11Y3188"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final moveButton(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;FF)V

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, 0x200

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->applyResourcesValues(I)V

    :cond_1
    and-int/lit16 p1, v0, 0x480

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    goto :goto_0

    :cond_2
    and-int/lit16 p1, v0, 0x1000

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07091c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stickToScreenEdge(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->showButton(IZ)V

    goto :goto_0

    :cond_3
    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const v1, 0x10401be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onDrag(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->moveButton(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onFinish()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stickToScreenEdge(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->showButton(IZ)V

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    return v2
.end method

.method public final onLongPressed(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTooltipPositionX()I

    move-result v2

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTooltipPositionY()I

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f1300df

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHideTootipRunnable:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHideTootipRunnable:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onSingleTap(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->handleSingleTap()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stopFadeOutAnimation()V

    return-void
.end method

.method public final removeButton()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    return-void
.end method

.method public final showButton(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    if-eq v1, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->applyResourcesValues(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getDraggableWindowBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {p2, p0, v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 p2, 0x1388

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mUiTimeout:I

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda8;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda8;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda8;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    iput v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mUiTimeout:I

    :catch_0
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stopFadeOutAnimation()V

    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mUiTimeout:I

    if-ltz p1, :cond_7

    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/widget/ImageView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method

.method public final stickToScreenEdge(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateButtonViewLayoutIfNeeded$1()V

    return-void
.end method

.method public final stopFadeOutAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    :cond_0
    return-void
.end method

.method public final updateButtonViewLayoutIfNeeded$1()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
