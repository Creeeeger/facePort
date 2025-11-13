.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final blacklist DEBUG_POSITION:Z

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

.field greylist mFormat:I

.field private final blacklist mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mGlobalListenersAdded:Z

.field greylist mHaveFrame:Z

.field greylist-max-p mIsCreating:Z

.field private blacklist mIsWindowOpaque:Z

.field greylist-max-p mLastLockTime:J

.field greylist-max-o mLastSurfaceHeight:I

.field greylist-max-o mLastSurfaceWidth:I

.field greylist-max-o mLastWindowVisibility:Z

.field final greylist-max-o mLocation:[I

.field private blacklist mParentSurfaceSequenceId:I

.field private blacklist mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final greylist-max-o mRTLastReportedPosition:Landroid/graphics/Rect;

.field private final blacklist mRTLastReportedSurfaceSize:Landroid/graphics/Point;

.field private blacklist mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field greylist mRequestedFormat:I

.field greylist-max-p mRequestedHeight:I

.field greylist-max-o mRequestedVisible:Z

.field greylist-max-p mRequestedWidth:I

.field blacklist mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final greylist-max-o mScreenRect:Landroid/graphics/Rect;

.field private final greylist-max-o mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field greylist-max-o mSubLayer:I

.field final greylist mSurface:Landroid/view/Surface;

.field blacklist mSurfaceAlpha:F

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field final blacklist mSurfaceControlLock:Ljava/lang/Object;

.field greylist-max-o mSurfaceCreated:Z

.field private blacklist mSurfaceCreatedCount:I

.field private greylist-max-o mSurfaceFlags:I

.field final greylist-max-p mSurfaceFrame:Landroid/graphics/Rect;

.field greylist-max-o mSurfaceHeight:I

.field private final greylist mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final greylist mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final greylist-max-o mSurfaceSession:Landroid/view/SurfaceSession;

.field private final blacklist mSurfaceSyncer:Landroid/window/SurfaceSyncer;

.field greylist-max-o mSurfaceWidth:I

.field private final blacklist mSyncIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTag:Ljava/lang/String;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field blacklist mTransformHint:I

.field private blacklist mUpdateSurfaceCalledBy:I

.field blacklist mUseAlpha:Z

.field greylist-max-o mViewVisibility:Z

.field greylist-max-o mVisible:Z

.field greylist-max-o mWindowSpaceLeft:I

.field greylist-max-o mWindowSpaceTop:I

.field greylist-max-o mWindowStopped:Z

.field greylist-max-o mWindowVisibility:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$PgOqH-1CHTj5xz7zBHK88fj8o94(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$st27mCkd9jfJkTrN_P3qIGKX6NY(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedSurfaceSize:Landroid/graphics/Point;

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

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 132
    sput-boolean v0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 285
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 289
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 293
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 296
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 297
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "disableBackgroundLayer"    # Z

    .line 302
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 139
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 141
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 150
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 151
    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 158
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 164
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    .line 165
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 169
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 171
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 184
    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 185
    iput v1, p0, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    .line 187
    const-string v2, "SurfaceView"

    iput-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 190
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 193
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 204
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 205
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 206
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 207
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 208
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 210
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 212
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 217
    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 220
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    .line 221
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 223
    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 225
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 227
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 228
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 231
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 232
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 233
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 234
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 235
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 237
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 239
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 241
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 242
    iput v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 247
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 249
    new-instance v1, Landroid/window/SurfaceSyncer;

    invoke-direct {v1}, Landroid/window/SurfaceSyncer;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    .line 250
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    .line 256
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 263
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 268
    new-instance v1, Landroid/view/RemoteAccessibilityController;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 271
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 280
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    .line 1483
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 1484
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedSurfaceSize:Landroid/graphics/Point;

    .line 1573
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1636
    new-instance v1, Landroid/view/SurfaceView$1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 303
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 304
    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 306
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

    .line 308
    return-void
.end method

.method private blacklist applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 1449
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1450
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1452
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

    .line 1455
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_0

    .line 1458
    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v2, "aOrMT: t.apply"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1462
    :goto_0
    return-void
.end method

.method private blacklist applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "fromReleaseSurfaces"    # Z

    .line 2037
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2038
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyTransactionOnVriDraw: vri = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2039
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fRS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2040
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " t = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2041
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

    .line 2038
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    if-eqz v0, :cond_2

    .line 2044
    if-eqz p2, :cond_1

    .line 2045
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v2, "applyTransactionOnVriDraw: viewRoot.applyTransactionOnDrawFromReleaseSurfaces"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDrawFromReleaseSurfaces(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_1

    .line 2048
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_1

    .line 2051
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2053
    :goto_1
    return-void
.end method

.method private blacklist clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 618
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 619
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 620
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 623
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v7, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFF)V

    goto :goto_0

    .line 632
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFF)V

    .line 634
    :goto_0
    return-void
.end method

.method private blacklist copySurface(ZZ)V
    .locals 3
    .param p1, "surfaceControlCreated"    # Z
    .param p2, "bufferSizeChanged"    # Z

    .line 1280
    if-eqz p2, :cond_0

    .line 1281
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1282
    .local v0, "needsWorkaround":Z
    :goto_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 1283
    return-void

    .line 1285
    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1287
    if-eqz p1, :cond_2

    .line 1288
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    goto :goto_1

    .line 1297
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1291
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1292
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_3

    .line 1293
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1297
    :goto_2
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1298
    throw v1

    .line 1297
    :cond_3
    :goto_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1298
    nop

    .line 1299
    return-void
.end method

.method private blacklist createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1335
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 1337
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1338
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1339
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBoundsLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1340
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1341
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1345
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 1346
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

    .line 1347
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1348
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1349
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 1350
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1351
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1353
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_2

    .line 1357
    :cond_1
    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1358
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

    .line 1359
    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1360
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1363
    :goto_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_4

    .line 1364
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

    .line 1365
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1366
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1367
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1368
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1369
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1370
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1376
    :cond_4
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_5

    .line 1377
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1379
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1380
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1382
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1383
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1384
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 1385
    return-void
.end method

.method private blacklist getFixedAlpha()F
    .locals 2

    .line 430
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 431
    .local v0, "alpha":F
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    return v1
.end method

.method private greylist-max-o getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .line 1577
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1578
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 1579
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1580
    monitor-exit v0

    .line 1581
    return-object v1

    .line 1580
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .locals 2
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    .line 1197
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/SurfaceView$$ExternalSyntheticLambda6;-><init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncer$SyncTarget;)V

    .line 1208
    return-void
.end method

.method private blacklist handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .locals 4
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;

    .line 1211
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/lang/Runnable;)I

    move-result v0

    .line 1213
    .local v0, "syncId":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;I)V

    invoke-virtual {v1, v0, v2}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    .line 1221
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    invoke-virtual {v1, v0}, Landroid/window/SurfaceSyncer;->markSyncReady(I)V

    .line 1222
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1223
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1224
    monitor-exit v1

    .line 1225
    return-void

    .line 1224
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 4
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1965
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 1966
    .local v0, "connection":Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1, v0}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1967
    return-void

    .line 1969
    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 1970
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    .line 1969
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    .line 1972
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 1973
    return-void
