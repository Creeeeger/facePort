.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;,
        Landroid/view/SurfaceView$SurfaceLifecycleStrategy;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final blacklist DEBUG_POSITION:Z

.field private static final blacklist FORWARD_BACK_KEY_TOLERANCE_MS:J = 0x64L

.field public static final whitelist SURFACE_LIFECYCLE_DEFAULT:I = 0x0

.field public static final whitelist SURFACE_LIFECYCLE_FOLLOWS_ATTACHMENT:I = 0x2

.field public static final whitelist SURFACE_LIFECYCLE_FOLLOWS_VISIBILITY:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceView"

.field private static final blacklist UPDATESURFACE_CALLED_BY_DETACHEDFROMWINDOW:I = 0x4

.field private static final blacklist UPDATESURFACE_CALLED_BY_PREDRAW:I = 0x8

.field private static final blacklist UPDATESURFACE_CALLED_BY_SCROLLCHANGED:I = 0x7

.field private static final blacklist UPDATESURFACE_CALLED_BY_SETFORMAT:I = 0x6

.field private static final blacklist UPDATESURFACE_CALLED_BY_SETFRAME:I = 0x5

.field private static final blacklist UPDATESURFACE_CALLED_BY_SETVISIBILITY:I = 0x3

.field private static final blacklist UPDATESURFACE_CALLED_BY_WINDOWSTOPPED:I = 0x1

.field private static final blacklist UPDATESURFACE_CALLED_BY_WINDOWVISIBILITYCHANGED:I = 0x2


# instance fields
.field blacklist mAlpha:F

.field private greylist-max-o mAttachedToWindow:Z

.field blacklist mBackgroundColor:I

.field blacklist mBackgroundControl:Landroid/view/SurfaceControl;

.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mBlastSurfaceControl:Landroid/view/SurfaceControl;

.field final greylist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClipSurfaceToBounds:Z

.field blacklist mCornerRadius:F

.field private blacklist mDisableBackgroundLayer:Z

.field greylist-max-o mDrawFinished:Z

.field private final greylist mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field greylist-max-p mDrawingStopped:Z

.field private final blacklist mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field greylist mFormat:I

.field private final blacklist mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mGlobalListenersAdded:Z

.field greylist mHaveFrame:Z

.field private blacklist mHdrHeadroom:F

.field greylist-max-p mIsCreating:Z

.field private blacklist mIsWindowOpaque:Z

.field greylist-max-p mLastLockTime:J

.field greylist-max-o mLastSurfaceHeight:I

.field greylist-max-o mLastSurfaceWidth:I

.field greylist-max-o mLastWindowVisibility:Z

.field private final blacklist mLimitedHdrEnabled:Z

