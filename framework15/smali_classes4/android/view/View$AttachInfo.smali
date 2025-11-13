.class final Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$Callbacks;,
        Landroid/view/View$AttachInfo$InvalidateInfo;
    }
.end annotation


# instance fields
.field greylist-max-o mAccessibilityFetchFlags:I

.field greylist-max-o mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mAccessibilityWindowId:I

.field blacklist mAlwaysConsumeSystemBars:Z

.field greylist mApplicationScale:F

.field greylist-max-o mAutofilledDrawable:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field final blacklist mCaptionInsets:Landroid/graphics/Rect;

.field blacklist mContentCaptureEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field final greylist-max-q mContentInsets:Landroid/graphics/Rect;

.field blacklist mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

.field greylist-max-o mDebugLayout:Z

.field final blacklist mDensity:F

.field greylist-max-o mDisabledSystemUiVisibility:I

.field greylist-max-o mDisplay:Landroid/view/Display;

.field final blacklist mDisplayPixelCount:F

.field greylist-max-r mDisplayState:I

.field blacklist mDragData:Landroid/content/ClipData;

.field public greylist-max-o mDragSurface:Landroid/view/Surface;

.field greylist-max-o mDragToken:Landroid/os/IBinder;

.field greylist mDrawingTime:J

.field greylist-max-o mForceReportNewAttributes:Z

.field final greylist mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field final greylist mHandler:Landroid/os/Handler;

.field greylist-max-o mHandlingPointerEvent:Z

.field greylist-max-o mHardwareAccelerated:Z

.field greylist-max-o mHardwareAccelerationRequested:Z

.field greylist-max-o mHasNonEmptyGivenInternalInsets:Z

.field greylist-max-o mHasSystemUiListeners:Z

.field greylist mHasWindowFocus:Z

.field greylist-max-o mIWindowId:Landroid/view/IWindowId;

.field greylist mInTouchMode:Z

.field final greylist-max-o mInvalidateChildLocation:[I

.field greylist mKeepScreenOn:Z

.field final greylist mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field blacklist mLeashedParentAccessibilityViewId:I

.field blacklist mLeashedParentToken:Landroid/os/IBinder;

.field greylist-max-o mNeedsUpdateLightCenter:Z

.field blacklist mNextFocusLooped:Z

.field greylist-max-o mPanelParentWindowToken:Landroid/os/IBinder;

.field greylist-max-o mPendingAnimatingRenderNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mPoint:Landroid/graphics/Point;

.field blacklist mReadyForContentCaptureUpdates:Z

.field greylist mRecomputeGlobalAttributes:Z

.field final greylist-max-o mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field greylist-max-o mRootView:Landroid/view/View;

.field greylist mScalingRequired:Z

.field blacklist mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

.field final greylist mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSensitiveViewsCount:I

.field final greylist mSession:Landroid/view/IWindowSession;

.field final greylist-max-q mStableInsets:Landroid/graphics/Rect;

.field greylist-max-o mSystemUiVisibility:I

.field final greylist-max-o mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mThreadedRenderer:Landroid/view/ThreadedRenderer;

.field final greylist-max-o mTmpInvalRect:Landroid/graphics/Rect;

.field final greylist-max-o mTmpLocation:[I

.field final greylist-max-o mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpOutline:Landroid/graphics/Outline;

.field final greylist-max-o mTmpRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mTmpTransformLocation:[F

.field final greylist-max-o mTmpTransformRect:Landroid/graphics/RectF;

.field final greylist-max-o mTmpTransformRect1:Landroid/graphics/RectF;

.field final greylist-max-o mTmpTransformation:Landroid/view/animation/Transformation;

.field greylist-max-o mTooltipHost:Landroid/view/View;

.field final greylist-max-o mTransparentLocation:[I

.field final greylist mTreeObserver:Landroid/view/ViewTreeObserver;

.field greylist-max-o mUnbufferedDispatchRequested:Z

.field greylist-max-o mUse32BitDrawingCache:Z

.field greylist-max-o mViewRequestingLayout:Landroid/view/View;

.field final greylist-max-o mViewRootImpl:Landroid/view/ViewRootImpl;

.field greylist mViewScrollChanged:Z

.field final blacklist mViewVelocityApi:Z

.field greylist mViewVisibilityChanged:Z

.field final greylist-max-q mVisibleInsets:Landroid/graphics/Rect;

.field final greylist mWindow:Landroid/view/IWindow;

.field greylist-max-o mWindowId:Landroid/view/WindowId;

.field greylist-max-o mWindowLeft:I

.field blacklist mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

.field final greylist-max-o mWindowToken:Landroid/os/IBinder;

.field greylist-max-o mWindowTop:I

.field greylist-max-o mWindowVisibility:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcanPerformHapticFeedback(Landroid/view/View$AttachInfo;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AttachInfo;->canPerformHapticFeedback()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdelayNotifyContentCaptureEvent(Landroid/view/View$AttachInfo;Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View$AttachInfo;->delayNotifyContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;Z)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$AttachInfo;->mDisplayState:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mCaptionInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v1}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect1:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpRectList:Ljava/util/List;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mNextFocusLooped:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_layout()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mViewVelocityApi:Z

    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0, p7}, Landroid/view/ViewTreeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/view/View$AttachInfo;->mDensity:F

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Landroid/view/View$AttachInfo;->mDisplayPixelCount:F

    return-void
.end method

.method private blacklist canPerformHapticFeedback()Z
    .locals 1

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist delayNotifyContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$AttachInfo;->ensureEvents(Landroid/view/contentcapture/ContentCaptureSession;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p3, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist ensureEvents(Landroid/view/contentcapture/ContentCaptureSession;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/contentcapture/ContentCaptureSession;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    :cond_0
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureSession;->getId()I

    move-result v0

    iget-object v1, p0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method blacklist decreaseSensitiveViewsCount()V
    .locals 2

    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->removeSensitiveContentAppProtection()V

    :cond_0
    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSensitiveViewsCount is negative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    :cond_1
    return-void
.end method

.method blacklist delayNotifyContentCaptureInsetsEvent(Landroid/graphics/Insets;)V
    .locals 1

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View$AttachInfo;->ensureEvents(Landroid/view/contentcapture/ContentCaptureSession;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AttachInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mWindowVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mInTouchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mUnbufferedDispatchRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method blacklist getContentCaptureManager(Landroid/content/Context;)Landroid/view/contentcapture/ContentCaptureManager;
    .locals 1

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0

    :cond_0
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0
.end method

.method blacklist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .locals 1

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method blacklist getScrollCaptureInternal()Lcom/android/internal/view/ScrollCaptureInternal;
    .locals 1

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/view/ScrollCaptureInternal;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureInternal;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    :cond_0
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    return-object v0
.end method

.method blacklist increaseSensitiveViewsCount()V
    .locals 1

    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->addSensitiveContentAppProtection()V

    :cond_0
    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    return-void
.end method
