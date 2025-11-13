.class public final Lcom/android/systemui/accessibility/WindowMagnificationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;
.implements Landroid/content/ComponentCallbacks;


# static fields
.field public static final A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

.field public static final DEBUG:Z

.field static final HORIZONTAL_LOCK_BASE:D


# instance fields
.field public mAllowDiagonalScrolling:Z

.field public final mAnimationController:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

.field public mBorderDragSize:I

.field public mBottomDrag:Landroid/view/View;

.field public mBottomLeftCornerView:Landroid/widget/ImageView;

.field public mBottomRightCornerView:Landroid/widget/ImageView;

.field public mBounceEffectAnimationScale:F

.field public final mBounceEffectDuration:I

.field public mCloseView:Landroid/widget/ImageView;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public mCursorView:Landroid/widget/ImageView;

.field public mCursorX:F

.field public mCursorY:F

.field public final mDisplayId:I

.field public mDragView:Landroid/widget/ImageView;

.field public mEditSizeEnable:Z

.field public final mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

.field public final mHandler:Landroid/os/Handler;

.field public final mHideTootipRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

.field public mIsDragging:Z

.field public mIsTwoFingerDragMove:Z

.field public mLeftDrag:Landroid/view/View;

.field public mLocale:Ljava/util/Locale;

.field public final mMagnificationFrame:Landroid/graphics/Rect;

.field public final mMagnificationFrameBoundary:Landroid/graphics/Rect;

.field public mMagnificationFrameOffsetX:I

.field public mMagnificationFrameOffsetY:I

.field public final mMagnificationSizeScaleOptions:Landroid/util/SparseArray;

.field public mMinWindowSize:I

.field public mMirrorBorderView:Landroid/view/View;

.field public mMirrorSurface:Landroid/view/SurfaceControl;

.field public mMirrorSurfaceMargin:I

.field public mMirrorSurfaceView:Landroid/view/SurfaceView;

.field public final mMirrorSurfaceViewLayoutChangeListener:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

.field public mMirrorView:Landroid/view/View;

.field public final mMirrorViewBounds:Landroid/graphics/Rect;

.field public final mMirrorViewLayoutChangeListener:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

.field public final mMirrorViewRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$1;

.field public final mMirrorWindowControl:Lcom/android/systemui/accessibility/MirrorWindowControl;

.field public mOuterBorderSize:I

.field public mOverlapWithGestureInsets:Z

.field public mPercentFormat:Ljava/text/NumberFormat;

.field public mPreviousMagnificationSize:I

.field public final mResources:Landroid/content/res/Resources;

.field public mRightDrag:Landroid/view/View;

.field mRotation:I

.field public mScale:F

.field public final mScvhSupplier:Ljava/util/function/Supplier;

.field public final mSourceBounds:Landroid/graphics/Rect;

.field public mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public mSystemGestureTop:I

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public mTipPopupCnt:I

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field public mTopDrag:Landroid/view/View;

.field public mTopLeftCornerView:Landroid/widget/ImageView;

.field public mTopRightCornerView:Landroid/widget/ImageView;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mUpdateStateDescriptionRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

.field public final mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowInsetChangeRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

.field mWindowMagnificationFrameSizePrefs:Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;

.field public final mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