.field final greylist-max-o mLocation:[I

.field private blacklist mParentSurfaceSequenceId:I

.field private blacklist mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final greylist-max-o mRTLastReportedPosition:Landroid/graphics/Rect;

.field private final blacklist mRTLastSetCrop:Landroid/graphics/Rect;

.field private blacklist mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field greylist mRequestedFormat:I

.field private blacklist mRequestedHdrHeadroom:F

.field greylist-max-p mRequestedHeight:I

.field blacklist mRequestedSubLayer:I

.field private blacklist mRequestedSurfaceLifecycleStrategy:I

.field greylist-max-o mRequestedVisible:Z

.field greylist-max-p mRequestedWidth:I

.field blacklist mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final blacklist mRtDrivenClipping:Z

.field private final greylist-max-o mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final greylist-max-o mScreenRect:Landroid/graphics/Rect;

.field private final greylist-max-o mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field greylist-max-o mSubLayer:I

.field final greylist mSurface:Landroid/view/Surface;

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field final blacklist mSurfaceControlLock:Ljava/lang/Object;

.field private final blacklist mSurfaceControlViewHostParent:Landroid/view/ISurfaceControlViewHostParent;

.field greylist-max-o mSurfaceCreated:Z

.field private blacklist mSurfaceCreatedCount:I

.field private greylist-max-o mSurfaceFlags:I

.field final greylist-max-p mSurfaceFrame:Landroid/graphics/Rect;

.field greylist-max-o mSurfaceHeight:I

.field private final greylist mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private blacklist mSurfaceLifecycleStrategy:I

.field final greylist mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final greylist-max-o mSurfaceSession:Landroid/view/SurfaceSession;

.field greylist-max-o mSurfaceWidth:I

.field private final blacklist mSyncGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/SurfaceSyncGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTag:Ljava/lang/String;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field blacklist mTransformHint:I

.field private blacklist mUpdateSurfaceCalledBy:I

.field greylist-max-o mViewVisibility:Z

.field greylist-max-o mVisible:Z

.field greylist-max-o mWindowSpaceLeft:I

.field greylist-max-o mWindowSpaceTop:I

.field greylist-max-o mWindowStopped:Z

.field greylist-max-o mWindowVisibility:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$NfZyM_TG8F8lqzaOVZ7noREFjzU(Landroid/view/SurfaceView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YBnSWna8pqXfO6ChPyR7fiW9mv4(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_pMdvlkS5pGjU0467JiRLPVZuqU(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fEUJ8AN5zlaEQlBS9kCb2vUfWDI(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastSetCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/view/SurfaceView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpdateSurfaceCalledBy(Landroid/view/SurfaceView;I)V
    .locals 0

    iput p1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_POSITION()Z
    .locals 1

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    sput-boolean v0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->limitedHdr()Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mLimitedHdrEnabled:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    iput v1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    iput v1, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    iput v2, p0, Landroid/view/SurfaceView;->mHdrHeadroom:F

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    iput v1, p0, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    const-string v2, "SurfaceView"

    iput-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mAlpha:F

    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    iput v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/RemoteAccessibilityController;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/view/SurfaceView$1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/ISurfaceControlViewHostParent;

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->clipSurfaceviews()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastSetCrop:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    new-instance v1, Landroid/view/SurfaceView$2;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceView@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    return-void
.end method

.method private blacklist applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aOrMT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v2, "aOrMT: t.apply"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    return-void
.end method

.method private blacklist applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    return-void
.end method

.method private blacklist clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v8

    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v5, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    iget v6, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v0, p1

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    :goto_0
    return-void
.end method

.method private blacklist copySurface(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method private blacklist createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/view/ViewRootImpl;->updateAndGetBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(BLAST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_4
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    return-void
.end method

.method private greylist-max-o getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .locals 2

    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .locals 3

    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private blacklist initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1, v0}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    return-void
.end method

.method private greylist-max-o isAboveParent()Z
    .locals 1

    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$new$0()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    const/16 v0, 0x8

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return v1
.end method

.method private blacklist notifySurfaceDestroyed()V
    .locals 5

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " surfaceDestroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "surfaceDestroyed callback.size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    :cond_2
    return-void
.end method

.method private greylist-max-o onDrawFinished()V
    .locals 2

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finishedDrawing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private greylist-max-o performDrawFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_0
    return-void
.end method

.method private blacklist performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZZLandroid/view/SurfaceControl$Transaction;)Z
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p8

    const/4 v11, 0x0

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    iput-boolean v0, v8, Landroid/view/SurfaceView;->mDrawingStopped:Z

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "SurfaceView"

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Cur surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {v8, v10, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result v0

    iput v0, v8, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_3

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_3
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    :goto_1
    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mLimitedHdrEnabled:Z

    if-eqz v0, :cond_6

    if-nez p7, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    iget-object v0, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mHdrHeadroom:F

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setDesiredHdrHeadroom(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    if-eqz p6, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_8
    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-nez p4, :cond_a

    if-eqz p5, :cond_b

    :cond_a
    if-nez p3, :cond_b

    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    :cond_b
    if-nez p4, :cond_c

    if-nez p3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_e

    iget-object v0, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_e

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_e
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_2
    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pST: sr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {v8, v0, v1}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V

    goto :goto_3

    :cond_10
    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    :goto_3
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    if-eqz v0, :cond_12

    const-string v0, "%d performSurfaceTransaction %s position = [%d, %d, %d, %d] surfaceSize = %dx%d"

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "RenderWorker"

    goto :goto_4

    :cond_11
    const-string v1, "UI Thread"

    :goto_4
    move-object/from16 v16, v1

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    filled-new-array/range {v15 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v8, v13}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->top:I

    if-nez v9, :cond_13

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_13
    iget v0, v9, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_5
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v8, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v2, v0, :cond_15

    iget v2, v8, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v2, v1, :cond_14

    goto :goto_6

    :cond_14
    move v12, v13

    :cond_15
    :goto_6
    move v11, v12

    iput v0, v8, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v1, v8, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return v11

    :catchall_0
    move-exception v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {v0, p2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private blacklist releaseSurfaces(Z)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    :cond_0
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "releaseSurfaces: viewRoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "null"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_2
    iget-object v4, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_3
    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    :cond_4
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    :try_start_1
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ISurfaceControlViewHost;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V

    iget-object v4, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "SurfaceView"

    const-string v6, "Failed to remove parent interface from SCVH. Likely SCVH is already dead"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p1, :cond_5

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    :cond_5
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist replacePositionUpdateListener(II)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    :cond_0
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    return-void
.end method

.method private blacklist requestEmbeddedFocus(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    const-string v3, "SurfaceView"

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEmbeddedFocus: caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    :try_start_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v4

    invoke-interface {v1, v2, v4, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Exception requesting focus on embedded window"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist requiresSurfaceControlCreation(ZZ)Z
    .locals 4

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method private greylist-max-o runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private blacklist setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    :cond_0
    return-void
.end method

.method private blacklist setWindowStopped(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowStopped("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method private blacklist surfaceShouldExist()Z
    .locals 4

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method

.method private blacklist updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 5

    iget v0, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    move-object v0, v1

    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    return-object p1
.end method

.method private blacklist updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v0, :cond_2

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-void
.end method

.method private greylist-max-o updateOpaqueFlag()V
    .locals 1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_0
    return-void
.end method

.method private blacklist updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private greylist-max-o updateRequestedVisibility()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    return-void
.end method


# virtual methods
.method public whitelist applyTransactionToFrame(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->getLastAcquiredFrameNum()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v3, p1, v1, v2}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface does not exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v8, v3, v1

    add-int v9, v4, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v3

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_2
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method protected blacklist gatherTransparentRegionWhenStartTaskView(Landroid/graphics/Region;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public blacklist getCornerRadius()F
    .locals 1

    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public whitelist getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public whitelist getHostToken()Landroid/os/IBinder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getImportantForAccessibility()I
    .locals 2

    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "detached"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SurfaceView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfaceRenderPosition()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist isFixedSize()Z
    .locals 2

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isZOrderedOnTop()Z
    .locals 1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_1
    sget-boolean v2, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Detaching SV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    const/4 v2, 0x4

    iput v2, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    iget-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "onDetachedFromWindow: tryReleaseSurfaces()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 3

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_0
    nop

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_1
    nop

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected whitelist onSetAlpha(I)Z
    .locals 2

    iget v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .locals 8

    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSSPAndSRT: pl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowVisibilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method blacklist performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist requestUpdateSurfacePositionAndScale()V
    .locals 8

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rUSPAndS: sr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float v6, v1, v2

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v7, v1, v2

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public whitelist semResetRenderNodePosition()V
    .locals 0

    return-void
.end method

.method public whitelist setAlpha(F)V
    .locals 2

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setAlpha: alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public whitelist setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 5

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :cond_1
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v1, v3}, Landroid/view/ISurfaceControlViewHost;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "SurfaceView"

    const-string v4, "Failed to attach parent interface to SCVH. Likely SCVH is already dead."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public whitelist setClipBounds(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist setCornerRadius(F)V
    .locals 2

    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be 0.0 or in the range [1.0, 10000.0f], received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEnableSurfaceClipping(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method protected greylist setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    const/4 v1, 0x5

    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return v0
.end method

.method public greylist-max-o setResizeBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public blacklist setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public whitelist setSecure(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_0
    return-void
.end method

.method public whitelist setSurfaceLifecycle(I)V
    .locals 0

    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public blacklist setUseAlpha()V
    .locals 0

    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    const/4 v1, 0x3

    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method public blacklist setZOrderedOnTop(ZZ)Z
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    return v2

    :cond_1
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-nez p2, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return v2
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    return-void
.end method

.method public blacklist syncNextFrame(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    return-void
.end method

.method blacklist updateEmbeddedAccessibilityMatrix(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method protected greylist-max-o updateSurface()V
    .locals 43

    move-object/from16 v10, p0

    const-string v11, " h="

    const-string v12, " w="

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mHaveFrame:Z

    const-string v13, "SurfaceView"

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updateSurface: has no frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v14

    if-nez v14, :cond_2

    return-void

    :cond_2
    iget-object v0, v14, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v15, 0x0

    if-eqz v0, :cond_3e

    iget-object v0, v14, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v24, v14

    goto/16 :goto_2c

    :cond_3
    iget-object v9, v14, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v9, :cond_4

    iget-object v0, v10, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v9}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    :cond_4
    iget v0, v10, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-gtz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :cond_5
    move v8, v0

    iget v0, v10, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-gtz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_6
    move v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v6

    iget v0, v10, Landroid/view/SurfaceView;->mFormat:I

    iget v1, v10, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v15

    :goto_0
    move v4, v0

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v1, v10, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v15

    :goto_1
    move v3, v0

    iget v0, v10, Landroid/view/SurfaceView;->mAlpha:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v15

    :goto_2
    move v2, v0

    invoke-direct {v10, v4, v3}, Landroid/view/SurfaceView;->requiresSurfaceControlCreation(ZZ)Z

    move-result v1

    iget v0, v10, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v8, :cond_b

    iget v0, v10, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v7, :cond_a

    goto :goto_3

    :cond_a
    move v0, v15

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v0, 0x1

    :goto_4
    move/from16 v16, v0

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v5, v10, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v5, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    move v0, v15

    :goto_5
    move/from16 v18, v0

    iget-object v0, v10, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v10, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget v0, v10, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v5, v10, Landroid/view/SurfaceView;->mLocation:[I

    aget v5, v5, v15

    if-ne v0, v5, :cond_e

    iget v0, v10, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v5, v10, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v17, 0x1

    aget v5, v5, v17

    if-eq v0, v5, :cond_d

    goto :goto_6

    :cond_d
    move v0, v15

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v0, 0x1

    :goto_7
    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v5, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v0, v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v5, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v0, v5, :cond_f

    goto :goto_8

    :cond_f
    move v0, v15

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v0, 0x1

    :goto_9
    move/from16 v20, v0

    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iget v5, v10, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v0, v5, :cond_11

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    move v0, v15

    :goto_a
    move v5, v0

    iget v0, v10, Landroid/view/SurfaceView;->mSubLayer:I

    iget v15, v10, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-eq v0, v15, :cond_12

    const/4 v0, 0x1

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    :goto_b
    move v15, v0

    iget v0, v10, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    move-object/from16 v22, v11

    iget v11, v10, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    if-eq v0, v11, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_c
    move v11, v0

    iget v0, v10, Landroid/view/SurfaceView;->mHdrHeadroom:F

    move-object/from16 v23, v12

    iget v12, v10, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    :goto_d
    move v12, v0

    move-object/from16 v24, v9

    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->isWindowOpaque()Z

    move-result v9

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    if-eq v0, v9, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    move/from16 v25, v0

    if-eqz v25, :cond_16

    iput-boolean v9, v10, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    :cond_16
    if-nez v1, :cond_18

    if-nez v4, :cond_18

    move/from16 v26, v9

    move/from16 v9, v16

    if-nez v9, :cond_19

    if-nez v3, :cond_19

    if-nez v2, :cond_19

    if-nez v18, :cond_19

    if-nez v19, :cond_19

    if-nez v20, :cond_19

    if-nez v5, :cond_19

    if-nez v15, :cond_19

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_19

    if-nez v11, :cond_19

    if-nez v12, :cond_19

    if-eqz v25, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v32, v2

    move/from16 v35, v4

    move/from16 v17, v5

    move/from16 v29, v6

    move/from16 v28, v11

    move/from16 v16, v12

    move/from16 v38, v15

    move/from16 v39, v26

    move v11, v3

    move v15, v8

    move-object/from16 v26, v24

    move-object/from16 v24, v14

    move v14, v9

    move/from16 v42, v7

    move v7, v1

    move/from16 v1, v42

    goto/16 :goto_2b

    :cond_18
    move/from16 v26, v9

    move/from16 v9, v16

    :cond_19
    :goto_f
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v12

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " Changes: creating="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " format="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " size="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " visible="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v27, v4

    const-string v4, " alpha="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " hint="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " left="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v10, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v12, v10, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v21, 0x0

    aget v12, v12, v21

    if-eq v4, v12, :cond_1a

    const/4 v4, 0x1

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " top="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v10, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v12, v10, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v17, 0x1

    aget v12, v12, v17

    if-eq v4, v12, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " z="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " attached="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v10, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " lifecycleStrategy="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_1c
    move/from16 v27, v4

    move/from16 v16, v12

    :goto_12
    :try_start_0
    iget-boolean v0, v10, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v10, Landroid/view/SurfaceView;->mVisible:Z

    iget-object v0, v10, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    iput v0, v10, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v0, v10, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v17, 0x1

    aget v0, v0, v17

    iput v0, v10, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v8, v10, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v7, v10, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v0, v10, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v10, Landroid/view/SurfaceView;->mFormat:I

    iput v6, v10, Landroid/view/SurfaceView;->mAlpha:F

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v10, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, v10, Landroid/view/SurfaceView;->mTransformHint:I

    iget v0, v10, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    iput v0, v10, Landroid/view/SurfaceView;->mSubLayer:I

    iget v0, v10, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    move v12, v0

    iget v0, v10, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    iput v0, v10, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    iget v0, v10, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    iput v0, v10, Landroid/view/SurfaceView;->mHdrHeadroom:F

    iget-object v0, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v10, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v10, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v10, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v28

    add-int v4, v4, v28

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v10, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v28

    add-int v4, v4, v28

    iput v4, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    if-eqz v24, :cond_1d

    :try_start_1
    iget-object v0, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, v24

    :try_start_2
    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    move/from16 v32, v2

    move/from16 v17, v5

    move/from16 v29, v6

    move/from16 v28, v11

    move-object/from16 v24, v14

    move/from16 v38, v15

    move-object/from16 v5, v22

    move/from16 v39, v26

    move/from16 v35, v27

    move v11, v3

    move-object/from16 v26, v4

    move v15, v8

    move v14, v9

    move-object/from16 v3, v23

    move/from16 v42, v7

    move v7, v1

    move/from16 v1, v42

    goto/16 :goto_29

    :catch_1
    move-exception v0

    move-object/from16 v4, v24

    move/from16 v32, v2

    move/from16 v17, v5

    move/from16 v29, v6

    move/from16 v28, v11

    move-object/from16 v24, v14

    move/from16 v38, v15

    move-object/from16 v5, v22

    move/from16 v39, v26

    move/from16 v35, v27

    move v11, v3

    move-object/from16 v26, v4

    move v15, v8

    move v14, v9

    move-object/from16 v3, v23

    move/from16 v42, v7

    move v7, v1

    move/from16 v1, v42

    goto/16 :goto_29

    :cond_1d
    move-object/from16 v4, v24

    :goto_13
    :try_start_3
    iget-object v0, v14, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    iget-object v0, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move/from16 v28, v11

    move-object/from16 v11, v24

    move/from16 v24, v3

    :try_start_4
    iget v3, v11, Landroid/graphics/Rect;->left:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    move/from16 v29, v6

    :try_start_5
    iget v6, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-object v6, v0

    if-eqz v1, :cond_1e

    :try_start_6
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SurfaceView["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v10, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v14, v0, v6}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    move/from16 v32, v2

    move/from16 v17, v5

    move/from16 v38, v15

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v11, v24

    move/from16 v39, v26

    move/from16 v35, v27

    move-object/from16 v26, v4

    move v15, v8

    move-object/from16 v24, v14

    move v14, v9

    move/from16 v42, v7

    move v7, v1

    move/from16 v1, v42

    goto/16 :goto_29

    :cond_1e
    :try_start_7
    iget-object v0, v10, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    :goto_14
    nop

    if-nez v9, :cond_22

    if-nez v1, :cond_22

    if-nez v5, :cond_22

    :try_start_8
    iget-boolean v0, v10, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v0, :cond_20

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_22

    :cond_20
    if-nez v2, :cond_22

    if-eqz v15, :cond_21

    goto :goto_15

    :cond_21
    const/4 v0, 0x0

    goto :goto_16

    :cond_22
    :goto_15
    move/from16 v0, v17

    :goto_16
    move/from16 v30, v0

    if-eqz v30, :cond_23

    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->isInWMSRequestedSync()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    if-eqz v0, :cond_23

    move/from16 v0, v17

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    :goto_17
    move/from16 v31, v0

    const/4 v0, 0x0

    if-eqz v31, :cond_24

    :try_start_9
    new-instance v3, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    move-object/from16 v32, v0

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback-IA;)V

    move-object v0, v3

    iget-object v3, v10, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move/from16 v33, v1

    :try_start_a
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move/from16 v34, v2

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v3, v2, v1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-object v3, v0

    goto/16 :goto_18

    :catch_3
    move-exception v0

    move/from16 v17, v5

    move v1, v7

    move/from16 v38, v15

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v11, v24

    move/from16 v39, v26

    move/from16 v35, v27

    move/from16 v7, v33

    move/from16 v32, v34

    move-object/from16 v26, v4

    move v15, v8

    move-object/from16 v24, v14

    move v14, v9

    goto/16 :goto_29

    :catch_4
    move-exception v0

    move/from16 v34, v2

    move/from16 v17, v5

    move v1, v7

    move/from16 v38, v15

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v11, v24

    move/from16 v39, v26

    move/from16 v35, v27

    move/from16 v7, v33

    move/from16 v32, v34

    move-object/from16 v26, v4

    move v15, v8

    move-object/from16 v24, v14

    move v14, v9

    goto/16 :goto_29

    :catch_5
    move-exception v0

    move/from16 v33, v1

    move/from16 v34, v2

    move/from16 v17, v5

    move v1, v7

    move/from16 v38, v15

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v11, v24

    move/from16 v39, v26

    move/from16 v35, v27

    move/from16 v7, v33

    move/from16 v32, v34

    move-object/from16 v26, v4

    move v15, v8

    move-object/from16 v24, v14

    move v14, v9

    goto/16 :goto_29

    :cond_24
    move-object/from16 v32, v0

    move/from16 v33, v1

    move/from16 v34, v2

    move-object/from16 v3, v32

    :goto_18
    move/from16 v2, v33

    move-object/from16 v1, p0

    move/from16 v32, v34

    move-object v2, v14

    move-object/from16 v34, v11

    move/from16 v11, v24

    move-object/from16 v24, v14

    move-object v14, v3

    move-object v3, v4

    move/from16 v35, v27

    move-object/from16 v27, v4

    move/from16 v4, v33

    move/from16 v0, v17

    move/from16 v17, v5

    move v5, v9

    move-object/from16 v36, v6

    move/from16 v6, v17

    move-object/from16 v37, v14

    move v14, v7

    move v7, v15

    move/from16 v38, v15

    move v15, v8

    move/from16 v8, v16

    move/from16 v39, v26

    move-object/from16 v26, v27

    move/from16 v27, v14

    move v14, v9

    move-object/from16 v9, v36

    :try_start_c
    invoke-direct/range {v1 .. v9}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZZLandroid/view/SurfaceControl$Transaction;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    const/4 v2, 0x0

    move/from16 v3, v33

    :try_start_d
    iget v4, v10, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_25

    move v4, v0

    goto :goto_19

    :cond_25
    const/4 v4, 0x0

    :goto_19
    if-ne v12, v5, :cond_26

    move v5, v0

    goto :goto_1a

    :cond_26
    const/4 v5, 0x0

    :goto_1a
    if-eqz v4, :cond_27

    if-eqz v5, :cond_27

    move v6, v0

    goto :goto_1b

    :cond_27
    const/4 v6, 0x0

    :goto_1b
    iget-boolean v7, v10, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-eqz v7, :cond_2a

    if-nez v3, :cond_29

    if-nez v4, :cond_28

    :try_start_e
    iget-boolean v7, v10, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v7, :cond_29

    :cond_28
    if-eqz v4, :cond_2a

    iget-boolean v7, v10, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v7, :cond_2a

    if-nez v11, :cond_29

    if-eqz v6, :cond_2a

    :cond_29
    const/4 v7, 0x0

    iput-boolean v7, v10, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1c

    :catchall_0
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v7, v33

    move-object/from16 v4, v37

    move/from16 v22, v1

    move/from16 v1, v27

    goto/16 :goto_28

    :cond_2a
    :goto_1c
    move/from16 v7, v33

    :try_start_f
    invoke-direct {v10, v7, v14}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    iget-object v8, v10, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSurface: mVisible = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v9, v10, Landroid/view/SurfaceView;->mVisible:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " mSurface.isValid() = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v10, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, v10, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, v10, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSurface: mSurfaceCreated = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v10, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " surfaceChanged = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " visibleChanged = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    const-string v8, " "

    const-string v9, " #"

    if-nez v0, :cond_2e

    if-nez v3, :cond_2c

    if-eqz v4, :cond_2b

    if-eqz v11, :cond_2b

    goto :goto_1d

    :cond_2b
    move-object/from16 v33, v2

    move/from16 v40, v3

    move/from16 v41, v5

    goto/16 :goto_20

    :cond_2c
    :goto_1d
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, v10, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    iput-boolean v0, v10, Landroid/view/SurfaceView;->mIsCreating:Z

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v2

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " visibleChanged -- surfaceCreated"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_2d
    move-object/from16 v33, v2

    :goto_1e
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    move-object v2, v0

    iget-object v0, v10, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    move/from16 v40, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v41, v5

    const-string/jumbo v5, "surfaceCreated "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v10, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v10, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v2

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v0, :cond_2f

    aget-object v5, v2, v3

    move/from16 v33, v0

    iget-object v0, v10, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v33

    goto :goto_1f

    :catchall_1
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v37

    move/from16 v22, v1

    move/from16 v1, v27

    goto/16 :goto_28

    :cond_2e
    move-object/from16 v33, v2

    move/from16 v40, v3

    move/from16 v41, v5

    :goto_20
    move-object/from16 v2, v33

    :cond_2f
    if-nez v7, :cond_32

    if-nez v35, :cond_32

    if-nez v14, :cond_32

    if-nez v17, :cond_32

    if-eqz v4, :cond_30

    if-nez v11, :cond_32

    :cond_30
    if-eqz v1, :cond_31

    goto :goto_21

    :cond_31
    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v1, v27

    move/from16 v27, v6

    goto/16 :goto_26

    :cond_32
    :goto_21
    :try_start_11
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-eqz v0, :cond_33

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " surfaceChanged -- format="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v10, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-object/from16 v3, v23

    :try_start_13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-object/from16 v5, v22

    :try_start_14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move/from16 v22, v1

    move/from16 v1, v27

    :try_start_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catchall_2
    move-exception v0

    goto :goto_22

    :catchall_3
    move-exception v0

    move-object/from16 v5, v22

    goto :goto_22

    :catchall_4
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    :goto_22
    move/from16 v22, v1

    move/from16 v1, v27

    move-object/from16 v4, v37

    goto/16 :goto_28

    :cond_33
    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v22, v1

    move/from16 v1, v27

    :goto_23
    if-nez v2, :cond_34

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-object v2, v0

    goto :goto_24

    :catchall_5
    move-exception v0

    move-object/from16 v4, v37

    goto/16 :goto_28

    :cond_34
    :goto_24
    :try_start_16
    iget-object v0, v10, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    move/from16 v23, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v6

    const-string/jumbo v6, "surfaceChanged ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v10, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v10, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v0, :cond_35

    :try_start_17
    aget-object v6, v2, v4

    iget-object v8, v10, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v9, v10, Landroid/view/SurfaceView;->mFormat:I

    invoke-interface {v6, v8, v9, v15, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_35
    :goto_26
    if-eqz v30, :cond_39

    :try_start_18
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v0, :cond_36

    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " surfaceRedrawNeeded"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-nez v2, :cond_37

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-object v2, v0

    :cond_37
    if-eqz v31, :cond_38

    move-object/from16 v4, v37

    :try_start_1a
    invoke-direct {v10, v2, v4}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_27

    :cond_38
    move-object/from16 v4, v37

    invoke-direct {v10, v2}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_27

    :catchall_6
    move-exception v0

    goto :goto_28

    :cond_39
    move-object/from16 v4, v37

    goto :goto_27

    :catchall_7
    move-exception v0

    move-object/from16 v4, v37

    goto :goto_28

    :cond_3a
    move-object/from16 v33, v2

    move/from16 v40, v3

    move/from16 v41, v5

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v1, v27

    move-object/from16 v4, v37

    move/from16 v27, v6

    :goto_27
    const/4 v2, 0x0

    :try_start_1b
    iput-boolean v2, v10, Landroid/view/SurfaceView;->mIsCreating:Z

    iget-object v0, v10, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3b

    iget-boolean v0, v10, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_3b

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    :cond_3b
    goto/16 :goto_2a

    :catchall_8
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v37

    move/from16 v22, v1

    move/from16 v1, v27

    goto :goto_28

    :catchall_9
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v7, v33

    move-object/from16 v4, v37

    move/from16 v22, v1

    move/from16 v1, v27

    :goto_28
    const/4 v2, 0x0

    iput-boolean v2, v10, Landroid/view/SurfaceView;->mIsCreating:Z

    iget-object v2, v10, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3c

    iget-boolean v2, v10, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_3c

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    :cond_3c
    nop

    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    :catch_6
    move-exception v0

    goto/16 :goto_29

    :catch_7
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v1, v27

    move/from16 v7, v33

    goto/16 :goto_29

    :catch_8
    move-exception v0

    move/from16 v32, v2

    move/from16 v17, v5

    move/from16 v38, v15

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v11, v24

    move/from16 v39, v26

    move/from16 v35, v27

    move-object/from16 v26, v4

    move v15, v8

    move-object/from16 v24, v14

    move v14, v9

    move/from16 v42, v7

    move v7, v1

    move/from16 v1, v42

    goto/16 :goto_29

    :catch_9
    move-exception v0

    move/from16 v32, v2

    move/from16 v17, v5

    move/from16 v29, v6

    move/from16 v38, v15

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v11, v24

    move/from16 v39, v26

    move/from16 v35, v27

    move-object/from16 v26, v4

    move v15, v8

    move-object/from16 v24, v14

    move v14, v9

    move/from16 v42, v7

    move v7, v1

    move/from16 v1, v42

    goto :goto_29

    :catch_a
    move-exception v0

    move/from16 v32, v2

    move/from16 v17, v5

    move/from16 v29, v6

    move/from16 v28, v11

    move-object/from16 v24, v14

    move/from16 v38, v15

    move-object/from16 v5, v22

    move/from16 v39, v26

    move/from16 v35, v27

    move v11, v3

    move-object/from16 v26, v4

    move v15, v8

    move v14, v9

    move-object/from16 v3, v23

    move/from16 v42, v7

    move v7, v1

    move/from16 v1, v42

    goto :goto_29

    :catch_b
    move-exception v0

    move/from16 v32, v2

    move/from16 v17, v5

    move/from16 v29, v6

    move/from16 v28, v11

    move/from16 v38, v15

    move-object/from16 v5, v22

    move/from16 v39, v26

    move/from16 v35, v27

    move v11, v3

    move v15, v8

    move-object/from16 v3, v23

    move-object/from16 v26, v24

    move-object/from16 v24, v14

    move v14, v9

    move/from16 v42, v7

    move v7, v1

    move/from16 v1, v42

    :goto_29
    const-string v2, "Exception configuring surface"

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", frame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_2b
    return-void

    :cond_3e
    move-object/from16 v24, v14

    :goto_2c
    iget-object v0, v10, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "updateSurface: surface is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    return-void
.end method

.method public blacklist vriDrawStarted(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