.end method

.method private greylist-max-o isAboveParent()Z
    .locals 1

    .line 1606
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist notifySurfaceDestroyed()V
    .locals 5

    .line 1976
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1977
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_0
    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1980
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
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

    .line 1983
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1984
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1983
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1997
    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1998
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 2001
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_2
    return-void
.end method

.method private greylist-max-o onDrawFinished()V
    .locals 2

    .line 1388
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v1, "finishedDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_0
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda8;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method private greylist-max-o performDrawFinished()V
    .locals 1

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 465
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 467
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 469
    :cond_0
    return-void
.end method

.method private blacklist performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZLandroid/view/SurfaceControl$Transaction;)Z
    .locals 13
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p3, "creating"    # Z
    .param p4, "sizeChanged"    # Z
    .param p5, "hintChanged"    # Z
    .param p6, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 880
    move-object v7, p0

    move-object v8, p2

    move-object/from16 v9, p6

    const/4 v10, 0x0

    .line 882
    .local v10, "realSizeChanged":Z
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mVisible:Z

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    iput-boolean v0, v7, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 884
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Cur surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    if-eqz p3, :cond_1

    .line 893
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 894
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_1

    .line 895
    invoke-direct {p0, v9, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 898
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result v0

    iput v0, v7, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    .line 900
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 903
    :cond_2
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 908
    :goto_0
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 909
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 910
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_3

    .line 911
    invoke-direct {p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v0

    .line 912
    .local v0, "alpha":F
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 913
    iput v0, v7, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 916
    .end local v0    # "alpha":F
    :cond_3
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 917
    if-nez p4, :cond_4

    if-eqz p5, :cond_5

    :cond_4
    if-nez p3, :cond_5

    .line 918
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 920
    :cond_5
    const/4 v12, 0x0

    if-nez p4, :cond_6

    if-nez p3, :cond_6

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_a

    .line 925
    :cond_6
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_7

    iget-object v0, v7, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 926
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v7, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 928
    :cond_7
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 932
    :goto_1
    iget-object v0, v7, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pST: sr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, v7, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 939
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 942
    iget v0, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V

    goto :goto_2

    .line 944
    :cond_8
    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 947
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v5, v0, v1

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 948
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 944
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v6}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 950
    :goto_2
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    if-eqz v0, :cond_a

    .line 951
    iget-object v0, v7, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 954
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "RenderWorker"

    goto :goto_3

    :cond_9
    const-string v2, "UI Thread"

    :goto_3
    aput-object v2, v1, v12

    iget-object v2, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 955
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x2

    iget-object v3, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 956
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 951
    const-string/jumbo v2, "performSurfaceTransaction %s position = [%d, %d, %d, %d] surfaceSize = %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_a
    invoke-direct {p0, v9, v12}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 960
    invoke-virtual {p0, v12}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 961
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 962
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 963
    if-nez v8, :cond_b

    .line 964
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 965
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 967
    :cond_b
    iget v0, v8, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 968
    .local v0, "appInvertedScale":F
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 969
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 971
    .end local v0    # "appInvertedScale":F
    :goto_4
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 972
    .local v0, "surfaceWidth":I
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 973
    .local v1, "surfaceHeight":I
    iget v2, v7, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v2, v0, :cond_d

    iget v2, v7, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v2, v1, :cond_c

    goto :goto_5

    :cond_c
    move v11, v12

    :cond_d
    :goto_5
    move v2, v11

    .line 975
    .end local v10    # "realSizeChanged":Z
    .local v2, "realSizeChanged":Z
    iput v0, v7, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 976
    iput v1, v7, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 978
    return v2
.end method

.method private blacklist redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "callbacksCollected"    # Ljava/lang/Runnable;

    .line 1229
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {v0, p2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 1230
    .local v0, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 1231
    return-void
.end method

.method private blacklist releaseSurfaces(Z)V
    .locals 7
    .param p1, "releaseSurfacePackage"    # Z

    .line 825
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 826
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 828
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 831
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 834
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 835
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 838
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v4, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "releaseSurfaces: viewRoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

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

    .line 840
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    .line 841
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 842
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 844
    :cond_2
    iget-object v4, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_3

    .line 845
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 846
    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 848
    :cond_3
    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_4

    .line 849
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 850
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 853
    :cond_4
    if-eqz p1, :cond_5

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v4, :cond_5

    .line 854
    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 855
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 858
    :cond_5
    const/4 v2, 0x1

    invoke-direct {p0, v3, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 859
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    monitor-exit v0

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1931
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 1932
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1935
    :cond_0
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 1936
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1937
    return-void

    .line 1933
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist replacePositionUpdateListener(II)V
    .locals 2
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .line 870
    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 873
    :cond_0
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 874
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 875
    return-void
.end method

.method private greylist-max-o runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1585
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1586
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1587
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1589
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1591
    :goto_0
    return-void
.end method

.method private blacklist setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1302
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1303
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1307
    :cond_0
    return-void
.end method

.method private blacklist setWindowStopped(Z)V
    .locals 4
    .param p1, "stopped"    # Z

    .line 325
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 326
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 328
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 329
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 330
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 331
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

    .line 332
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 336
    return-void
.end method

.method private blacklist updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 818
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 819
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 820
    .local v0, "colorComponents":[F
    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 821
    return-object p1
.end method

.method private blacklist updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 800
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 801
    return-void

    .line 803
    :cond_0
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_2

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v1, :cond_2

    .line 806
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 807
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 808
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 810
    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 815
    :goto_0
    return-void
.end method

.method private greylist-max-o updateOpaqueFlag()V
    .locals 1

    .line 792
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 795
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 797
    :goto_0
    return-void
.end method

.method private blacklist updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1880
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1881
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 1883
    return-void

    .line 1885
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1886
    .local v1, "viewRootControl":Landroid/view/SurfaceControl;
    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1887
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1888
    return-void
.end method

.method private greylist-max-o updateRequestedVisibility()V
    .locals 1

    .line 321
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

    .line 322
    return-void
.end method

.method private blacklist updateSurfaceAlpha()V
    .locals 5

    .line 435
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 442
    .local v0, "viewAlpha":F
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 443
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v2, " updateSurfaceAlpha: translucent color is not supported for a surface placed z-below."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 447
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_3

    .line 448
    sget-boolean v2, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 449
    iget-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v3, " updateSurfaceAlpha: ViewRootImpl not available."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_2
    return-void

    .line 453
    :cond_3
    invoke-direct {p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v2

    .line 454
    .local v2, "alpha":F
    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_4

    .line 455
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 456
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 457
    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 458
    invoke-virtual {p0}, Landroid/view/SurfaceView;->damageInParent()V

    .line 459
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 461
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_4
    return-void

    .line 436
    .end local v0    # "viewAlpha":F
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "alpha":F
    :cond_5
    :goto_0
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 437
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v1, " updateSurfaceAlpha: setUseAlpha() is not called, ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_6
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 570
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 574
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 577
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 578
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 558
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 565
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 566
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    .line 531
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 535
    :cond_0
    const/4 v0, 0x1

    .line 536
    .local v0, "opaque":Z
    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    .line 538
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_0

    .line 539
    :cond_1
    if-eqz p1, :cond_2

    .line 540
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 541
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 542
    .local v2, "h":I
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 543
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 545
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    .line 546
    .local v4, "l":I
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 547
    .local v3, "t":I
    add-int v8, v4, v1

    add-int v9, v3, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v4

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 550
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "t":I
    .end local v4    # "l":I
    :cond_2
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 551
    const/4 v0, 0x0

    .line 553
    :cond_3
    return v0

    .line 532
    .end local v0    # "opaque":Z
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public blacklist getCornerRadius()F
    .locals 1

    .line 660
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public whitelist getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 317
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public whitelist getHostToken()Landroid/os/IBinder;
    .locals 2

    .line 1839
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1840
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 1841
    const/4 v1, 0x0

    return-object v1

    .line 1843
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getImportantForAccessibility()I
    .locals 2

    .line 1953
    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 1957
    .local v0, "mode":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1959
    :cond_1
    return v0

    .line 1961
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 1829
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfaceRenderPosition()Landroid/graphics/Rect;
    .locals 1

    .line 1445
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist isFixedSize()Z
    .locals 2

    .line 1602
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

    .line 709
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$handleSyncBufferCallback$1$android-view-SurfaceView(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 2
    .param p1, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p2, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_0

    .line 1201
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    .line 1202
    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1205
    :cond_0
    invoke-interface {p2, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 1206
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1207
    return-void
.end method

.method synthetic blacklist lambda$handleSyncBufferCallback$2$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 1
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p3, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1198
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$handleSyncNoBuffer$3$android-view-SurfaceView(Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V
    .locals 3
    .param p1, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;
    .param p2, "syncId"    # I

    .line 1215
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 1216
    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1217
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1218
    monitor-exit v0

    .line 1219
    return-void

    .line 1218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$handleSyncNoBuffer$4$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;ILandroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 1
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncId"    # I
    .param p3, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1213
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p2}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$new$0$android-view-SurfaceView()Z
    .locals 2

    .line 196
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

    .line 198
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 200
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 201
    return v1
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 340
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 342
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 345
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 346
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 348
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 349
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 350
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_1

    .line 351
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 352
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 353
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 354
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 356
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 4

    .line 473
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 479
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 483
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 484
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_1

    .line 485
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 486
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 487
    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 488
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 491
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 494
    const/4 v2, 0x4

    iput v2, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 496
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 498
    iget-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "onDetachedFromWindow: tryReleaseSurfaces()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 502
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 503
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 504
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2023
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2024
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2025
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2029
    :cond_0
    :try_start_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2030
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputToken()Landroid/os/IBinder;

    move-result-object v3

    .line 2029
    invoke-interface {v1, v2, v3, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2033
    goto :goto_0

    .line 2031
    :catch_0
    move-exception v1

    .line 2032
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v3, "Exception requesting focus on embedded window"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2034
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2026
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1942
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1943
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    return-void

    .line 1948
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    .line 1949
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 508
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 509
    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_0

    .line 510
    :cond_0
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_0
    nop

    .line 511
    .local v0, "width":I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 512
    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1

    .line 513
    :cond_1
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_1
    nop

    .line 514
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 515
    return-void
.end method

.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .locals 8
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "positionLeft"    # I
    .param p4, "positionTop"    # I
    .param p5, "postScaleX"    # F
    .param p6, "postScaleY"    # F

    .line 1412
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

    .line 1415
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1416
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1418
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 360
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 361
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 362
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 364
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 365
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 366
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 367
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

    .line 368
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 372
    return-void
.end method

.method public blacklist requestUpdateSurfacePositionAndScale()V
    .locals 8

    .line 1422
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1423
    return-void

    .line 1426
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

    .line 1429
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1430
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1433
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float v6, v1, v2

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1434
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 1430
    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1435
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1436
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1437
    return-void
.end method

.method public whitelist semResetRenderNodePosition()V
    .locals 0

    .line 1480
    return-void
.end method

.method public whitelist setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .line 421
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAlpha: mUseAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 425
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    .line 426
    return-void
.end method

.method public whitelist setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 4
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1914
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1916
    .local v0, "lastSc":Landroid/view/SurfaceControl;
    :goto_0
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1917
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2

    .line 1918
    if-eqz v0, :cond_1

    .line 1919
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1920
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 1922
    :cond_1
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 1923
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1925
    :cond_2
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1926
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1927
    return-void
.end method

.method public whitelist setClipBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 594
    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 596
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_1

    .line 602
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 606
    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 609
    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 611
    :goto_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 612
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 613
    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 614
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 615
    return-void

    .line 597
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F

    .line 644
    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    .line 645
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    .line 647
    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 648
    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 651
    return-void
.end method

.method public blacklist setEnableSurfaceClipping(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 588
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    .line 589
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 590
    return-void
.end method

.method protected greylist setFrame(IIII)Z
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 521
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 523
    .local v0, "result":Z
    const/4 v1, 0x5

    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 525
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 526
    return v0
.end method

.method public greylist-max-o setResizeBackgroundColor(I)V
    .locals 2
    .param p1, "bgColor"    # I

    .line 1617
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1618
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1619
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1620
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1621
    return-void
.end method

.method public blacklist setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bgColor"    # I

    .line 1629
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1630
    return-void

    .line 1632
    :cond_0
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1633
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1634
    return-void
.end method

.method public whitelist setSecure(Z)V
    .locals 5
    .param p1, "isSecure"    # Z

    .line 770
    if-eqz p1, :cond_2

    .line 773
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 774
    .local v0, "context":Landroid/content/Context;
    nop

    .line 775
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 777
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dexonpc_connection_state"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move v1, v2

    .line 779
    .local v1, "isDexForPcEnabled":Z
    if-eqz v1, :cond_1

    .line 780
    const-class v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 781
    .local v2, "dm":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 785
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "isDexForPcEnabled":Z
    .end local v2    # "dm":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    :cond_1
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_1

    .line 787
    :cond_2
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 789
    :goto_1
    return-void
.end method

.method public blacklist setUseAlpha()V
    .locals 1

    .line 405
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    .line 407
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    .line 409
    :cond_0
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 376
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 378
    iget-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 379
    .local v0, "newRequestedVisible":Z
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_2

    .line 386
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 388
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 390
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 392
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 393
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .line 675
    if-eqz p1, :cond_0

    .line 676
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 677
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .locals 2
    .param p1, "onTop"    # Z

    .line 698
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

    .line 700
    .local v0, "allowDynamicChange":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    .line 701
    return-void
.end method

.method public blacklist setZOrderedOnTop(ZZ)Z
    .locals 4
    .param p1, "onTop"    # Z
    .param p2, "allowDynamicChange"    # Z

    .line 730
    if-eqz p1, :cond_0

    .line 731
    const/4 v0, 0x1

    .local v0, "subLayer":I
    goto :goto_0

    .line 733
    .end local v0    # "subLayer":I
    :cond_0
    const/4 v0, -0x2

    .line 735
    .restart local v0    # "subLayer":I
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 736
    return v2

    .line 738
    :cond_1
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 740
    if-nez p2, :cond_2

    .line 741
    return v2

    .line 743
    :cond_2
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 744
    return v2

    .line 746
    :cond_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 747
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_4

    .line 748
    return v2

    .line 750
    :cond_4
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 751
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-direct {p0, v3}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 752
    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 753
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 754
    return v2
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1853
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 1854
    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .locals 1

    .line 1863
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 1864
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    .line 1865
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1874
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 1875
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 1877
    :cond_0
    return-void
.end method

.method public blacklist surfaceSyncStarted()V
    .locals 5

    .line 1238
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1239
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 1240
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1241
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1242
    .local v3, "syncId":I
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->mergeSync(ILandroid/window/SurfaceSyncer;)V

    .line 1243
    .end local v3    # "syncId":I
    goto :goto_0

    .line 1244
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1246
    :cond_1
    :goto_1
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

    .line 2059
    .local p1, "t":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    .line 2060
    return-void
.end method

.method blacklist updateEmbeddedAccessibilityMatrix(Z)V
    .locals 4
    .param p1, "force"    # Z

    .line 2004
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    return-void

    .line 2007
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2012
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2013
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2014
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2015
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 2016
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2015
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2017
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    .line 2018
    return-void
.end method

.method protected greylist-max-o updateSurface()V
    .locals 34

    .line 983
    move-object/from16 v8, p0

    const-string v9, " h="

    const-string v10, " w="

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_1

    .line 984
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "updateSurface: has no frame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    return-void

    .line 989
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    .line 991
    .local v11, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v11, :cond_2

    .line 992
    return-void

    .line 995
    :cond_2
    iget-object v0, v11, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v12, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, v11, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v31, v11

    goto/16 :goto_27

    .line 1002
    :cond_3
    iget-object v13, v11, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 1003
    .local v13, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    if-eqz v13, :cond_4

    .line 1004
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v13}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 1007
    :cond_4
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1008
    .local v0, "myWidth":I
    if-gtz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :cond_5
    move v14, v0

    .line 1009
    .end local v0    # "myWidth":I
    .local v14, "myWidth":I
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1010
    .local v0, "myHeight":I
    if-gtz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_6
    move v15, v0

    .line 1012
    .end local v0    # "myHeight":I
    .local v15, "myHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v16

    .line 1013
    .local v16, "alpha":F
    iget v0, v8, Landroid/view/SurfaceView;->mFormat:I

    iget v1, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v12

    :goto_0
    move v6, v0

    .line 1014
    .local v6, "formatChanged":Z
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v12

    :goto_1
    move v5, v0

    .line 1015
    .local v5, "visibleChanged":Z
    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v12

    :goto_2
    move v4, v0

    .line 1016
    .local v4, "alphaChanged":Z
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    if-nez v6, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v12

    :goto_3
    move v3, v0

    .line 1018
    .local v3, "creating":Z
    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v14, :cond_d

    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v15, :cond_c

    goto :goto_4

    :cond_c
    move v0, v12

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v2, v0

    .line 1019
    .local v2, "sizeChanged":Z
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    move v0, v12

    :goto_6
    move/from16 v17, v0

    .line 1021
    .local v17, "windowVisibleChanged":Z
    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->isWindowOpaque()Z

    move-result v1

    .line 1022
    .local v1, "isWindowOpaque":Z
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    move v0, v12

    :goto_7
    move/from16 v18, v0

    .line 1023
    .local v18, "windowOpacityChanged":Z
    if-eqz v18, :cond_10

    .line 1024
    iput-boolean v1, v8, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    .line 1028
    :cond_10
    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 1029
    iget v0, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v7, v8, Landroid/view/SurfaceView;->mLocation:[I

    move/from16 v20, v1

    .end local v1    # "isWindowOpaque":Z
    .local v20, "isWindowOpaque":Z
    aget v1, v7, v12

    if-ne v0, v1, :cond_12

    iget v0, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    const/4 v1, 0x1

    aget v7, v7, v1

    if-eq v0, v7, :cond_11

    goto :goto_8

    :cond_11
    move v0, v12

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v0, 0x1

    :goto_9
    move/from16 v21, v0

    .line 1031
    .local v21, "positionChanged":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 1032
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_13

    goto :goto_a

    :cond_13
    move v0, v12

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v0, 0x1

    :goto_b
    move/from16 v22, v0

    .line 1033
    .local v22, "layoutSizeChanged":Z
    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iget v1, v8, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v0, v1, :cond_15

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    move v0, v12

    :goto_c
    move v7, v0

    .line 1036
    .local v7, "hintChanged":Z
    if-nez v3, :cond_18

    if-nez v6, :cond_18

    if-nez v2, :cond_18

    if-nez v5, :cond_18

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_16

    if-nez v4, :cond_18

    :cond_16
    if-nez v17, :cond_18

    if-nez v21, :cond_18

    if-nez v22, :cond_18

    if-nez v7, :cond_18

    if-eqz v18, :cond_17

    goto :goto_d

    :cond_17
    move/from16 v30, v4

    move/from16 v25, v6

    move/from16 v19, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v13

    move v4, v3

    move v11, v5

    move v5, v2

    goto/16 :goto_26

    .line 1041
    :cond_18
    :goto_d
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v1, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v9

    const-string v9, "Changes: creating="

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " format="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " size="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " visible="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v25, v6

    .end local v6    # "formatChanged":Z
    .local v25, "formatChanged":Z
    const-string v6, " alpha="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " hint="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " mUseAlpha="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, v8, Landroid/view/SurfaceView;->mUseAlpha:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " left="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v12, v8, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v23, 0x0

    aget v12, v12, v23

    if-eq v9, v12, :cond_19

    const/4 v9, 0x1

    goto :goto_e

    :cond_19
    const/4 v9, 0x0

    :goto_e
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " top="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v12, v8, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v19, 0x1

    aget v12, v12, v19

    if-eq v9, v12, :cond_1a

    const/4 v9, 0x1

    goto :goto_f

    :cond_1a
    const/4 v9, 0x0

    :goto_f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .end local v25    # "formatChanged":Z
    .restart local v6    # "formatChanged":Z
    :cond_1b
    move/from16 v25, v6

    move-object/from16 v24, v9

    .line 1051
    .end local v6    # "formatChanged":Z
    .restart local v25    # "formatChanged":Z
    :goto_10
    :try_start_0
    iget-boolean v1, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v1, v8, Landroid/view/SurfaceView;->mVisible:Z

    .line 1052
    iget-object v1, v8, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x0

    aget v9, v1, v6

    iput v9, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 1053
    const/4 v9, 0x1

    aget v1, v1, v9

    iput v1, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 1054
    iput v14, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 1055
    iput v15, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 1056
    iget v1, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v1, v8, Landroid/view/SurfaceView;->mFormat:I

    .line 1057
    iget-boolean v1, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v1, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 1058
    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v1

    iput v1, v8, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1060
    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v6, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 1061
    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v6, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 1062
    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v6, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 1063
    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v6, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1064
    if-eqz v13, :cond_1c

    .line 1065
    :try_start_1
    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_11

    .line 1175
    :catch_0
    move-exception v0

    move/from16 v30, v4

    move/from16 v19, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v13

    move-object/from16 v6, v24

    move v4, v3

    move v11, v5

    move v5, v2

    goto/16 :goto_24

    .line 1068
    :cond_1c
    :goto_11
    :try_start_2
    iget-object v1, v11, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object v12, v1

    .line 1069
    .local v12, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v9, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1072
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object v9, v1

    .line 1073
    .local v9, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v3, :cond_1d

    .line 1074
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SurfaceView["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "]@"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v8, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "name":Ljava/lang/String;
    invoke-direct {v8, v11, v1, v9}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "name":Ljava/lang/String;
    goto :goto_12

    .line 1080
    :cond_1d
    :try_start_4
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-nez v1, :cond_1e

    .line 1081
    return-void

    .line 1080
    :cond_1e
    :goto_12
    nop

    .line 1084
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    if-nez v7, :cond_20

    :try_start_5
    iget-boolean v1, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v1, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v1, 0x0

    goto :goto_14

    :cond_20
    :goto_13
    const/4 v1, 0x1

    :goto_14
    move/from16 v26, v1

    .line 1086
    .local v26, "redrawNeeded":Z
    if-eqz v26, :cond_21

    .line 1087
    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    .line 1090
    .local v1, "shouldSyncBuffer":Z
    :goto_15
    :try_start_6
    instance-of v6, v8, Landroid/opengl/GLSurfaceView;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v6, :cond_22

    :try_start_7
    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->isSyncBuffer()Z

    move-result v6

    if-nez v6, :cond_22

    .line 1091
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    move/from16 v27, v1

    .end local v1    # "shouldSyncBuffer":Z
    .local v27, "shouldSyncBuffer":Z
    const/4 v1, 0x5

    if-ne v6, v1, :cond_23

    .line 1092
    iget-object v1, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "updateSurface shouldSyncBuffer set to false"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1093
    const/4 v1, 0x0

    move/from16 v27, v1

    .end local v27    # "shouldSyncBuffer":Z
    .restart local v1    # "shouldSyncBuffer":Z
    goto :goto_16

    .line 1090
    :cond_22
    move/from16 v27, v1

    .line 1097
    .end local v1    # "shouldSyncBuffer":Z
    .restart local v27    # "shouldSyncBuffer":Z
    :cond_23
    :goto_16
    const/4 v1, 0x0

    .line 1098
    .local v1, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    if-eqz v27, :cond_24

    .line 1099
    :try_start_8
    new-instance v6, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    move-object/from16 v28, v1

    .end local v1    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v28, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    const/4 v1, 0x0

    invoke-direct {v6, v1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback-IA;)V

    move-object v1, v6

    .line 1100
    .end local v28    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v1    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    iget-object v6, v8, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1102
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move/from16 v29, v2

    .end local v2    # "sizeChanged":Z
    .local v29, "sizeChanged":Z
    :try_start_9
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    .line 1100
    move-object/from16 v28, v1

    const/4 v1, 0x0

    .end local v1    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v28    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    invoke-virtual {v6, v1, v2}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v6, v28

    goto :goto_17

    .line 1175
    .end local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v12    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v26    # "redrawNeeded":Z
    .end local v27    # "shouldSyncBuffer":Z
    .end local v28    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :catch_1
    move-exception v0

    move/from16 v30, v4

    move/from16 v19, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v13

    move-object/from16 v6, v24

    move v4, v3

    move v11, v5

    move/from16 v5, v29

    goto/16 :goto_24

    .end local v29    # "sizeChanged":Z
    .restart local v2    # "sizeChanged":Z
    :catch_2
    move-exception v0

    move/from16 v30, v4

    move/from16 v19, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v13

    move-object/from16 v6, v24

    move v4, v3

    move v11, v5

    move v5, v2

    .end local v2    # "sizeChanged":Z
    .restart local v29    # "sizeChanged":Z
    goto/16 :goto_24

    .line 1098
    .end local v29    # "sizeChanged":Z
    .restart local v1    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v2    # "sizeChanged":Z
    .restart local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v12    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v26    # "redrawNeeded":Z
    .restart local v27    # "shouldSyncBuffer":Z
    :cond_24
    move-object/from16 v28, v1

    move/from16 v29, v2

    .end local v1    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v2    # "sizeChanged":Z
    .restart local v28    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v29    # "sizeChanged":Z
    move-object/from16 v6, v28

    .line 1105
    .end local v28    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v6, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :goto_17
    move-object/from16 v1, p0

    move/from16 v28, v29

    .end local v29    # "sizeChanged":Z
    .local v28, "sizeChanged":Z
    move-object v2, v11

    move/from16 v29, v3

    .end local v3    # "creating":Z
    .local v29, "creating":Z
    move-object v3, v13

    move/from16 v30, v4

    .end local v4    # "alphaChanged":Z
    .local v30, "alphaChanged":Z
    move/from16 v4, v29

    move-object/from16 v31, v11

    move v11, v5

    .end local v5    # "visibleChanged":Z
    .local v11, "visibleChanged":Z
    .local v31, "viewRoot":Landroid/view/ViewRootImpl;
    move/from16 v5, v28

    move-object/from16 v32, v12

    move-object v12, v6

    .end local v6    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v12, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v32, "surfaceInsets":Landroid/graphics/Rect;
    move v6, v7

    move/from16 v19, v7

    move-object/from16 v33, v13

    const/4 v13, 0x1

    .end local v7    # "hintChanged":Z
    .end local v13    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v19, "hintChanged":Z
    .local v33, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    move-object v7, v9

    :try_start_a
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZLandroid/view/SurfaceControl$Transaction;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1109
    .local v1, "realSizeChanged":Z
    const/4 v2, 0x0

    .line 1111
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v3, v29

    .line 1112
    .local v3, "surfaceChanged":Z
    :try_start_b
    iget-boolean v4, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v4, :cond_26

    if-nez v3, :cond_25

    :try_start_c
    iget-boolean v4, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v4, :cond_26

    if-eqz v11, :cond_26

    .line 1113
    :cond_25
    const/4 v4, 0x0

    iput-boolean v4, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1114
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_18

    .line 1170
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "surfaceChanged":Z
    :catchall_0
    move-exception v0

    move-object/from16 v6, v24

    move/from16 v5, v28

    move/from16 v4, v29

    move/from16 v24, v1

    goto/16 :goto_23

    .line 1117
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v3    # "surfaceChanged":Z
    :cond_26
    :goto_18
    move/from16 v5, v28

    move/from16 v4, v29

    .end local v28    # "sizeChanged":Z
    .end local v29    # "creating":Z
    .local v4, "creating":Z
    .local v5, "sizeChanged":Z
    :try_start_d
    invoke-direct {v8, v4, v5}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    .line 1119
    iget-object v6, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateSurface: mVisible = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v13, v8, Landroid/view/SurfaceView;->mVisible:Z

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " mSurface.isValid() = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v13, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-boolean v6, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v6, :cond_35

    iget-object v6, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1123
    iget-object v6, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateSurface: mSurfaceCreated = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v13, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " surfaceChanged = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " visibleChanged = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-boolean v6, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const-string v7, " "

    const-string v13, " #"

    if-nez v6, :cond_2b

    if-nez v3, :cond_28

    if-eqz v11, :cond_27

    goto :goto_19

    :cond_27
    move/from16 v28, v3

    goto :goto_1b

    .line 1127
    :cond_28
    :goto_19
    const/4 v6, 0x1

    :try_start_e
    iput-boolean v6, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1128
    iput-boolean v6, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1129
    if-eqz v0, :cond_29

    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "visibleChanged -- surfaceCreated"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_29
    if-nez v2, :cond_2a

    .line 1131
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    move-object v2, v0

    .line 1134
    :cond_2a
    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v3

    .end local v3    # "surfaceChanged":Z
    .local v28, "surfaceChanged":Z
    const-string/jumbo v3, "surfaceCreated "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v8, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v8, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    array-length v0, v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_2c

    aget-object v6, v2, v3

    .line 1138
    .local v6, "c":Landroid/view/SurfaceHolder$Callback;
    move/from16 v29, v0

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1137
    .end local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v29

    goto :goto_1a

    .line 1170
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v28    # "surfaceChanged":Z
    :catchall_1
    move-exception v0

    move-object/from16 v6, v24

    move/from16 v24, v1

    goto/16 :goto_23

    .line 1126
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v3    # "surfaceChanged":Z
    :cond_2b
    move/from16 v28, v3

    .line 1141
    .end local v3    # "surfaceChanged":Z
    .restart local v28    # "surfaceChanged":Z
    :cond_2c
    :goto_1b
    if-nez v4, :cond_2e

    if-nez v25, :cond_2e

    if-nez v5, :cond_2e

    if-nez v19, :cond_2e

    if-nez v11, :cond_2e

    if-eqz v1, :cond_2d

    goto :goto_1c

    :cond_2d
    move-object/from16 v6, v24

    move/from16 v24, v1

    goto/16 :goto_20

    .line 1143
    :cond_2e
    :goto_1c
    :try_start_f
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v0, :cond_2f

    :try_start_10
    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "surfaceChanged -- format="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v8, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v6, v24

    :try_start_11
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_2f
    move-object/from16 v6, v24

    .line 1145
    :goto_1d
    if-nez v2, :cond_30

    .line 1146
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-object v2, v0

    goto :goto_1e

    .line 1170
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v28    # "surfaceChanged":Z
    :catchall_2
    move-exception v0

    move/from16 v24, v1

    goto/16 :goto_23

    .line 1149
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "surfaceChanged":Z
    :cond_30
    :goto_1e
    :try_start_12
    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move/from16 v24, v1

    .end local v1    # "realSizeChanged":Z
    .local v24, "realSizeChanged":Z
    :try_start_13
    const-string/jumbo v1, "surfaceChanged ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    array-length v0, v2

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_31

    aget-object v3, v2, v1

    .line 1153
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v7, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v13, v8, Landroid/view/SurfaceView;->mFormat:I

    invoke-interface {v3, v7, v13, v14, v15}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1152
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1156
    :cond_31
    :goto_20
    if-eqz v26, :cond_36

    .line 1157
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_32

    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "surfaceRedrawNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_32
    if-nez v2, :cond_33

    .line 1159
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    move-object v2, v0

    .line 1162
    :cond_33
    if-eqz v27, :cond_34

    .line 1163
    invoke-direct {v8, v2, v12}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_21

    .line 1165
    :cond_34
    invoke-direct {v8, v2}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_21

    .line 1170
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v28    # "surfaceChanged":Z
    :catchall_3
    move-exception v0

    goto :goto_23

    .end local v24    # "realSizeChanged":Z
    .restart local v1    # "realSizeChanged":Z
    :catchall_4
    move-exception v0

    goto :goto_22

    .line 1121
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v3, "surfaceChanged":Z
    :cond_35
    move/from16 v28, v3

    move-object/from16 v6, v24

    move/from16 v24, v1

    .line 1170
    .end local v1    # "realSizeChanged":Z
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "surfaceChanged":Z
    .restart local v24    # "realSizeChanged":Z
    :cond_36
    :goto_21
    const/4 v1, 0x0

    :try_start_14
    iput-boolean v1, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1171
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_37

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_37

    .line 1172
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1177
    .end local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v12    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v24    # "realSizeChanged":Z
    .end local v26    # "redrawNeeded":Z
    .end local v27    # "shouldSyncBuffer":Z
    .end local v32    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_37
    goto :goto_25

    .line 1170
    .restart local v1    # "realSizeChanged":Z
    .restart local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v12    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v26    # "redrawNeeded":Z
    .restart local v27    # "shouldSyncBuffer":Z
    .restart local v32    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_5
    move-exception v0

    move-object/from16 v6, v24

    :goto_22
    move/from16 v24, v1

    .end local v1    # "realSizeChanged":Z
    .restart local v24    # "realSizeChanged":Z
    goto :goto_23

    .end local v4    # "creating":Z
    .end local v5    # "sizeChanged":Z
    .end local v24    # "realSizeChanged":Z
    .restart local v1    # "realSizeChanged":Z
    .local v28, "sizeChanged":Z
    .restart local v29    # "creating":Z
    :catchall_6
    move-exception v0

    move-object/from16 v6, v24

    move/from16 v5, v28

    move/from16 v4, v29

    move/from16 v24, v1

    .end local v1    # "realSizeChanged":Z
    .end local v28    # "sizeChanged":Z
    .end local v29    # "creating":Z
    .restart local v4    # "creating":Z
    .restart local v5    # "sizeChanged":Z
    .restart local v24    # "realSizeChanged":Z
    :goto_23
    const/4 v1, 0x0

    iput-boolean v1, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1171
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_38

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v1, :cond_38

    .line 1172
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1174
    :cond_38
    nop

    .end local v4    # "creating":Z
    .end local v5    # "sizeChanged":Z
    .end local v11    # "visibleChanged":Z
    .end local v14    # "myWidth":I
    .end local v15    # "myHeight":I
    .end local v16    # "alpha":F
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "windowOpacityChanged":Z
    .end local v19    # "hintChanged":Z
    .end local v20    # "isWindowOpaque":Z
    .end local v21    # "positionChanged":Z
    .end local v22    # "layoutSizeChanged":Z
    .end local v25    # "formatChanged":Z
    .end local v30    # "alphaChanged":Z
    .end local v31    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v33    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local p0    # "this":Landroid/view/SurfaceView;
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 1175
    .end local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v12    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v24    # "realSizeChanged":Z
    .end local v26    # "redrawNeeded":Z
    .end local v27    # "shouldSyncBuffer":Z
    .end local v32    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v4    # "creating":Z
    .restart local v5    # "sizeChanged":Z
    .restart local v11    # "visibleChanged":Z
    .restart local v14    # "myWidth":I
    .restart local v15    # "myHeight":I
    .restart local v16    # "alpha":F
    .restart local v17    # "windowVisibleChanged":Z
    .restart local v18    # "windowOpacityChanged":Z
    .restart local v19    # "hintChanged":Z
    .restart local v20    # "isWindowOpaque":Z
    .restart local v21    # "positionChanged":Z
    .restart local v22    # "layoutSizeChanged":Z
    .restart local v25    # "formatChanged":Z
    .restart local v30    # "alphaChanged":Z
    .restart local v31    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v33    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local p0    # "this":Landroid/view/SurfaceView;
    :catch_3
    move-exception v0

    goto :goto_24

    .end local v4    # "creating":Z
    .end local v5    # "sizeChanged":Z
    .restart local v28    # "sizeChanged":Z
    .restart local v29    # "creating":Z
    :catch_4
    move-exception v0

    move-object/from16 v6, v24

    move/from16 v5, v28

    move/from16 v4, v29

    .end local v28    # "sizeChanged":Z
    .end local v29    # "creating":Z
    .restart local v4    # "creating":Z
    .restart local v5    # "sizeChanged":Z
    goto :goto_24

    .end local v19    # "hintChanged":Z
    .end local v30    # "alphaChanged":Z
    .end local v31    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v33    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v2, "sizeChanged":Z
    .local v3, "creating":Z
    .local v4, "alphaChanged":Z
    .local v5, "visibleChanged":Z
    .restart local v7    # "hintChanged":Z
    .local v11, "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v13    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_5
    move-exception v0

    move/from16 v30, v4

    move/from16 v19, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v13

    move-object/from16 v6, v24

    move v4, v3

    move v11, v5

    move v5, v2

    .line 1176
    .end local v2    # "sizeChanged":Z
    .end local v3    # "creating":Z
    .end local v7    # "hintChanged":Z
    .end local v13    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v0, "ex":Ljava/lang/Exception;
    .local v4, "creating":Z
    .local v5, "sizeChanged":Z
    .local v11, "visibleChanged":Z
    .restart local v19    # "hintChanged":Z
    .restart local v30    # "alphaChanged":Z
    .restart local v31    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v33    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :goto_24
    iget-object v1, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v2, "Exception configuring surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_25
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_39

    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1180
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_39
    :goto_26
    return-void

    .line 995
    .end local v4    # "creating":Z
    .end local v5    # "sizeChanged":Z
    .end local v14    # "myWidth":I
    .end local v15    # "myHeight":I
    .end local v16    # "alpha":F
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "windowOpacityChanged":Z
    .end local v19    # "hintChanged":Z
    .end local v20    # "isWindowOpaque":Z
    .end local v21    # "positionChanged":Z
    .end local v22    # "layoutSizeChanged":Z
    .end local v25    # "formatChanged":Z
    .end local v30    # "alphaChanged":Z
    .end local v31    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v33    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v11, "viewRoot":Landroid/view/ViewRootImpl;
    :cond_3a
    move-object/from16 v31, v11

    .line 996
    .end local v11    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v31    # "viewRoot":Landroid/view/ViewRootImpl;
    :goto_27
    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "updateSurface: surface is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    .line 998
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 999
    return-void
.end method