.field public final mWm:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$msetMagnificationFrameSize(Lcom/android/systemui/accessibility/WindowMagnificationController;II)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    add-int/2addr v0, p2

    const/high16 p2, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setWindowSizeAndCenter(IFFI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "WindowMagnificationController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->DEBUG:Z

    new-instance v0, Landroid/util/Range;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget v2, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->HORIZONTAL_LOCK_BASE:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;Lcom/android/systemui/accessibility/MirrorWindowControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/accessibility/WindowMagnifierCallback;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/function/Supplier;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Ljava/util/function/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;",
            "Lcom/android/systemui/accessibility/MirrorWindowControl;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Lcom/android/systemui/accessibility/WindowMagnifierCallback;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControlViewHost;",
            ">;",
            "Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/IWindowSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Landroid/util/SparseArray;

    invoke-direct {p10}, Landroid/util/SparseArray;-><init>()V

    iput-object p10, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationSizeScaleOptions:Landroid/util/SparseArray;

    new-instance p11, Landroid/graphics/Rect;

    invoke-direct {p11}, Landroid/graphics/Rect;-><init>()V

    iput-object p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    new-instance p11, Landroid/graphics/Rect;

    invoke-direct {p11}, Landroid/graphics/Rect;-><init>()V

    iput-object p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    new-instance p11, Landroid/graphics/Rect;

    invoke-direct {p11}, Landroid/graphics/Rect;-><init>()V

    iput-object p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    new-instance p11, Landroid/graphics/Rect;

    invoke-direct {p11}, Landroid/graphics/Rect;-><init>()V

    iput-object p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    const/4 p11, 0x0

    iput p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetX:I

    iput p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetY:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameBoundary:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSystemGestureTop:I

    iput-boolean p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAllowDiagonalScrolling:Z

    iput-boolean p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    iput-boolean p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mIsTwoFingerDragMove:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iput p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTipPopupCnt:I

    iput p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mPreviousMagnificationSize:I

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHideTootipRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAnimationController:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    iput-object v1, p3, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    iput-object p0, p3, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iput-object p6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iput-object p7, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iput-object p9, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScvhSupplier:Ljava/util/function/Supplier;

    new-instance p3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p6

    invoke-direct {p3, p6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mConfiguration:Landroid/content/res/Configuration;

    new-instance p3, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;

    invoke-direct {p3, p1}, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnificationFrameSizePrefs:Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;

    const p3, 0x10302e3

    invoke-virtual {p1, p3}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p6

    iput p6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRotation:I

    const-class p3, Landroid/view/WindowManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    new-instance p6, Landroid/graphics/Rect;

    invoke-interface {p3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {p6, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p7

    invoke-static {p3, p7}, Ljava/lang/Math;->min(II)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const p7, 0x7f0b00a3

    invoke-virtual {p3, p7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p7

    int-to-float p7, p7

    const-string p9, "accessibility_display_magnification_scale"

    const/4 v1, -0x2

    invoke-interface {p8, p9, p7, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getFloatForUser(Ljava/lang/String;FI)F

    move-result p7

    iput p7, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    const-string p7, "accessibility_allow_diagonal_scrolling"

    const/4 p9, 0x1

    invoke-interface {p8, p7, p9, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p7

    if-ne p7, p9, :cond_0

    move p11, p9

    :cond_0
    iput-boolean p11, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAllowDiagonalScrolling:Z

    invoke-virtual {p10}, Landroid/util/SparseArray;->clear()V

    const p7, 0x3fb33333    # 1.4f

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p7

    invoke-virtual {p10, p9, p7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p7, 0x3fe66666    # 1.8f

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p7

    const/4 p8, 0x2

    invoke-virtual {p10, p8, p7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 p7, 0x40200000    # 2.5f

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p7

    const/4 p9, 0x3

    invoke-virtual {p10, p9, p7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 p7, 0x10e0000

    invoke-virtual {p3, p7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectDuration:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateDimensions()V

    iget-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnificationFrameSizePrefs:Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;

    iget-object p7, p3, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;->mWindowMagnificationSizePreferences:Landroid/content/SharedPreferences;

    iget-object p3, p3, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p7, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p8}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getMagnificationWindowSizeFromIndex(I)I

    move-result p3

    iget p7, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/2addr p7, p8

    sub-int/2addr p3, p7

    new-instance p7, Landroid/util/Size;

    invoke-direct {p7, p3, p3}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnificationFrameSizePrefs:Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;

    iget-object p7, p3, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;->mWindowMagnificationSizePreferences:Landroid/content/SharedPreferences;

    iget-object p3, p3, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p7, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p7

    :goto_0
    invoke-virtual {p7}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p7}, Landroid/util/Size;->getHeight()I

    move-result p7

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p9

    div-int/2addr p9, p8

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p6

    div-int/2addr p6, p8

    invoke-virtual {p0, p3, p7, p9, p6}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setMagnificationFrame(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->computeBounceAnimationScale()V

    iput-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorWindowControl:Lcom/android/systemui/accessibility/MirrorWindowControl;

    iput-object p5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance p3, Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowInsetChangeRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    invoke-static {}, Lcom/android/systemui/Flags;->createWindowlessWindowMagnifier()V

    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController$1;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$1;

    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceViewLayoutChangeListener:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewLayoutChangeListener:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mUpdateStateDescriptionRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/android/internal/view/TooltipPopup;

    invoke-direct {p2, p1}, Lcom/android/internal/view/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

    return-void
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v1, 0x80

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public final applyResourcesValues()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorBorderView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08065d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_1

    :cond_2
    const/high16 v0, 0x41e00000    # 28.0f

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final applyTapExcludeRegion()V
    .locals 8

    invoke-static {}, Lcom/android/systemui/Flags;->createWindowlessWindowMagnifier()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Region;

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Region;-><init>(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v4, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v5, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v6, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v7, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-interface {v0, v1}, Landroid/view/AttachedSurfaceControl;->setTouchableRegion(Landroid/graphics/Region;)V

    :goto_0
    return-void
.end method

.method public final calculateMagnificationFrameBoundary()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v0

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v4, v1

    div-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetX:I

    sub-int v2, v0, v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetX:I

    add-int/2addr v0, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetY:I

    sub-int v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetY:I

    add-int/2addr v1, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameBoundary:Landroid/graphics/Rect;

    neg-int v2, v2

    neg-int v3, v3

    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v4, v2, v3, v5, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final changeMagnificationFrameSize(FFFF)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isRTL(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, v3, Landroid/graphics/Rect;->right:I

    float-to-int p3, p3

    add-int/2addr v4, p3

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget p3, v3, Landroid/graphics/Rect;->left:I

    float-to-int p1, p1

    add-int/2addr p3, p1

    iput p3, v3, Landroid/graphics/Rect;->left:I

    iget p1, v3, Landroid/graphics/Rect;->top:I

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, v3, Landroid/graphics/Rect;->top:I

    iget p1, v3, Landroid/graphics/Rect;->bottom:I

    float-to-int p2, p4

    add-int/2addr p1, p2

    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-lt p1, v0, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lt p1, v0, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-gt p1, v2, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->computeBounceAnimationScale()V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->calculateMagnificationFrameBoundary()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->modifyWindowMagnification(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final computeBounceAnimationScale()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    div-float/2addr v0, v1

    const v1, 0x3f866666    # 1.05f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectAnimationScale:F

    return-void
.end method

.method public final deleteWindowMagnification$1()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceViewLayoutChangeListener:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewLayoutChangeListener:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {}, Lcom/android/systemui/Flags;->createWindowlessWindowMagnifier()V

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorWindowControl:Lcom/android/systemui/accessibility/MirrorWindowControl;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mControlsView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v3, v0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mControlsView:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateSysUIState(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setEditMagnifierSizeMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$3;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$3;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/view/accessibility/IMagnificationConnectionCallback;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WindowMagnificationConnectionImpl"

    const-string v1, "Failed to inform source bounds changed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public final getMagnificationWindowSizeFromIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationSizeScaleOptions:Landroid/util/SparseArray;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    rem-int/lit8 p1, p0, 0x2

    sub-int/2addr p0, p1

    return p0
.end method

.method public final handleSingleTap(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v4, 0x7f0a03bc

    if-ne p1, v4, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    check-cast p1, Lcom/android/systemui/accessibility/Magnification$3;

    iget-object v0, p1, Lcom/android/systemui/accessibility/Magnification$3;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v1, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, v3}, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const v4, 0x7f0a02a6

    if-ne p1, v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setEditMagnifierSizeMode(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-array v4, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    iget v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectAnimationScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    new-array v8, v0, [F

    aput v7, v8, v2

    aput v6, v8, v3

    aput v7, v8, v1

    invoke-static {v5, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    iget v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectAnimationScale:F

    new-array v0, v0, [F

    aput v7, v0, v2

    aput v6, v0, v3

    aput v7, v0, v1

    invoke-static {v5, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectDuration:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final isActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDiagonalScrollingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAllowDiagonalScrolling:Z

    return p0
.end method

.method public final modifyWindowMagnification(Z)V
    .locals 9

    invoke-static {}, Lcom/android/systemui/Flags;->createWindowlessWindowMagnifier()V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    div-float/2addr v7, v2

    float-to-int v7, v7

    sub-int/2addr v4, v7

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v5

    div-float/2addr v8, v2

    float-to-int v2, v8

    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v5

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v4, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetX:I

    neg-int v2, v2

    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetY:I

    neg-int v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAnimationController:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$3;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$3;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/view/accessibility/IMagnificationConnectionCallback;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "WindowMagnificationConnectionImpl"

    const-string v3, "Failed to inform source bounds changed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    neg-int v5, v0

    iget-object v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    invoke-static {v0, v5, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    neg-int v5, v3

    iget-object v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    add-int/2addr v6, v3

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    sub-int/2addr v3, v7

    invoke-static {v3, v5, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v3

    if-eqz p1, :cond_6

    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v6, v5}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v6}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v4, v3

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v0}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mIsDragging:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$1;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->run()V

    :goto_4
    return-void
.end method

.method public final move(II)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->moveWindowMagnifier(FF)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    check-cast p1, Lcom/android/systemui/accessibility/Magnification$3;

    iget-object p1, p1, Lcom/android/systemui/accessibility/Magnification$3;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object p1, p1, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p0}, Landroid/view/accessibility/IMagnificationConnectionCallback;->onMove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationConnectionImpl"

    const-string p2, "Failed to inform taking control by a user"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final moveWindowMagnifier(FF)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAnimationController:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAllowDiagonalScrolling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    sget-wide v4, Lcom/android/systemui/accessibility/WindowMagnificationController;->HORIZONTAL_LOCK_BASE:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    add-float/2addr v2, p1

    iput v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    add-float/2addr v2, p2

    iput v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_3

    iput v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    :cond_4
    :goto_1
    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_5

    iput v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    :cond_7
    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateMagnificationFramePosition(II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->modifyWindowMagnification(Z)V

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mIsDragging:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mIsTwoFingerDragMove:Z

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_9

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt p1, v0, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_b

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt p1, v0, :cond_e

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_4

    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    iget p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setY(F)V

    return-void

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    :cond_e
    :goto_4
    iput-boolean p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mIsTwoFingerDragMove:Z

    :cond_f
    :goto_5
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    sget-boolean p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WindowMagnificationController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v3, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr v4, p1

    int-to-float p1, v4

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move v7, v2

    move v2, p1

    move p1, v1

    :goto_0
    move v1, v7

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    move v7, v2

    move v2, v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->calculateMagnificationFrameBoundary()V

    float-to-int v1, v1

    int-to-float v1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v2, v1, p1, v4}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setWindowSizeAndCenter(IFFI)V

    :cond_5
    :goto_2
    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1300d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/systemui/Flags;->createWindowlessWindowMagnifier()V

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_7
    :goto_3
    and-int/lit16 p1, v0, 0x1000

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateDimensions()V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->computeBounceAnimationScale()V

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->deleteWindowMagnification$1()V

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateWindowMagnificationInternal(FFFFF)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final onDrag(Landroid/view/View;FF)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2, v2, p2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, v2, v2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2, v2, v2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v2, p2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopDrag:Landroid/view/View;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v2, p3, v2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomDrag:Landroid/view/View;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v2, v2, v2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, p2, p3, v2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, v2, p3, p2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0, p2, v2, v2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0, v2, v2, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->changeMagnificationFrameSize(FFFF)V

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mIsTwoFingerDragMove:Z

    float-to-int p1, p2

    float-to-int p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    return v1
.end method

.method public final onFinish()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mIsDragging:Z

    return v0
.end method

.method public final onLongPressed(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02a6

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTooltipPositionX()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTooltipPositionY()I

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f1300c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/view/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHideTootipRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHideTootipRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

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

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->handleSingleTap(Landroid/view/View;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mIsDragging:Z

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopDrag:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomDrag:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setEditMagnifierSizeMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->applyResourcesValues()V

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateDimensions()V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->applyTapExcludeRegion()V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnificationFrameSizePrefs:Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    iget-object p0, p1, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;->mWindowMagnificationSizePreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public final setMagnificationFrame(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnificationFrameSizePrefs:Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;->mWindowMagnificationSizePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationFrameSizePrefs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p3, v0

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final setWindowSizeAndCenter(IFFI)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMinWindowSize:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMinWindowSize:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p4, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p4

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    :cond_1
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr p1, v1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setMagnificationFrame(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->calculateMagnificationFrameBoundary()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateMagnificationFramePosition(II)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->modifyWindowMagnification(Z)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WindowMagnificationController"

    const-string v1, "Unable to reach window manager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->modifyWindowMagnification(Z)V

    :goto_1
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final updateDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0708f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0708e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0708fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0708eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMinWindowSize:I

    return-void
.end method

.method public final updateMagnificationFramePosition(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameBoundary:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p2, v1, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameBoundary:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v1, :cond_2

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final updateSysUIState(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSystemGestureTop:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOverlapWithGestureInsets:Z

    if-eq v0, p1, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOverlapWithGestureInsets:Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide/32 v1, 0x80000

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_2
    return-void
.end method

.method public final updateWindowMagnificationInternal(FFFFF)V
    .locals 16

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v2, p1

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->deleteWindowMagnification$1()V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string v5, "accessibility_change_magnification_size"

    const/4 v6, 0x3

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mPreviousMagnificationSize:I

    if-eq v4, v3, :cond_3

    iget-object v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationSizeScaleOptions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getMagnificationWindowSizeFromIndex(I)I

    move-result v4

    const/high16 v5, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v4, v5, v5, v4}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setWindowSizeAndCenter(IFFI)V

    iput v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mPreviousMagnificationSize:I

    :cond_3
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetX:I

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, p4

    float-to-int v3, v3

    :goto_1
    iput v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetX:I

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetY:I

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, p5

    float-to-int v3, v3

    :goto_2
    iput v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetY:I

    iget v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameOffsetX:I

    int-to-float v4, v4

    add-float v4, p2, v4

    int-to-float v3, v3

    add-float v3, p3, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    move v4, v6

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    sub-float/2addr v4, v5

    :goto_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v5, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float v6, v3, v5

    :goto_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    :cond_8
    iput v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->calculateMagnificationFrameBoundary()V

    float-to-int v2, v4

    float-to-int v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateMagnificationFramePosition(II)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    invoke-static {}, Lcom/android/systemui/Flags;->createWindowlessWindowMagnifier()V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v5, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    const/16 v9, 0x28

    const/4 v10, -0x2

    const/16 v8, 0x7f7

    move-object v5, v11

    move v6, v4

    move v7, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v5, 0x1

    iput-boolean v5, v11, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v7, 0x7f130b90

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f1300d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d057b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v7, 0x7f0a0cd5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceView;

    iput-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v7, 0x7f0a066c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorBorderView:Landroid/view/View;

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    iget-object v7, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceViewLayoutChangeListener:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

    invoke-virtual {v6, v7}, Landroid/view/SurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    iget-object v7, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewLayoutChangeListener:Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;

    invoke-direct {v7, v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScvhSupplier:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControlViewHost;

    iput-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v7, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v6, v7, v11}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v6}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    sub-int/2addr v8, v9

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v9

    iget v9, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTipPopupCnt:I

    if-gt v9, v5, :cond_9

    move v9, v5

    goto :goto_5

    :cond_9
    move v9, v3

    :goto_5
    const v10, 0x7fffffff

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v6, v11}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    int-to-float v11, v8

    int-to-float v12, v7

    invoke-virtual {v9, v6, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {v9, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_6

    :cond_a
    iget-object v9, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v3, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v6, v11}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    int-to-float v11, v8

    int-to-float v12, v7

    invoke-virtual {v9, v6, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {v9, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_6
    iget-object v9, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    add-int/2addr v4, v8

    add-int/2addr v2, v7

    invoke-virtual {v9, v8, v7, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iget v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    invoke-virtual {v2, v4, v6}, Landroid/view/accessibility/AccessibilityManager;->attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {v2, v5}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a03bc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a0622

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a0d5d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopDrag:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a09dc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a01a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomDrag:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a02a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a0d65

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a0d63

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a01b1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a01ae

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopDrag:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomDrag:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v4, 0x7f0a0467

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1300c8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f1300da

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v7, 0x7f1300d4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v8, 0x7f1300bd

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v9, 0x7f1300db

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v10, 0x7f1300dc

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v11, 0x7f1300be

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v12, 0x7f1300bf

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1300dd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v14, 0x7f1300de

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v15, 0x7f1300e0

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isRTL(Landroid/content/Context;)Z

    move-result v13

    const-string v14, " "

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_b
    iget-object v13, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopLeftCornerView:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopRightCornerView:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomLeftCornerView:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomRightCornerView:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopDrag:Landroid/view/View;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomDrag:Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v7, 0x7f1300c6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/accessibility/WindowMagnificationController$DragHandleA11yDelegate;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController$DragHandleA11yDelegate;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f1300c2

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCloseView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/accessibility/WindowMagnificationController$DragHandleA11yDelegate;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController$DragHandleA11yDelegate;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorWindowControl:Lcom/android/systemui/accessibility/MirrorWindowControl;

    if-eqz v2, :cond_f

    iget-object v4, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mControlsView:Landroid/view/View;

    const-string v6, "MirrorWindowControl"

    if-eqz v4, :cond_c

    const-string v2, "control view is visible"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_c
    iget-object v4, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mTmpPoint:Landroid/graphics/Point;

    iget-object v7, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/MirrorWindowControl;->onCreateView()Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mControlsView:Landroid/view/View;

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v8, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0708f0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget v9, v4, Landroid/graphics/Point;->x:I

    if-gtz v9, :cond_d

    move v9, v8

    :cond_d
    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-gtz v4, :cond_e

    goto :goto_8

    :cond_e
    move v8, v4

    :goto_8
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x33

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v4, 0x28

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v4, 0x7f7

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/MirrorWindowControl;->getWindowTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mTmpPoint:Landroid/graphics/Point;

    iget-object v8, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v4, v9

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v9, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mControlPosition:Landroid/graphics/Point;

    invoke-virtual {v9, v8, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v4, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v8, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mControlsView:Landroid/view/View;

    invoke-interface {v4, v8, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v8, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mTmpPoint:Landroid/graphics/Point;

    iget-object v9, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v9, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mDraggableBound:Landroid/graphics/Rect;

    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v4

    iget v4, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v7

    invoke-virtual {v9, v3, v3, v10, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v4, Lcom/android/systemui/accessibility/MirrorWindowControl;->DBG:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateDraggableBound :"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/systemui/accessibility/MirrorWindowControl;->mDraggableBound:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    iget v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTipPopupCnt:I

    if-gt v2, v5, :cond_10

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-eqz v2, :cond_10

    new-instance v4, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->applyResourcesValues()V

    goto :goto_a

    :cond_11
    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->modifyWindowMagnification(Z)V

    :goto_a
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_12

    return-void

    :cond_12
    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v5, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_13

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_b

    :cond_13
    move v2, v3

    :goto_b
    int-to-float v2, v2

    sub-float/2addr v4, v2

    iput v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v4, p3, v4

    iget v5, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_14

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v3, v1, 0x2

    :cond_14
    int-to-float v1, v3

    sub-float/2addr v4, v1

    iput v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_15

    iget v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorX:F

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorY:F

    :cond_15
    return-void
.end method
