.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# static fields
.field private static final blacklist MSG_REFRESH_CACHED_WALLPAPER:I = 0x2

.field private static final blacklist MSG_SWITCH_DISPLAY:I = 0x1


# instance fields
.field blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final greylist-max-o mClockFunction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field greylist-max-o mCreated:Z

.field greylist-max-o mCurHeight:I

.field greylist-max-o mCurWidth:I

.field greylist-max-o mCurWindowFlags:I

.field greylist-max-o mCurWindowPrivateFlags:I

.field private blacklist mDefaultDimAmount:F

.field greylist-max-o mDestroyed:Z

.field final greylist-max-o mDispatchedContentInsets:Landroid/graphics/Rect;

.field greylist-max-o mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

.field final greylist-max-o mDispatchedStableInsets:Landroid/graphics/Rect;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private blacklist mDisplayContext:Landroid/content/Context;

.field private blacklist mDisplayHandler:Landroid/os/Handler;

.field private blacklist mDisplayInstallOrientation:I

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private greylist-max-o mDisplayState:I

.field greylist-max-o mDrawingAllowed:Z

.field greylist-max-o mFixedSizeAllowed:Z

.field greylist-max-o mFormat:I

.field private blacklist mFrozenRequested:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mHeight:I

.field greylist-max-o mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field greylist-max-o mInitializing:Z

.field greylist-max-o mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field final blacklist mInsetsState:Landroid/view/InsetsState;

.field greylist-max-o mIsCreating:Z

.field greylist-max-o mIsInAmbientMode:Z

.field blacklist mIsSleepMode:Z

.field protected blacklist mIsSupportInconsistencyWallpaper:Z

.field private greylist-max-o mLastColorInvalidation:J

.field blacklist mLastScreenshot:Landroid/graphics/Bitmap;

.field private final blacklist mLastSurfaceSize:Landroid/graphics/Point;

.field blacklist mLastWindowPage:I

.field final greylist-max-o mLayout:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mLidState:I

.field final blacklist mLocalColorAreas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLocalColorsToAdd:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mLock:Ljava/lang/Object;

.field final greylist-max-o mMergedConfiguration:Landroid/util/MergedConfiguration;

.field blacklist mNeedToRedrawAfterVisible:Z

.field private final greylist-max-o mNotifyColorsChanged:Ljava/lang/Runnable;

.field greylist-max-o mOffsetMessageEnqueued:Z

.field greylist-max-o mOffsetsChanged:Z

.field greylist-max-o mPendingMove:Landroid/view/MotionEvent;

.field greylist-max-o mPendingSync:Z

.field greylist-max-p mPendingXOffset:F

.field greylist-max-o mPendingXOffsetStep:F

.field greylist-max-o mPendingYOffset:F

.field greylist-max-o mPendingYOffsetStep:F

.field blacklist mPreviewSurfacePosition:Landroid/graphics/Rect;

.field private blacklist mPreviousWallpaperDimAmount:F

.field greylist-max-o mReportedVisible:Z

.field final blacklist mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private blacklist mResetWindowPages:Z

.field private blacklist mScreenshotSize:Landroid/graphics/Point;

.field private blacklist mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSession:Landroid/view/IWindowSession;

.field blacklist mShouldDim:Z

.field blacklist mShouldDimByDefault:Z

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSurfaceCreated:Z

.field final greylist-max-o mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field private final blacklist mSurfaceSize:Landroid/graphics/Point;

.field final blacklist mSyncSeqIdBundle:Landroid/os/Bundle;

.field final blacklist mTempControls:[Landroid/view/InsetsSourceControl;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTmpValues:[F

.field greylist-max-o mType:I

.field greylist-max-o mVisible:Z

.field private blacklist mWallpaperDimAmount:F

.field greylist-max-o mWidth:I

.field final blacklist mWinFrames:Landroid/window/ClientWindowFrames;

.field final greylist-max-o mWindow:Lcom/android/internal/view/BaseIWindow;

.field greylist-max-o mWindowFlags:I

.field private final blacklist mWindowLayout:Landroid/view/WindowLayout;

.field blacklist mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

.field greylist-max-o mWindowPrivateFlags:I

.field greylist-max-o mWindowToken:Landroid/os/IBinder;

.field blacklist mX:I

.field blacklist mY:I

.field blacklist mZoom:F

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayHandler(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .locals 0

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscalePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->scalePreview(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateConfiguration(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/util/MergedConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateConfiguration(Landroid/util/MergedConfiguration;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 2
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;

    .line 587
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 588
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .locals 5
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 598
    .local p2, "clockFunction":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    .line 240
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    .line 243
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 245
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastWindowPage:I

    .line 253
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 262
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 281
    const/4 v3, 0x0

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 282
    const/16 v3, 0x10

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 283
    const v4, 0x2000004

    iput v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 285
    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 286
    iput v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 288
    new-instance v3, Landroid/window/ClientWindowFrames;

    invoke-direct {v3}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 289
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 290
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 291
    sget-object v3, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 292
    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3}, Landroid/view/InsetsState;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 293
    new-instance v3, Landroid/view/InsetsVisibilities;

    invoke-direct {v3}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 294
    new-array v3, v0, [Landroid/view/InsetsSourceControl;

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    .line 295
    new-instance v3, Landroid/util/MergedConfiguration;

    invoke-direct {v3}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 296
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    .line 297
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    .line 298
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 299
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 300
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    .line 301
    new-instance v3, Landroid/view/WindowLayout;

    invoke-direct {v3}, Landroid/view/WindowLayout;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowLayout:Landroid/view/WindowLayout;

    .line 302
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempRect:Landroid/graphics/Rect;

    .line 304
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 308
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 321
    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    .line 329
    const v3, 0x3d4ccccd    # 0.05f

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 330
    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 331
    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 335
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z

    .line 338
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    .line 343
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    .line 347
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 351
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    .line 357
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHandler:Landroid/os/Handler;

    .line 376
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 471
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 2547
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$5;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 599
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    .line 600
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    .line 601
    return-void
.end method

.method private blacklist cleanUpScreenshotSurfaceControl()V
    .locals 2

    .line 2314
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 2315
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2316
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2317
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2318
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2321
    :cond_0
    return-void
.end method

.method private greylist-max-o dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1227
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1229
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1231
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 1233
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z

    if-eqz v0, :cond_3

    .line 1238
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceWidth()I

    move-result v0

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1239
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceHeight()I

    move-result v0

    .line 1240
    .local v0, "tmp":I
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceWidth()I

    move-result v1

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfputmDeviceHeight(I)V

    .line 1241
    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfputmDeviceWidth(I)V

    .line 1246
    .end local v0    # "tmp":I
    :cond_1
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 1248
    :cond_2
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1249
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1254
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1255
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1256
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 1233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1257
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1259
    :goto_2
    return-void
.end method

.method private blacklist fixRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 2236
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2238
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 2237
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2238
    :goto_1
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 2239
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_2

    .line 2241
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 2240
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2241
    :goto_3
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 2242
    return-object p2
.end method

.method private blacklist freeze()V
    .locals 1

    .line 2290
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2294
    :cond_0
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->showScreenshotOfWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2295
    return-void

    .line 2298
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2303
    return-void

    .line 2292
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 7
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "pageInx"    # I
    .param p3, "numPages"    # I

    .line 2155
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 2156
    .local v0, "minLeft":F
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 2157
    .local v1, "maxRight":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 2158
    .local v2, "left":F
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 2161
    .local v3, "right":F
    cmpg-float v4, v2, v0

    if-gez v4, :cond_0

    move v2, v0

    .line 2162
    :cond_0
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v3, v1

    .line 2165
    :cond_1
    int-to-float v4, p3

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    .line 2166
    .end local v2    # "left":F
    .local v4, "left":F
    int-to-float v2, p3

    mul-float/2addr v2, v3

    rem-float/2addr v2, v5

    .line 2167
    .end local v3    # "right":F
    .local v2, "right":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 2168
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2171
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private blacklist getOrCreateBLASTSurface(III)Landroid/view/Surface;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 2565
    const/4 v0, 0x0

    .line 2566
    .local v0, "ret":Landroid/view/Surface;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v1, :cond_0

    .line 2567
    new-instance v1, Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "Wallpaper"

    move-object v2, v1

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2571
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 2573
    :cond_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2576
    :goto_0
    return-object v0
.end method

.method private blacklist getRectFPage(Landroid/graphics/RectF;F)I
    .locals 4
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "step"    # F

    .line 2185
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2186
    :cond_0
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 2187
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2188
    .local v0, "pages":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2189
    .local v1, "page":I
    if-ne v1, v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    return v2

    .line 2190
    :cond_2
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v3, v2

    if-ne v1, v3, :cond_3

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 2191
    :cond_3
    return v1
.end method

.method private blacklist getSettingKey()Ljava/lang/String;
    .locals 3

    .line 2538
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    .line 2539
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2540
    const-string/jumbo v0, "sub_display_system_wallpaper_transparency"

    .line 2542
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSettingKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    return-object v0
.end method

.method private blacklist initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V
    .locals 4
    .param p1, "windowPages"    # [Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "step"    # F

    .line 2038
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2039
    new-instance v1, Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {v1}, Landroid/service/wallpaper/EngineWindowPage;-><init>()V

    aput-object v1, p1, v0

    .line 2038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2041
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2042
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2043
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 2044
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2045
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2046
    goto :goto_1

    .line 2048
    :cond_1
    invoke-direct {p0, v1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v2

    .line 2049
    .local v2, "pageNum":I
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/service/wallpaper/EngineWindowPage;->addArea(Landroid/graphics/RectF;)V

    .line 2050
    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "pageNum":I
    goto :goto_1

    .line 2051
    :cond_2
    return-void
.end method

.method private synthetic blacklist lambda$updateSurfaceDimming$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "surfaceControlTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "va"    # Landroid/animation/ValueAnimator;

    .line 1107
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1108
    .local v0, "dimValue":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 1109
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    .line 1110
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1112
    :cond_0
    return-void
.end method

.method private blacklist processLocalColors(FF)V
    .locals 10
    .param p1, "xOffset"    # F
    .param p2, "xOffsetStep"    # F

    .line 1969
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1975
    :cond_0
    rem-float v0, p1, p2

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1976
    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1979
    :cond_1
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1983
    const/4 p1, 0x0

    .line 1984
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1985
    const/4 v0, 0x0

    .line 1986
    .local v0, "xCurrentPage":I
    const/4 v1, 0x1

    .local v1, "xPages":I
    goto :goto_0

    .line 1988
    .end local v0    # "xCurrentPage":I
    .end local v1    # "xPages":I
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1989
    .restart local v1    # "xPages":I
    int-to-float v2, v1

    div-float p2, v0, v2

    .line 1990
    add-int/lit8 v0, v1, -0x1

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 1991
    .local v0, "shrink":F
    mul-float/2addr p1, v0

    .line 1992
    div-float v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v0, v2

    .line 1999
    .local v0, "xCurrentPage":I
    :goto_0
    move v7, p2

    .line 2000
    .local v7, "finalXOffsetStep":F
    move v8, p1

    .line 2001
    .local v8, "finalXOffset":F
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v9, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;

    move-object v3, v9

    move-object v4, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v3 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;IIFF)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2035
    return-void

    .line 1976
    .end local v0    # "xCurrentPage":I
    .end local v1    # "xPages":I
    .end local v7    # "finalXOffsetStep":F
    .end local v8    # "finalXOffset":F
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist reposition()V
    .locals 7

    .line 1746
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1747
    return-void

    .line 1753
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1754
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1755
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1754
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1756
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1757
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1758
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1760
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1762
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1763
    return-void
.end method

.method private blacklist resetWindowPages()V
    .locals 4

    .line 2175
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2176
    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    if-nez v0, :cond_1

    return-void

    .line 2177
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 2178
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastWindowPage:I

    .line 2179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2180
    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2182
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist scalePreview(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 1733
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1735
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1736
    :cond_1
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1737
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1738
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    goto :goto_0

    .line 1740
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1743
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V
    .locals 4
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .line 1036
    if-nez p1, :cond_0

    .line 1037
    return-void

    .line 1039
    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    .line 1040
    .local v0, "colorHints":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    .line 1044
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    if-eq v1, v2, :cond_2

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 1045
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    .line 1046
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V

    .line 1048
    :cond_2
    return-void
.end method

.method private blacklist showScreenshotOfWallpaper()Z
    .locals 7

    .line 2360
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2365
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2366
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const-string v3, "WallpaperService"

    if-eqz v2, :cond_1

    .line 2367
    const-string v2, "Failed to screenshot wallpaper: surface bounds are empty"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    return v1

    .line 2371
    :cond_1
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2

    .line 2372
    const-string v2, "Screenshot is unexpectedly not null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2377
    :cond_2
    new-instance v2, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v2, v4}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 2383
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2384
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v2

    .line 2385
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2386
    invoke-virtual {v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v2

    .line 2378
    invoke-static {v2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 2388
    .local v2, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v2, :cond_3

    .line 2389
    const-string v4, "Failed to screenshot wallpaper: screenshotBuffer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    return v1

    .line 2393
    :cond_3
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 2395
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2398
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper snapshot for engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2399
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2400
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2401
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2402
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2403
    const-string v5, "WallpaperService.Engine.showScreenshotOfWallpaper"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2404
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2405
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2407
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 2409
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 2410
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 2412
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2413
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2414
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2415
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2417
    const/4 v4, 0x1

    return v4

    .line 2362
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local v2    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v3    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_4
    :goto_0
    return v1
.end method

.method private blacklist unfreeze()V
    .locals 1

    .line 2306
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2307
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 2308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2310
    :cond_0
    return-void
.end method

.method private blacklist updateConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 1
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;

    .line 1262
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 1263
    return-void
.end method

.method private blacklist updateFrozenState(Z)V
    .locals 1
    .param p1, "frozenRequested"    # Z

    .line 2270
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2275
    return-void

    .line 2277
    :cond_0
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 2278
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2279
    .local v0, "isFrozen":Z
    :goto_0
    if-ne p1, v0, :cond_2

    .line 2280
    return-void

    .line 2282
    :cond_2
    if-eqz p1, :cond_3

    .line 2283
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    goto :goto_1

    .line 2285
    :cond_3
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->unfreeze()V

    .line 2287
    :goto_1
    return-void
.end method

.method private blacklist updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V
    .locals 17
    .param p1, "page"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F

    .line 2104
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WallpaperService"

    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2105
    :cond_0
    const-string v0, "WallpaperService#updatePageColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2111
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getAreas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/RectF;

    .line 2112
    .local v5, "area":Landroid/graphics/RectF;
    if-nez v5, :cond_1

    goto :goto_0

    .line 2113
    :cond_1
    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct {v1, v5, v6, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v8

    .line 2114
    .local v8, "subArea":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2115
    .local v9, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v10, v8, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 2116
    .local v10, "x":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v11, v8, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 2117
    .local v11, "y":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 2118
    .local v12, "width":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 2121
    .local v13, "height":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v0

    .line 2125
    .local v14, "target":Landroid/graphics/Bitmap;
    nop

    .line 2126
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-static {v14, v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v15

    .line 2127
    .local v15, "color":Landroid/app/WallpaperColors;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 2128
    move-object/from16 v16, v4

    invoke-virtual {v2, v5}, Landroid/service/wallpaper/EngineWindowPage;->getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;

    move-result-object v4

    .line 2136
    .local v4, "currentColor":Landroid/app/WallpaperColors;
    if-eqz v4, :cond_2

    invoke-virtual {v15, v4}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2137
    :cond_2
    invoke-virtual {v2, v5, v15}, Landroid/service/wallpaper/EngineWindowPage;->addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    .line 2144
    :try_start_1
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 2145
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 2144
    invoke-interface {v0, v5, v15, v2}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2148
    goto :goto_1

    .line 2146
    :catch_0
    move-exception v0

    .line 2147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling Connection.onLocalWallpaperColorsChanged"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2150
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "currentColor":Landroid/app/WallpaperColors;
    .end local v5    # "area":Landroid/graphics/RectF;
    .end local v8    # "subArea":Landroid/graphics/RectF;
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "target":Landroid/graphics/Bitmap;
    .end local v15    # "color":Landroid/app/WallpaperColors;
    :cond_3
    :goto_1
    move-object/from16 v2, p1

    move-object/from16 v4, v16

    goto/16 :goto_0

    .line 2122
    .restart local v5    # "area":Landroid/graphics/RectF;
    .restart local v8    # "subArea":Landroid/graphics/RectF;
    .restart local v9    # "b":Landroid/graphics/Bitmap;
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    .line 2123
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error creating page local color bitmap"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2124
    move-object/from16 v2, p1

    move-object/from16 v4, v16

    goto/16 :goto_0

    .line 2151
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "area":Landroid/graphics/RectF;
    .end local v8    # "subArea":Landroid/graphics/RectF;
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    :cond_4
    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2152
    return-void
.end method

.method private blacklist updateSurfaceDimming()V
    .locals 0

    .line 1091
    return-void
.end method

.method private blacklist updateWallpaperDimming(F)V
    .locals 1
    .param p1, "dimAmount"    # F

    .line 1077
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1078
    return-void

    .line 1082
    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1085
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    .line 1086
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V

    .line 1087
    return-void
.end method

.method private blacklist validStep(F)Z
    .locals 4
    .param p1, "step"    # F

    .line 2246
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetPROHIBITED_STEPS()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist addLocalColorsAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2200
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2204
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2210
    return-void
.end method

.method greylist-max-o attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 5
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1767
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1768
    return-void

    .line 1771
    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1772
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1773
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 1774
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 1775
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 1776
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1777
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 1779
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 1781
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1782
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1783
    invoke-virtual {v3}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1782
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1784
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1786
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2, v1}, Landroid/service/wallpaper/WallpaperService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x7dd

    const/4 v3, 0x0

    .line 1787
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1788
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 1790
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1791
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 1792
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1793
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getInstallOrientation()I

    move-result v1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayInstallOrientation:I

    .line 1796
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 1798
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1800
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1801
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1805
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/WallpaperManager;->notifyPid(IILjava/lang/String;Z)V

    .line 1808
    return-void
.end method

.method greylist-max-o detach()V
    .locals 4

    .line 2437
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 2438
    return-void

    .line 2441
    :cond_0
    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    .line 2443
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 2449
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    .line 2451
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2454
    :cond_1
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2455
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2457
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach onVisibilityChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 2467
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 2469
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_6

    .line 2474
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v2, :cond_3

    .line 2475
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 2476
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 2479
    :cond_3
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2481
    goto :goto_0

    .line 2480
    :catch_0
    move-exception v2

    .line 2489
    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 2493
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2494
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v2, :cond_4

    .line 2495
    invoke-virtual {v2}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 2496
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2498
    :cond_4
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_5

    .line 2499
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2500
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2502
    :cond_5
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 2504
    :cond_6
    return-void
.end method

.method public blacklist doAmbientModeChanged(ZJ)V
    .locals 1
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J

    .line 1836
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 1841
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    .line 1842
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 1843
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->onAmbientModeChanged(ZJ)V

    .line 1846
    :cond_0
    return-void
.end method

.method greylist-max-o doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 8
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 2251
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_2

    .line 2252
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    const-string v1, "android.wallpaper.freeze"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.wallpaper.unfreeze"

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2253
    :cond_0
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateFrozenState(Z)V

    .line 2255
    :cond_1
    iget-object v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v7, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "result":Landroid/os/Bundle;
    goto :goto_0

    .line 2258
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .line 2260
    .restart local v0    # "result":Landroid/os/Bundle;
    :goto_0
    iget-boolean v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v1, :cond_3

    .line 2263
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2265
    goto :goto_1

    .line 2264
    :catch_0
    move-exception v1

    .line 2267
    :cond_3
    :goto_1
    return-void
.end method

.method greylist-max-o doDesiredSizeChanged(II)V
    .locals 1
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 1849
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 1852
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 1853
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 1854
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 1855
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1857
    :cond_0
    return-void
.end method

.method greylist-max-o doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1860
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 1862
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1863
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1864
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1867
    :cond_0
    return-void
.end method

.method greylist-max-o doOffsetsChanged(Z)V
    .locals 13
    .param p1, "always"    # Z

    .line 1918
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1919
    return-void

    .line 1922
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-nez v0, :cond_1

    .line 1923
    return-void

    .line 1931
    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1932
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 1933
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    move v9, v2

    .line 1934
    .local v9, "yOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    move v10, v2

    .line 1935
    .local v10, "xOffsetStep":F
    iget v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 1936
    .local v6, "yOffsetStep":F
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    move v11, v2

    .line 1937
    .local v11, "sync":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 1938
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 1939
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_5

    .line 1942
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_4

    .line 1945
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int/2addr v0, v3

    .line 1946
    .local v0, "availw":I
    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v0, :cond_2

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v4, v4

    neg-int v4, v4

    move v7, v4

    goto :goto_0

    :cond_2
    move v7, v2

    .line 1947
    .local v7, "xPixels":I
    :goto_0
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v12, v4, v5

    .line 1948
    .local v12, "availh":I
    if-lez v12, :cond_3

    int-to-float v2, v12

    mul-float/2addr v2, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    :cond_3
    move v8, v2

    .line 1949
    .local v8, "yPixels":I
    move-object v2, p0

    move v3, v1

    move v4, v9

    move v5, v10

    invoke-virtual/range {v2 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 1950
    .end local v0    # "availw":I
    .end local v7    # "xPixels":I
    .end local v8    # "yPixels":I
    .end local v12    # "availh":I
    goto :goto_1

    .line 1951
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    .line 1955
    :cond_5
    :goto_1
    if-eqz v11, :cond_6

    .line 1958
    :try_start_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1960
    goto :goto_2

    .line 1959
    :catch_0
    move-exception v0

    .line 1964
    :cond_6
    :goto_2
    invoke-direct {p0, v1, v10}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1965
    return-void

    .line 1939
    .end local v1    # "xOffset":F
    .end local v6    # "yOffsetStep":F
    .end local v9    # "yOffset":F
    .end local v10    # "xOffsetStep":F
    .end local v11    # "sync":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method greylist-max-o doVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1870
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 1871
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1872
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 1873
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {p0, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    goto :goto_0

    .line 1875
    :cond_0
    invoke-static {p1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1877
    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1150
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1151
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1152
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1153
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1154
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1155
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1156
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1157
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1158
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1159
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1160
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1161
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1162
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1164
    const-string/jumbo v0, "mX="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1165
    const-string/jumbo v0, "mY="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1167
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1168
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1169
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1170
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1171
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1172
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinFrames="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1173
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1175
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1176
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZoom="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1177
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPreviewSurfacePosition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1179
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingXOffset="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1181
    const-string v1, " mPendingXOffset="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1182
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingXOffsetStep="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1184
    const-string v1, " mPendingXOffsetStep="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1185
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1187
    const-string v1, " mPendingSync="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1188
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1189
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingMove="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1191
    :cond_0
    monitor-exit v0

    .line 1192
    return-void

    .line 1191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDesiredMinimumHeight()I
    .locals 1

    .line 625
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .locals 1

    .line 616
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public whitelist getDisplayContext()Landroid/content/Context;
    .locals 1

    .line 1823
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    .line 632
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-nez v0, :cond_0

    .line 633
    const/4 v0, -0x1

    return v0

    .line 635
    :cond_0
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    return v0
.end method

.method public whitelist getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 607
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public blacklist getWindowTokenAsBinder()Landroid/os/IBinder;
    .locals 1

    .line 642
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    if-nez v0, :cond_0

    .line 643
    const/4 v0, 0x0

    return-object v0

    .line 645
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getZoom()F
    .locals 1

    .line 794
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    return v0
.end method

.method public whitelist isInAmbientMode()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 687
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    return v0
.end method

.method public whitelist isPreview()Z
    .locals 1

    .line 677
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method protected blacklist isSupportInconsistency()Z
    .locals 9

    .line 2521
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2522
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2523
    .local v3, "isTablet":Z
    :goto_0
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v4, v4, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2524
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 2526
    .local v4, "isCoverDisplay":Z
    :goto_1
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v5}, Landroid/service/wallpaper/WallpaperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSettingKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2527
    .local v5, "type":I
    if-nez v5, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    .line 2529
    .local v6, "isCustomWallpaper":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSupportInconsistency mIsSupportInconsistencyWallpaper ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTablet ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCoverDisplay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCustomWallpaper "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WallpaperService"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    sget-boolean v7, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    if-nez v7, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-nez v3, :cond_4

    if-nez v6, :cond_4

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v7, v7, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    const/16 v8, 0x7dd

    if-ne v7, v8, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public whitelist isVisible()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method synthetic blacklist lambda$addLocalColorsAreas$3$android-service-wallpaper-WallpaperService$Engine(Ljava/util/List;)V
    .locals 2
    .param p1, "regions"    # Ljava/util/List;

    .line 2205
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2206
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    invoke-direct {p0, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 2207
    return-void
.end method

.method synthetic blacklist lambda$processLocalColors$1$android-service-wallpaper-WallpaperService$Engine(IIFF)V
    .locals 7
    .param p1, "xCurrentPage"    # I
    .param p2, "xPages"    # I
    .param p3, "finalXOffsetStep"    # F
    .param p4, "finalXOffset"    # F

    .line 2002
    const-string v0, "WallpaperService#processLocalColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2003
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 2004
    move v0, p1

    .line 2006
    .local v0, "xPage":I
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-eqz v2, :cond_0

    array-length v1, v1

    if-eq v1, p2, :cond_1

    .line 2007
    :cond_0
    new-array v1, p2, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 2008
    invoke-direct {p0, v1, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V

    .line 2010
    :cond_1
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2011
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 2012
    .local v2, "colorArea":Landroid/graphics/RectF;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3, v2}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 2013
    :cond_2
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2014
    invoke-direct {p0, v2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v3

    .line 2015
    .local v3, "colorPage":I
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v4, v3

    .line 2016
    .local v4, "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2017
    invoke-virtual {v4, v2}, Landroid/service/wallpaper/EngineWindowPage;->removeColor(Landroid/graphics/RectF;)V

    .line 2018
    .end local v2    # "colorArea":Landroid/graphics/RectF;
    .end local v3    # "colorPage":I
    .end local v4    # "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    goto :goto_0

    .line 2019
    :cond_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2021
    :cond_4
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-lt v0, v2, :cond_5

    .line 2029
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .line 2031
    :cond_5
    aget-object v1, v1, v0

    .line 2032
    .local v1, "current":Landroid/service/wallpaper/EngineWindowPage;
    invoke-virtual {p0, v1, v0, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePage(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 2033
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2034
    return-void
.end method

.method synthetic blacklist lambda$removeLocalColorsAreas$4$android-service-wallpaper-WallpaperService$Engine(Ljava/util/List;)V
    .locals 5
    .param p1, "regions"    # Ljava/util/List;

    .line 2220
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 2221
    .local v0, "step":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 2222
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 2223
    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2224
    return-void

    .line 2226
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2227
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2228
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v3, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/service/wallpaper/EngineWindowPage;->removeArea(Landroid/graphics/RectF;)V

    .line 2227
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2226
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2231
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method synthetic blacklist lambda$updatePage$2$android-service-wallpaper-WallpaperService$Engine(Landroid/service/wallpaper/EngineWindowPage;IIFLandroid/graphics/Bitmap;JI)V
    .locals 3
    .param p1, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F
    .param p5, "finalScreenShot"    # Landroid/graphics/Bitmap;
    .param p6, "current"    # J
    .param p8, "res"    # I

    .line 2080
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2082
    if-eqz p8, :cond_1

    .line 2083
    invoke-virtual {p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2085
    .local v0, "lastBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2086
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 2087
    .local v1, "lastScreenshot":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2088
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2089
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 2091
    .end local v0    # "lastBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "lastScreenshot":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 2092
    :cond_1
    iput-object p5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 2094
    invoke-virtual {p1, p5}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2095
    invoke-virtual {p1, p6, p7}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2096
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 2098
    :goto_0
    return-void
.end method

.method public whitelist notifyColorsChanged()V
    .locals 6

    .line 956
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 957
    .local v0, "now":J
    iget-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const-string v3, "WallpaperService"

    if-gez v2, :cond_1

    .line 958
    const-string v2, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 962
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 964
    :cond_0
    return-void

    .line 966
    :cond_1
    iput-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    .line 967
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 970
    :try_start_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v2

    .line 971
    .local v2, "newColors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v4, :cond_2

    .line 972
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v4, v2, v5}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V

    goto :goto_0

    .line 974
    :cond_2
    const-string v4, "Can\'t notify system because wallpaper connection was not established."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 978
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {p0, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    .end local v2    # "newColors":Landroid/app/WallpaperColors;
    goto :goto_1

    .line 979
    :catch_0
    move-exception v2

    .line 980
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Can\'t notify system because wallpaper connection was lost."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public blacklist notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/WallpaperColors;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1010
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p2, "colors":Ljava/util/List;, "Ljava/util/List<Landroid/app/WallpaperColors;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1011
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    .line 1012
    .local v1, "color":Landroid/app/WallpaperColors;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 1013
    .local v2, "area":Landroid/graphics/RectF;
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    .line 1018
    goto :goto_1

    .line 1021
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1024
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 1021
    invoke-interface {v3, v2, v1, v4}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    goto :goto_1

    .line 1026
    :catch_0
    move-exception v3

    .line 1027
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1010
    .end local v1    # "color":Landroid/app/WallpaperColors;
    .end local v2    # "area":Landroid/graphics/RectF;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1031
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 1032
    .local v0, "primaryColors":Landroid/app/WallpaperColors;
    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    .line 1033
    return-void
.end method

.method public whitelist onAmbientModeChanged(ZJ)V
    .locals 0
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 904
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 831
    return-void
.end method

.method public whitelist onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .line 887
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onComputeColors()Landroid/app/WallpaperColors;
    .locals 1

    .line 998
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1132
    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x272e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 1134
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1135
    return-void
.end method

.method public whitelist onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 803
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isSupportInconsistency()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z

    .line 805
    return-void
.end method

.method public whitelist onDesiredSizeChanged(II)V
    .locals 0
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 911
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    .line 813
    return-void
.end method

.method public whitelist onOffsetsChanged(FFFFII)V
    .locals 0
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .line 852
    return-void
.end method

.method public whitelist onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 918
    return-void
.end method

.method public whitelist onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 932
    return-void
.end method

.method public whitelist onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 939
    return-void
.end method

.method public whitelist onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 925
    return-void
.end method

.method public blacklist onSwitchDisplayChanged(Z)V
    .locals 0
    .param p1, "isFolded"    # Z

    .line 858
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 841
    return-void
.end method

.method public whitelist onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 821
    return-void
.end method

.method public whitelist onZoomChanged(F)V
    .locals 0
    .param p1, "zoom"    # F

    .line 949
    return-void
.end method

.method public blacklist refreshCachedWallpaper(I)V
    .locals 0
    .param p1, "which"    # I

    .line 865
    return-void
.end method

.method public blacklist removeLocalColorsAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2218
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2219
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2232
    return-void
.end method

.method public blacklist reportEngineShown(Z)V
    .locals 5
    .param p1, "waitForEngineShown"    # Z

    .line 721
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-eqz v0, :cond_0

    return-void

    .line 722
    :cond_0
    const/16 v0, 0x27a6

    if-nez p1, :cond_1

    .line 723
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 724
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 725
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 726
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 728
    :cond_1
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 729
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 730
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 733
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method

.method greylist-max-o reportSurfaceDestroyed()V
    .locals 5

    .line 2421
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_1

    .line 2422
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 2423
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2424
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 2425
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_0

    .line 2426
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2427
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2426
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2432
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2434
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1
    return-void
.end method

.method greylist-max-o reportVisibility()V
    .locals 4

    .line 1880
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 1882
    return-void

    .line 1884
    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_6

    .line 1885
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1886
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v0, v3, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1887
    .local v0, "visible":Z
    :goto_1
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v2, v0, :cond_6

    .line 1888
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1892
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_3

    .line 1893
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v2

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    .line 1896
    :cond_3
    if-eqz v0, :cond_4

    .line 1900
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1902
    invoke-virtual {p0, v3, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1904
    :cond_4
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportVisibility onVisibilityChanged visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v1, :cond_5

    .line 1910
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    .line 1912
    :cond_5
    invoke-static {v0, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1915
    .end local v0    # "visible":Z
    :cond_6
    return-void
.end method

.method blacklist scaleAndCropScreenshot()V
    .locals 11

    .line 2324
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 2325
    return-void

    .line 2327
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 2333
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2336
    .local v0, "scaleFactor":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    .line 2337
    .local v1, "diffX":I
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v8, v2, v3

    .line 2343
    .local v8, "diffY":I
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2344
    move v4, v0

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v6, v8, 0x2

    div-int/lit8 v7, v1, 0x2

    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v9

    div-int/lit8 v9, v8, 0x2

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2348
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v8

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 2355
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 2356
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2357
    return-void

    .line 2328
    .end local v0    # "scaleFactor":F
    .end local v1    # "diffX":I
    .end local v8    # "diffY":I
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected screenshot size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    return-void
.end method

.method public greylist-max-o setCreated(Z)V
    .locals 0
    .param p1, "created"    # Z

    .line 1146
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1147
    return-void
.end method

.method public blacklist setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 2583
    return-void
.end method

.method public greylist setFixedSizeAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 785
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 786
    return-void
.end method

.method public whitelist setOffsetNotificationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 760
    if-eqz p1, :cond_0

    .line 761
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 763
    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 765
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 768
    :cond_1
    return-void
.end method

.method public blacklist setShowForAllUsers(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 772
    if-eqz p1, :cond_0

    .line 773
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 775
    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 777
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 780
    :cond_1
    return-void
.end method

.method public blacklist setSurfaceAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .line 1052
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1057
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1058
    const-string v0, "Skip set alpha if live wallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void

    .line 1062
    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSurfaceAlpha : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1065
    .local v0, "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1066
    .end local v0    # "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    goto :goto_0

    .line 1067
    :cond_2
    const-string/jumbo v0, "setSurfaceAlpha mBbqSurfaceControl is null or invalid"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :goto_0
    return-void

    .line 1053
    :cond_3
    :goto_1
    const-string/jumbo v0, "mIWallpaperEngine or mWallpaperManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return-void
.end method

.method public whitelist setTouchEventsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 743
    if-eqz p1, :cond_0

    .line 744
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_0

    .line 745
    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 746
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 749
    :cond_1
    return-void
.end method

.method public blacklist setZoom(F)V
    .locals 3
    .param p1, "zoom"    # F

    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, "updated":Z
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1211
    :try_start_0
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    if-eqz v2, :cond_0

    .line 1212
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1214
    :cond_0
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1215
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1216
    const/4 v0, 0x1

    .line 1218
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v1, :cond_2

    .line 1221
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onZoomChanged(F)V

    .line 1223
    :cond_2
    return-void

    .line 1218
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist shouldWaitForEngineShown()Z
    .locals 1

    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldZoomOutWallpaper()Z
    .locals 1

    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsLocalColorExtraction()Z
    .locals 1

    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method blacklist switchDisplay(Z)V
    .locals 3
    .param p1, "isFolded"    # Z

    .line 2508
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 2509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " switchDisplay start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isSupportInconsistency()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z

    .line 2511
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSwitchDisplayChanged(Z)V

    .line 2512
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " switchDisplay finish "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_0
    return-void
.end method

.method blacklist updatePage(Landroid/service/wallpaper/EngineWindowPage;IIF)V
    .locals 22
    .param p1, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F

    .line 2056
    move-object/from16 v9, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long v10, v0, v2

    .line 2057
    .local v10, "current":J
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getLastUpdateTime()J

    move-result-wide v0

    sub-long v12, v10, v0

    .line 2060
    .local v12, "lapsed":J
    cmp-long v0, v12, v2

    if-gez v0, :cond_0

    .line 2061
    return-void

    .line 2063
    :cond_0
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v14

    .line 2064
    .local v14, "surface":Landroid/view/Surface;
    invoke-virtual {v14}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2065
    :cond_1
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    .line 2066
    .local v15, "widthIsLarger":Z
    if-eqz v15, :cond_3

    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 2067
    :cond_3
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_1
    move v7, v0

    .line 2068
    .local v7, "smaller":I
    const/high16 v0, 0x42800000    # 64.0f

    int-to-float v1, v7

    div-float v16, v0, v1

    .line 2069
    .local v16, "ratio":F
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v8, v0

    .line 2070
    .local v8, "width":I
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v5, v0

    .line 2071
    .local v5, "height":I
    if-lez v8, :cond_5

    if-gtz v5, :cond_4

    move/from16 v21, v5

    move/from16 v20, v7

    move-wide/from16 v17, v12

    move/from16 v19, v15

    move v15, v8

    goto :goto_2

    .line 2075
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2077
    .local v4, "screenShot":Landroid/graphics/Bitmap;
    move-object v6, v4

    .line 2078
    .local v6, "finalScreenShot":Landroid/graphics/Bitmap;
    const-string v0, "WallpaperService#pixelCopy"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2079
    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v17, v12

    move-object v12, v3

    .end local v12    # "lapsed":J
    .local v17, "lapsed":J
    move/from16 v3, p2

    move-object v13, v4

    .end local v4    # "screenShot":Landroid/graphics/Bitmap;
    .local v13, "screenShot":Landroid/graphics/Bitmap;
    move/from16 v4, p3

    move/from16 v19, v15

    move v15, v5

    .end local v5    # "height":I
    .local v15, "height":I
    .local v19, "widthIsLarger":Z
    move/from16 v5, p4

    move/from16 v20, v7

    move/from16 v21, v15

    move v15, v8

    .end local v7    # "smaller":I
    .end local v8    # "width":I
    .local v15, "width":I
    .local v20, "smaller":I
    .local v21, "height":I
    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/service/wallpaper/EngineWindowPage;IIFLandroid/graphics/Bitmap;J)V

    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    invoke-static {v14, v13, v12, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 2100
    return-void

    .line 2071
    .end local v6    # "finalScreenShot":Landroid/graphics/Bitmap;
    .end local v13    # "screenShot":Landroid/graphics/Bitmap;
    .end local v17    # "lapsed":J
    .end local v19    # "widthIsLarger":Z
    .end local v20    # "smaller":I
    .end local v21    # "height":I
    .restart local v5    # "height":I
    .restart local v7    # "smaller":I
    .restart local v8    # "width":I
    .restart local v12    # "lapsed":J
    .local v15, "widthIsLarger":Z
    :cond_5
    move/from16 v21, v5

    move/from16 v20, v7

    move-wide/from16 v17, v12

    move/from16 v19, v15

    move v15, v8

    .line 2072
    .end local v5    # "height":I
    .end local v7    # "smaller":I
    .end local v8    # "width":I
    .end local v12    # "lapsed":J
    .local v15, "width":I
    .restart local v17    # "lapsed":J
    .restart local v19    # "widthIsLarger":Z
    .restart local v20    # "smaller":I
    .restart local v21    # "height":I
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong width and height values of bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v21

    .end local v21    # "height":I
    .local v1, "height":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    return-void
.end method

.method greylist-max-o updateSurface(ZZZ)V
    .locals 62
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .line 1266
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string/jumbo v5, "updateSurface : finish redrawing reserve to redraw after visible cause currently not visible."

    const-string/jumbo v6, "updateSurface : finish redrawing"

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v7, "WallpaperService"

    if-eqz v0, :cond_0

    .line 1267
    const-string v0, "Ignoring updateSurface due to destroyed"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void

    .line 1271
    :cond_0
    const/4 v0, 0x0

    .line 1276
    .local v0, "fixedSize":Z
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v8, v8, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v8, :cond_1

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v8, v8, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    goto :goto_0

    :cond_1
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v8}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v8

    .line 1278
    .local v8, "myWidth":I
    :goto_0
    if-gtz v8, :cond_2

    const/4 v8, -0x1

    goto :goto_1

    .line 1279
    :cond_2
    const/4 v0, 0x1

    .line 1284
    :goto_1
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v9, v9, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v9, :cond_3

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v9, v9, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    goto :goto_2

    :cond_3
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v9}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v9

    .line 1286
    .local v9, "myHeight":I
    :goto_2
    if-gtz v9, :cond_4

    const/4 v9, -0x1

    move v10, v9

    move v9, v0

    goto :goto_3

    .line 1287
    :cond_4
    const/4 v0, 0x1

    move v10, v9

    move v9, v0

    .line 1290
    .end local v0    # "fixedSize":Z
    .local v9, "fixedSize":Z
    .local v10, "myHeight":I
    :goto_3
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move v12, v0

    .line 1291
    .local v12, "x":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    move v13, v0

    .line 1293
    .local v13, "y":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSurface forceRelayout="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " forceReport="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " redrawNeeded="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " myWidth="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " myHeight="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " fixedSize="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " x = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " y = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " mWidth="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " mHeight="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " mIsSleepMode="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSleepMode:Z

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    move v15, v0

    .line 1307
    .local v15, "creating":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    xor-int/2addr v0, v14

    move/from16 v16, v0

    .line 1308
    .local v16, "surfaceCreating":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v11}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v11

    if-eq v0, v11, :cond_7

    move v0, v14

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    move v11, v0

    .line 1313
    .local v11, "formatChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    if-ne v0, v8, :cond_9

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    if-ne v0, v10, :cond_9

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    if-ne v0, v12, :cond_9

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    if-eq v0, v13, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    move v0, v14

    :goto_8
    move/from16 v17, v0

    .line 1315
    .local v17, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    xor-int/2addr v0, v14

    move/from16 v18, v0

    .line 1316
    .local v18, "insetsChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v14}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v14

    if-eq v0, v14, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    move v14, v0

    .line 1317
    .local v14, "typeChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move-object/from16 v19, v5

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v0, v5, :cond_c

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v0, v5, :cond_b

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v0, 0x1

    :goto_b
    move v5, v0

    .line 1319
    .local v5, "flagsChanged":Z
    if-nez v2, :cond_e

    if-nez v15, :cond_e

    if-nez v16, :cond_e

    if-nez v11, :cond_e

    if-nez v17, :cond_e

    if-nez v14, :cond_e

    if-nez v5, :cond_e

    if-nez v4, :cond_e

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_d

    goto :goto_c

    :cond_d
    move/from16 v20, v5

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v21, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    goto/16 :goto_2a

    .line 1328
    :cond_e
    :goto_c
    :try_start_0
    iput v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    .line 1329
    iput v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    .line 1331
    iput v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 1332
    iput v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 1333
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 1334
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 1337
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1338
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1346
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_d

    :cond_f
    const/4 v0, 0x0

    :goto_d
    move v2, v0

    .line 1349
    .local v2, "isDesktopMode":Z
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_e

    move/from16 v20, v5

    .end local v5    # "flagsChanged":Z
    .local v20, "flagsChanged":Z
    :try_start_1
    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1351
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 1352
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_d

    or-int/lit16 v0, v0, 0x200

    const/high16 v21, 0x10000

    or-int v0, v0, v21

    or-int/lit16 v0, v0, 0x100

    move/from16 v21, v12

    .end local v12    # "x":I
    .local v21, "x":I
    const/16 v12, 0x8

    or-int/2addr v0, v12

    :try_start_2
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1358
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v5, v0

    .line 1359
    .local v5, "config":Landroid/content/res/Configuration;
    iget-object v0, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move-object/from16 v22, v0

    .line 1360
    .local v22, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual/range {v22 .. v22}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v24

    .line 1361
    .local v24, "maxBounds":Landroid/graphics/Rect;
    const/4 v0, -0x1

    if-ne v8, v0, :cond_10

    if-eq v10, v0, :cond_11

    :cond_10
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_c

    if-eqz v0, :cond_12

    .line 1366
    :cond_11
    :try_start_3
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1367
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1368
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, -0x4001

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v31, v13

    move/from16 v32, v14

    goto/16 :goto_10

    .line 1724
    .end local v2    # "isDesktopMode":Z
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    goto/16 :goto_2a

    .line 1370
    .restart local v2    # "isDesktopMode":Z
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v24    # "maxBounds":Landroid/graphics/Rect;
    :cond_12
    nop

    .line 1371
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v12, v8

    div-float/2addr v0, v12

    .line 1372
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v12
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_c

    int-to-float v12, v12

    move/from16 v31, v13

    .end local v13    # "y":I
    .local v31, "y":I
    int-to-float v13, v10

    div-float/2addr v12, v13

    .line 1370
    :try_start_5
    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1375
    .local v0, "layoutScale":F
    new-instance v12, Landroid/view/DisplayInfo;

    invoke-direct {v12}, Landroid/view/DisplayInfo;-><init>()V

    .line 1376
    .local v12, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v13, v12}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1377
    sget-boolean v13, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_b

    if-eqz v13, :cond_13

    :try_start_6
    sget-boolean v13, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v13, :cond_13

    if-eqz v17, :cond_13

    .line 1378
    iget v13, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v13, v13

    move/from16 v25, v0

    .end local v0    # "layoutScale":F
    .local v25, "layoutScale":F
    int-to-float v0, v8

    div-float/2addr v13, v0

    iget v0, v12, Landroid/view/DisplayInfo;->logicalHeight:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    int-to-float v0, v0

    move/from16 v32, v14

    .end local v14    # "typeChanged":Z
    .local v32, "typeChanged":Z
    int-to-float v14, v10

    div-float/2addr v0, v14

    :try_start_7
    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .end local v25    # "layoutScale":F
    .restart local v0    # "layoutScale":F
    goto :goto_e

    .line 1724
    .end local v0    # "layoutScale":F
    .end local v2    # "isDesktopMode":Z
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v12    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    .end local v32    # "typeChanged":Z
    .restart local v14    # "typeChanged":Z
    :catch_1
    move-exception v0

    move/from16 v32, v14

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v36, v15

    .end local v14    # "typeChanged":Z
    .restart local v32    # "typeChanged":Z
    goto/16 :goto_2a

    .line 1377
    .end local v32    # "typeChanged":Z
    .restart local v0    # "layoutScale":F
    .restart local v2    # "isDesktopMode":Z
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v14    # "typeChanged":Z
    .restart local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v24    # "maxBounds":Landroid/graphics/Rect;
    :cond_13
    move/from16 v25, v0

    move/from16 v32, v14

    .line 1384
    .end local v0    # "layoutScale":F
    .end local v14    # "typeChanged":Z
    .restart local v25    # "layoutScale":F
    .restart local v32    # "typeChanged":Z
    move/from16 v0, v25

    .end local v25    # "layoutScale":F
    .restart local v0    # "layoutScale":F
    :goto_e
    :try_start_8
    iget-boolean v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_a

    if-eqz v13, :cond_14

    if-nez v2, :cond_14

    :try_start_9
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v13}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_14

    .line 1385
    iget v13, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1387
    .local v13, "displayHeight":I
    iget v14, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v25, v0

    .end local v0    # "layoutScale":F
    .restart local v25    # "layoutScale":F
    iget v0, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1389
    .local v0, "displayWidth":I
    int-to-float v14, v13

    move-object/from16 v26, v12

    .end local v12    # "displayInfo":Landroid/view/DisplayInfo;
    .local v26, "displayInfo":Landroid/view/DisplayInfo;
    int-to-float v12, v10

    div-float/2addr v14, v12

    int-to-float v12, v0

    move/from16 v27, v0

    .end local v0    # "displayWidth":I
    .local v27, "displayWidth":I
    int-to-float v0, v8

    div-float/2addr v12, v0

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .end local v25    # "layoutScale":F
    .local v0, "layoutScale":F
    goto :goto_f

    .line 1724
    .end local v0    # "layoutScale":F
    .end local v2    # "isDesktopMode":Z
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v13    # "displayHeight":I
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    .end local v26    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v27    # "displayWidth":I
    :catch_2
    move-exception v0

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v36, v15

    goto/16 :goto_2a

    .line 1384
    .restart local v0    # "layoutScale":F
    .restart local v2    # "isDesktopMode":Z
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v24    # "maxBounds":Landroid/graphics/Rect;
    :cond_14
    move/from16 v25, v0

    move-object/from16 v26, v12

    .line 1394
    .end local v0    # "layoutScale":F
    .end local v12    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v25    # "layoutScale":F
    .restart local v26    # "displayInfo":Landroid/view/DisplayInfo;
    move/from16 v0, v25

    .end local v25    # "layoutScale":F
    .restart local v0    # "layoutScale":F
    :goto_f
    :try_start_a
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v13, v8

    mul-float/2addr v13, v0

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1395
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v13, v10

    mul-float/2addr v13, v0

    add-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1396
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v13, v13, 0x4000

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1399
    .end local v0    # "layoutScale":F
    .end local v26    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_10
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 1400
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1402
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 1403
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v12, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1406
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    if-eqz v0, :cond_15

    if-nez v2, :cond_15

    :try_start_b
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v12, 0x2

    if-eq v0, v12, :cond_15

    .line 1407
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_11

    .line 1409
    :cond_15
    :try_start_c
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 1412
    :goto_11
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string/jumbo v12, "window"

    invoke-virtual {v0, v12}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v12, v0

    .line 1413
    .local v12, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v13, v0

    .line 1414
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    move-object v14, v0

    .line 1415
    .local v14, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v14, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1417
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    move-object/from16 v33, v0

    .line 1418
    .local v33, "displayInfo":Landroid/view/DisplayInfo;
    move/from16 v34, v2

    move-object/from16 v2, v33

    .end local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    .local v34, "isDesktopMode":Z
    invoke-virtual {v14, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1419
    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfputmDeviceHeight(I)V

    .line 1420
    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfputmDeviceWidth(I)V

    .line 1421
    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfputmDeviceRotation(I)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v2

    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v33    # "displayInfo":Landroid/view/DisplayInfo;
    const-string/jumbo v2, "mDeviceHeight : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDeviceWidth : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mDeviceRotation  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetmDeviceRotation()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a

    if-nez v0, :cond_19

    .line 1429
    :try_start_d
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1431
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1434
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    .end local v0    # "windowStyle":Landroid/content/res/TypedArray;
    .local v23, "windowStyle":Landroid/content/res/TypedArray;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1435
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1436
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1437
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x103031a

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1440
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 1442
    .local v0, "inputChannel":Landroid/view/InputChannel;
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v44, v12

    .end local v12    # "wm":Landroid/view/WindowManager;
    .local v44, "wm":Landroid/view/WindowManager;
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v45, v13

    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    .local v45, "metrics":Landroid/util/DisplayMetrics;
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v38, 0x0

    move-object/from16 v46, v14

    .end local v14    # "defaultDisplay":Landroid/view/Display;
    .local v46, "defaultDisplay":Landroid/view/Display;
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1443
    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v39

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    move-object/from16 v47, v6

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    move/from16 v48, v11

    .end local v11    # "formatChanged":Z
    .local v48, "formatChanged":Z
    :try_start_e
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    .line 1442
    move-object/from16 v35, v2

    move-object/from16 v36, v12

    move-object/from16 v37, v13

    move-object/from16 v40, v14

    move-object/from16 v41, v0

    move-object/from16 v42, v6

    move-object/from16 v43, v11

    invoke-interface/range {v35 .. v43}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v2

    .line 1445
    .local v2, "addToDisplayResult":I
    if-gez v2, :cond_16

    .line 1446
    const-string v6, "Failed to add window while updating wallpaper surface."

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return-void

    .line 1449
    :cond_16
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_12

    :cond_17
    const/4 v6, 0x0

    .line 1450
    .local v6, "isParentVisible":Z
    :goto_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parent visible = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", child visible = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preview  = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v12, v12, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    sget-boolean v11, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v11, :cond_18

    .line 1452
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v11, v11, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v11, :cond_18

    iget-boolean v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eq v11, v6, :cond_18

    .line 1453
    const-string v11, "The visible of parent and child are different. So update visibility of parent\'s one."

    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-virtual {v1, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 1466
    :cond_18
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldZoomOutWallpaper()Z

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/view/IWindowSession;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 1467
    const/4 v11, 0x1

    iput-boolean v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1469
    new-instance v11, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1470
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v1, v0, v12}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_13

    .line 1724
    .end local v0    # "inputChannel":Landroid/view/InputChannel;
    .end local v2    # "addToDisplayResult":I
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "isParentVisible":Z
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v23    # "windowStyle":Landroid/content/res/TypedArray;
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    .end local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v34    # "isDesktopMode":Z
    .end local v44    # "wm":Landroid/view/WindowManager;
    .end local v45    # "metrics":Landroid/util/DisplayMetrics;
    .end local v46    # "defaultDisplay":Landroid/view/Display;
    .end local v48    # "formatChanged":Z
    .restart local v11    # "formatChanged":Z
    :catch_3
    move-exception v0

    move/from16 v48, v11

    move/from16 v39, v8

    move/from16 v36, v15

    .end local v11    # "formatChanged":Z
    .restart local v48    # "formatChanged":Z
    goto/16 :goto_2a

    .line 1427
    .end local v48    # "formatChanged":Z
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v11    # "formatChanged":Z
    .restart local v12    # "wm":Landroid/view/WindowManager;
    .restart local v13    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v14    # "defaultDisplay":Landroid/view/Display;
    .restart local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v24    # "maxBounds":Landroid/graphics/Rect;
    .restart local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v34    # "isDesktopMode":Z
    :cond_19
    move-object/from16 v47, v6

    move/from16 v48, v11

    move-object/from16 v44, v12

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    .line 1473
    .end local v11    # "formatChanged":Z
    .end local v12    # "wm":Landroid/view/WindowManager;
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    .end local v14    # "defaultDisplay":Landroid/view/Display;
    .restart local v44    # "wm":Landroid/view/WindowManager;
    .restart local v45    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v46    # "defaultDisplay":Landroid/view/Display;
    .restart local v48    # "formatChanged":Z
    :goto_13
    :try_start_f
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1474
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9

    .line 1476
    if-nez v9, :cond_1a

    .line 1477
    :try_start_10
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_14

    .line 1724
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    .end local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v34    # "isDesktopMode":Z
    .end local v44    # "wm":Landroid/view/WindowManager;
    .end local v45    # "metrics":Landroid/util/DisplayMetrics;
    .end local v46    # "defaultDisplay":Landroid/view/Display;
    :catch_4
    move-exception v0

    move/from16 v39, v8

    move/from16 v36, v15

    goto/16 :goto_2a

    .line 1479
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v24    # "maxBounds":Landroid/graphics/Rect;
    .restart local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v34    # "isDesktopMode":Z
    .restart local v44    # "wm":Landroid/view/WindowManager;
    .restart local v45    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v46    # "defaultDisplay":Landroid/view/Display;
    :cond_1a
    :try_start_11
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1482
    :goto_14
    const/4 v0, 0x0

    .line 1483
    .local v0, "relayoutResult":I
    sget-boolean v2, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9

    if-eqz v2, :cond_1c

    .line 1484
    :try_start_12
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1485
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v38, 0x0

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    move/from16 v23, v0

    .end local v0    # "relayoutResult":I
    .local v23, "relayoutResult":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    move-object/from16 v35, v2

    move-object/from16 v36, v6

    move-object/from16 v37, v11

    move-object/from16 v39, v12

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    move-object/from16 v42, v0

    invoke-interface/range {v35 .. v42}, Landroid/view/IWindowSession;->updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .end local v23    # "relayoutResult":I
    .restart local v0    # "relayoutResult":I
    goto :goto_15

    .line 1484
    :cond_1b
    move/from16 v23, v0

    .line 1490
    :goto_15
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempRect:Landroid/graphics/Rect;

    .line 1491
    .local v2, "displayCutoutSafe":Landroid/graphics/Rect;
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v6, v2}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    .line 1492
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 1493
    invoke-virtual/range {v22 .. v22}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v53

    invoke-virtual/range {v22 .. v22}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v54

    iget v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 v23, v0

    .end local v0    # "relayoutResult":I
    .restart local v23    # "relayoutResult":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    const/16 v58, 0x0

    const/high16 v59, 0x3f800000    # 1.0f

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 1496
    invoke-virtual/range {v22 .. v22}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v61

    .line 1492
    move-object/from16 v49, v6

    move-object/from16 v50, v11

    move-object/from16 v51, v12

    move-object/from16 v52, v2

    move/from16 v55, v13

    move/from16 v56, v14

    move-object/from16 v57, v0

    move-object/from16 v60, v3

    invoke-virtual/range {v49 .. v61}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;I)V

    .line 1498
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v38, 0x0

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move-object/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v37, v6

    move-object/from16 v39, v11

    move/from16 v40, v12

    move/from16 v41, v13

    invoke-interface/range {v35 .. v41}, Landroid/view/IWindowSession;->updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4

    .line 1500
    .end local v2    # "displayCutoutSafe":Landroid/graphics/Rect;
    move-object/from16 v35, v7

    move/from16 v36, v15

    move/from16 v2, v23

    goto :goto_16

    .line 1501
    .end local v23    # "relayoutResult":I
    .restart local v0    # "relayoutResult":I
    :cond_1c
    move/from16 v23, v0

    .end local v0    # "relayoutResult":I
    .restart local v23    # "relayoutResult":I
    :try_start_13
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    const/16 v54, 0x0

    const/16 v55, 0x0

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v35, v7

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9

    move/from16 v36, v15

    .end local v15    # "creating":Z
    .local v36, "creating":Z
    :try_start_14
    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    move-object/from16 v49, v0

    move-object/from16 v50, v2

    move-object/from16 v51, v3

    move/from16 v52, v6

    move/from16 v53, v11

    move-object/from16 v56, v12

    move-object/from16 v57, v13

    move-object/from16 v58, v14

    move-object/from16 v59, v7

    move-object/from16 v60, v4

    move-object/from16 v61, v15

    invoke-interface/range {v49 .. v61}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v0

    .end local v23    # "relayoutResult":I
    .restart local v0    # "relayoutResult":I
    move v2, v0

    .line 1506
    .end local v0    # "relayoutResult":I
    .local v2, "relayoutResult":I
    :goto_16
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayInstallOrientation:I

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1507
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    add-int/2addr v0, v3

    rem-int/lit8 v0, v0, 0x4

    .line 1506
    invoke-static {v0}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v0

    move v3, v0

    .line 1508
    .local v3, "transformHint":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1509
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v7, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    const/16 v28, 0x0

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move/from16 v25, v4

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v11

    invoke-static/range {v23 .. v29}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    .line 1512
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8

    if-eqz v0, :cond_1e

    .line 1513
    :try_start_15
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1d

    .line 1514
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v4, "Wallpaper BBQ wrapper"

    .line 1515
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1516
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/16 v4, 0x7dd

    .line 1518
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1519
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1520
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v4, "Wallpaper#relayout"

    .line 1521
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1522
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1526
    :cond_1d
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1527
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-direct {v1, v0, v4, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->getOrCreateBLASTSurface(III)Landroid/view/Surface;

    move-result-object v0

    .line 1532
    .local v0, "blastSurface":Landroid/view/Surface;
    if-eqz v0, :cond_1e

    .line 1533
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5

    goto :goto_17

    .line 1724
    .end local v0    # "blastSurface":Landroid/view/Surface;
    .end local v2    # "relayoutResult":I
    .end local v3    # "transformHint":I
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    .end local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v34    # "isDesktopMode":Z
    .end local v44    # "wm":Landroid/view/WindowManager;
    .end local v45    # "metrics":Landroid/util/DisplayMetrics;
    .end local v46    # "defaultDisplay":Landroid/view/Display;
    :catch_5
    move-exception v0

    move/from16 v4, p3

    move/from16 v39, v8

    goto/16 :goto_2a

    .line 1536
    .restart local v2    # "relayoutResult":I
    .restart local v3    # "transformHint":I
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v24    # "maxBounds":Landroid/graphics/Rect;
    .restart local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v34    # "isDesktopMode":Z
    .restart local v44    # "wm":Landroid/view/WindowManager;
    .restart local v45    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v46    # "defaultDisplay":Landroid/view/Display;
    :cond_1e
    :goto_17
    :try_start_16
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8

    if-nez v0, :cond_1f

    .line 1537
    :try_start_17
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Point;->set(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_5

    .line 1543
    :cond_1f
    :try_start_18
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1544
    .local v0, "w":I
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1546
    .local v4, "h":I
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v6}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v6

    .line 1547
    .local v6, "rawCutout":Landroid/view/DisplayCutout;
    new-instance v7, Landroid/graphics/Rect;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v11, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v7, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1548
    .local v7, "visibleFrame":Landroid/graphics/Rect;
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v11}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1549
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    const/16 v51, 0x0

    .line 1550
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v52

    const/16 v53, 0x0

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v56, 0x0

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1553
    invoke-virtual/range {v22 .. v22}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v58

    const/16 v59, 0x0

    .line 1549
    move-object/from16 v49, v11

    move-object/from16 v50, v7

    move/from16 v54, v12

    move/from16 v55, v13

    move/from16 v57, v14

    invoke-virtual/range {v49 .. v59}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v11
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_8

    .line 1555
    .local v11, "windowInsets":Landroid/view/WindowInsets;
    if-nez v9, :cond_20

    .line 1556
    :try_start_19
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v12, v12, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    .line 1557
    .local v12, "padding":Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    add-int/2addr v0, v13

    .line 1558
    iget v13, v12, Landroid/graphics/Rect;->top:I

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    add-int/2addr v4, v13

    .line 1559
    iget v13, v12, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    iget v14, v12, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    iget v15, v12, Landroid/graphics/Rect;->right:I

    neg-int v15, v15

    move/from16 v23, v0

    .end local v0    # "w":I
    .local v23, "w":I
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_5

    move-object v11, v0

    .line 1561
    .end local v12    # "padding":Landroid/graphics/Rect;
    move-object v12, v11

    move v11, v4

    move/from16 v4, v23

    goto :goto_18

    .line 1562
    .end local v23    # "w":I
    .restart local v0    # "w":I
    :cond_20
    move v0, v8

    .line 1563
    move v4, v10

    move-object v12, v11

    move v11, v4

    move v4, v0

    .line 1566
    .end local v0    # "w":I
    .local v4, "w":I
    .local v11, "h":I
    .local v12, "windowInsets":Landroid/view/WindowInsets;
    :goto_18
    :try_start_1a
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_8

    if-eq v0, v4, :cond_21

    .line 1567
    const/16 v17, 0x1

    .line 1568
    :try_start_1b
    iput v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_5

    .line 1570
    :cond_21
    :try_start_1c
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_8

    if-eq v0, v11, :cond_22

    .line 1571
    const/4 v13, 0x1

    .line 1572
    .end local v17    # "sizeChanged":Z
    .local v13, "sizeChanged":Z
    :try_start_1d
    iput v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_6

    move/from16 v17, v13

    goto :goto_19

    .line 1724
    .end local v2    # "relayoutResult":I
    .end local v3    # "transformHint":I
    .end local v4    # "w":I
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .end local v11    # "h":I
    .end local v12    # "windowInsets":Landroid/view/WindowInsets;
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    .end local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v34    # "isDesktopMode":Z
    .end local v44    # "wm":Landroid/view/WindowManager;
    .end local v45    # "metrics":Landroid/util/DisplayMetrics;
    .end local v46    # "defaultDisplay":Landroid/view/Display;
    :catch_6
    move-exception v0

    move/from16 v4, p3

    move/from16 v39, v8

    move/from16 v17, v13

    goto/16 :goto_2a

    .line 1579
    .end local v13    # "sizeChanged":Z
    .restart local v2    # "relayoutResult":I
    .restart local v3    # "transformHint":I
    .restart local v4    # "w":I
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v7    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v11    # "h":I
    .restart local v12    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v17    # "sizeChanged":Z
    .restart local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v24    # "maxBounds":Landroid/graphics/Rect;
    .restart local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v34    # "isDesktopMode":Z
    .restart local v44    # "wm":Landroid/view/WindowManager;
    .restart local v45    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v46    # "defaultDisplay":Landroid/view/Display;
    :cond_22
    :goto_19
    :try_start_1e
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v13, v0

    .line 1580
    .local v13, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v14, v0

    .line 1581
    .local v14, "stableInsets":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_8

    if-eqz v0, :cond_23

    .line 1582
    :try_start_1f
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_5

    goto :goto_1a

    :cond_23
    move-object v0, v6

    :goto_1a
    move-object v15, v0

    .line 1583
    .local v15, "displayCutout":Landroid/view/DisplayCutout;
    :try_start_20
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_1b

    :cond_24
    const/4 v0, 0x0

    :goto_1b
    or-int v18, v18, v0

    .line 1584
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_1c

    :cond_25
    const/4 v0, 0x0

    :goto_1c
    or-int v18, v18, v0

    .line 1585
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v15}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_1d

    :cond_26
    const/4 v0, 0x0

    :goto_1d
    or-int v18, v18, v0

    .line 1587
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1588
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1590
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_8

    if-nez v0, :cond_27

    .line 1591
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_5

    .line 1593
    return-void

    .line 1596
    :cond_27
    const/16 v23, 0x0

    .line 1599
    .local v23, "didSurface":Z
    move/from16 v25, v3

    .end local v3    # "transformHint":I
    .local v25, "transformHint":I
    :try_start_22
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 1601
    if-eqz v16, :cond_2a

    .line 1602
    const/4 v3, 0x1

    :try_start_23
    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1603
    const/16 v23, 0x1

    .line 1606
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1607
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1608
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_29

    .line 1609
    array-length v3, v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    move/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "w":I
    .local v28, "w":I
    :goto_1e
    if-ge v4, v3, :cond_28

    :try_start_24
    aget-object v29, v0, v4

    move-object/from16 v30, v29

    .line 1610
    .local v30, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v29, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v29, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v37, v3

    move-object/from16 v3, v30

    .end local v30    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 1609
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v29

    move/from16 v3, v37

    goto :goto_1e

    .line 1704
    .end local v29    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v0

    move/from16 v3, p3

    move/from16 v29, v2

    move-object/from16 v30, v5

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v4, v35

    move-object/from16 v2, v47

    move-object/from16 v35, v6

    goto/16 :goto_29

    .line 1609
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_28
    move-object/from16 v29, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v29    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_1f

    .line 1608
    .end local v28    # "w":I
    .end local v29    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v4    # "w":I
    :cond_29
    move-object/from16 v29, v0

    move/from16 v28, v4

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v4    # "w":I
    .restart local v28    # "w":I
    .restart local v29    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_1f

    .line 1704
    .end local v28    # "w":I
    .end local v29    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v4    # "w":I
    :catchall_1
    move-exception v0

    move/from16 v28, v4

    move/from16 v3, p3

    move/from16 v29, v2

    move-object/from16 v30, v5

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v4, v35

    move-object/from16 v2, v47

    move-object/from16 v35, v6

    .end local v4    # "w":I
    .restart local v28    # "w":I
    goto/16 :goto_29

    .line 1601
    .end local v28    # "w":I
    .restart local v4    # "w":I
    :cond_2a
    move/from16 v28, v4

    .line 1615
    .end local v4    # "w":I
    .restart local v28    # "w":I
    :goto_1f
    if-nez v36, :cond_2c

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_2b

    goto :goto_20

    :cond_2b
    const/4 v0, 0x0

    goto :goto_21

    :cond_2c
    :goto_20
    const/4 v0, 0x1

    :goto_21
    or-int v3, p3, v0

    .line 1621
    .end local p3    # "redrawNeeded":Z
    .local v3, "redrawNeeded":Z
    :try_start_25
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    if-eqz v0, :cond_2d

    :try_start_26
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_2d

    .line 1622
    const-string v0, "Set redraw after visible because drawn on invisible state"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    move-object/from16 v4, v35

    :try_start_27
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    or-int/2addr v3, v0

    .line 1624
    move/from16 v29, v2

    const/4 v2, 0x0

    .end local v2    # "relayoutResult":I
    .local v29, "relayoutResult":I
    :try_start_28
    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    goto :goto_23

    .line 1704
    :catchall_2
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v35, v6

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v2, v47

    goto/16 :goto_29

    .end local v29    # "relayoutResult":I
    .restart local v2    # "relayoutResult":I
    :catchall_3
    move-exception v0

    move/from16 v29, v2

    goto :goto_22

    :catchall_4
    move-exception v0

    move/from16 v29, v2

    move-object/from16 v4, v35

    :goto_22
    move-object/from16 v30, v5

    move-object/from16 v35, v6

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v2, v47

    .end local v2    # "relayoutResult":I
    .restart local v29    # "relayoutResult":I
    goto/16 :goto_29

    .line 1621
    .end local v29    # "relayoutResult":I
    .restart local v2    # "relayoutResult":I
    :cond_2d
    move/from16 v29, v2

    move-object/from16 v4, v35

    .line 1628
    .end local v2    # "relayoutResult":I
    .restart local v29    # "relayoutResult":I
    :goto_23
    if-nez p2, :cond_2f

    if-nez v36, :cond_2f

    if-nez v16, :cond_2f

    if-nez v48, :cond_2f

    if-eqz v17, :cond_2e

    goto :goto_24

    :cond_2e
    move-object/from16 v30, v5

    move-object/from16 v35, v6

    move-object/from16 v38, v7

    move/from16 v39, v8

    goto :goto_26

    .line 1641
    :cond_2f
    :goto_24
    const/16 v23, 0x1

    .line 1642
    :try_start_29
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    move-object/from16 v30, v5

    .end local v5    # "config":Landroid/content/res/Configuration;
    .local v30, "config":Landroid/content/res/Configuration;
    :try_start_2a
    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    move-object/from16 v35, v6

    .end local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .local v35, "rawCutout":Landroid/view/DisplayCutout;
    :try_start_2b
    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v1, v0, v2, v5, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1644
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1645
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_31

    .line 1646
    array-length v2, v0

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v2, :cond_30

    aget-object v6, v0, v5

    .line 1647
    .local v6, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 p3, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local p3, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v37, v2

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    move-object/from16 v38, v7

    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .local v38, "visibleFrame":Landroid/graphics/Rect;
    :try_start_2c
    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    move/from16 v39, v8

    .end local v8    # "myWidth":I
    .local v39, "myWidth":I
    :try_start_2d
    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-interface {v6, v0, v2, v7, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1646
    .end local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    move/from16 v2, v37

    move-object/from16 v7, v38

    move/from16 v8, v39

    goto :goto_25

    .line 1704
    .end local v39    # "myWidth":I
    .end local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v8    # "myWidth":I
    :catchall_5
    move-exception v0

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v2, v47

    .end local v8    # "myWidth":I
    .restart local v39    # "myWidth":I
    goto/16 :goto_29

    .line 1646
    .end local v38    # "visibleFrame":Landroid/graphics/Rect;
    .end local v39    # "myWidth":I
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v7    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v8    # "myWidth":I
    :cond_30
    move-object/from16 p3, v0

    move-object/from16 v38, v7

    move/from16 v39, v8

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .end local v8    # "myWidth":I
    .restart local v38    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v39    # "myWidth":I
    .restart local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_26

    .line 1645
    .end local v38    # "visibleFrame":Landroid/graphics/Rect;
    .end local v39    # "myWidth":I
    .end local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v7    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v8    # "myWidth":I
    :cond_31
    move-object/from16 p3, v0

    move-object/from16 v38, v7

    move/from16 v39, v8

    .line 1653
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .end local v8    # "myWidth":I
    .restart local v38    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v39    # "myWidth":I
    :goto_26
    if-eqz v18, :cond_32

    .line 1654
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1655
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1656
    iput-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 1660
    invoke-virtual {v1, v12}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    goto :goto_27

    .line 1704
    :catchall_6
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v2, v47

    goto/16 :goto_29

    .line 1663
    :cond_32
    :goto_27
    if-eqz v3, :cond_34

    .line 1664
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1665
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1666
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_34

    .line 1667
    array-length v2, v0

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v2, :cond_34

    aget-object v6, v0, v5

    .line 1668
    .restart local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v7, v6, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v7, :cond_33

    .line 1669
    move-object v7, v6

    check-cast v7, Landroid/view/SurfaceHolder$Callback2;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v7, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1667
    .end local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 1676
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_34
    if-eqz v23, :cond_36

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_36

    .line 1682
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v0, :cond_35

    .line 1689
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1692
    const-string/jumbo v0, "updateSurface onVisibilityChanged visible: true"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_35
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1700
    const-string/jumbo v0, "updateSurface onVisibilityChanged visible: false"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    .line 1704
    :cond_36
    const/4 v2, 0x0

    :try_start_2e
    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1705
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1706
    if-eqz v3, :cond_38

    .line 1707
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1708
    move-object/from16 v2, v47

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-nez v0, :cond_37

    .line 1712
    move-object/from16 v5, v19

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    .line 1717
    :cond_37
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1719
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {v1, v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1721
    :cond_38
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1722
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1723
    nop

    .line 1725
    .end local v11    # "h":I
    .end local v12    # "windowInsets":Landroid/view/WindowInsets;
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v23    # "didSurface":Z
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    .end local v25    # "transformHint":I
    .end local v28    # "w":I
    .end local v29    # "relayoutResult":I
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v34    # "isDesktopMode":Z
    .end local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v38    # "visibleFrame":Landroid/graphics/Rect;
    .end local v44    # "wm":Landroid/view/WindowManager;
    .end local v45    # "metrics":Landroid/util/DisplayMetrics;
    .end local v46    # "defaultDisplay":Landroid/view/Display;
    move v4, v3

    goto/16 :goto_2a

    .line 1704
    .end local v39    # "myWidth":I
    .restart local v7    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v8    # "myWidth":I
    .restart local v11    # "h":I
    .restart local v12    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    .restart local v14    # "stableInsets":Landroid/graphics/Rect;
    .restart local v15    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v23    # "didSurface":Z
    .restart local v24    # "maxBounds":Landroid/graphics/Rect;
    .restart local v25    # "transformHint":I
    .restart local v28    # "w":I
    .restart local v29    # "relayoutResult":I
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v34    # "isDesktopMode":Z
    .restart local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v44    # "wm":Landroid/view/WindowManager;
    .restart local v45    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v46    # "defaultDisplay":Landroid/view/Display;
    :catchall_7
    move-exception v0

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v2, v47

    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .end local v8    # "myWidth":I
    .restart local v38    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v39    # "myWidth":I
    goto :goto_29

    .end local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v38    # "visibleFrame":Landroid/graphics/Rect;
    .end local v39    # "myWidth":I
    .local v6, "rawCutout":Landroid/view/DisplayCutout;
    .restart local v7    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v8    # "myWidth":I
    :catchall_8
    move-exception v0

    move-object/from16 v35, v6

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v2, v47

    .end local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .end local v8    # "myWidth":I
    .restart local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v38    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v39    # "myWidth":I
    goto :goto_29

    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v38    # "visibleFrame":Landroid/graphics/Rect;
    .end local v39    # "myWidth":I
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v7    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v8    # "myWidth":I
    :catchall_9
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v35, v6

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v2, v47

    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .end local v8    # "myWidth":I
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v38    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v39    # "myWidth":I
    goto :goto_29

    .end local v29    # "relayoutResult":I
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v38    # "visibleFrame":Landroid/graphics/Rect;
    .end local v39    # "myWidth":I
    .restart local v2    # "relayoutResult":I
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v7    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v8    # "myWidth":I
    :catchall_a
    move-exception v0

    move/from16 v29, v2

    move-object/from16 v30, v5

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v4, v35

    move-object/from16 v2, v47

    move-object/from16 v35, v6

    .end local v2    # "relayoutResult":I
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .end local v8    # "myWidth":I
    .restart local v29    # "relayoutResult":I
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v38    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v39    # "myWidth":I
    goto :goto_29

    .end local v3    # "redrawNeeded":Z
    .end local v28    # "w":I
    .end local v29    # "relayoutResult":I
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v38    # "visibleFrame":Landroid/graphics/Rect;
    .end local v39    # "myWidth":I
    .restart local v2    # "relayoutResult":I
    .restart local v4    # "w":I
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v7    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v8    # "myWidth":I
    .local p3, "redrawNeeded":Z
    :catchall_b
    move-exception v0

    move/from16 v29, v2

    move/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v5, v19

    move-object/from16 v4, v35

    move-object/from16 v2, v47

    move-object/from16 v35, v6

    move/from16 v3, p3

    .end local v2    # "relayoutResult":I
    .end local v4    # "w":I
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v7    # "visibleFrame":Landroid/graphics/Rect;
    .end local v8    # "myWidth":I
    .end local p3    # "redrawNeeded":Z
    .restart local v3    # "redrawNeeded":Z
    .restart local v28    # "w":I
    .restart local v29    # "relayoutResult":I
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v38    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v39    # "myWidth":I
    :goto_29
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1705
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1706
    if-eqz v3, :cond_3a

    .line 1707
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1708
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-nez v2, :cond_39

    .line 1712
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    .line 1717
    :cond_39
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1719
    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {v1, v2, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1721
    :cond_3a
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1722
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1723
    nop

    .end local v3    # "redrawNeeded":Z
    .end local v9    # "fixedSize":Z
    .end local v10    # "myHeight":I
    .end local v16    # "surfaceCreating":Z
    .end local v17    # "sizeChanged":Z
    .end local v18    # "insetsChanged":Z
    .end local v20    # "flagsChanged":Z
    .end local v21    # "x":I
    .end local v31    # "y":I
    .end local v32    # "typeChanged":Z
    .end local v36    # "creating":Z
    .end local v39    # "myWidth":I
    .end local v48    # "formatChanged":Z
    .end local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .end local p1    # "forceRelayout":Z
    .end local p2    # "forceReport":Z
    throw v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_7

    .line 1724
    .end local v11    # "h":I
    .end local v12    # "windowInsets":Landroid/view/WindowInsets;
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v22    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v23    # "didSurface":Z
    .end local v24    # "maxBounds":Landroid/graphics/Rect;
    .end local v25    # "transformHint":I
    .end local v28    # "w":I
    .end local v29    # "relayoutResult":I
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v33    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v34    # "isDesktopMode":Z
    .end local v35    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v38    # "visibleFrame":Landroid/graphics/Rect;
    .end local v44    # "wm":Landroid/view/WindowManager;
    .end local v45    # "metrics":Landroid/util/DisplayMetrics;
    .end local v46    # "defaultDisplay":Landroid/view/Display;
    .restart local v3    # "redrawNeeded":Z
    .restart local v9    # "fixedSize":Z
    .restart local v10    # "myHeight":I
    .restart local v16    # "surfaceCreating":Z
    .restart local v17    # "sizeChanged":Z
    .restart local v18    # "insetsChanged":Z
    .restart local v20    # "flagsChanged":Z
    .restart local v21    # "x":I
    .restart local v31    # "y":I
    .restart local v32    # "typeChanged":Z
    .restart local v36    # "creating":Z
    .restart local v39    # "myWidth":I
    .restart local v48    # "formatChanged":Z
    .restart local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .restart local p1    # "forceRelayout":Z
    .restart local p2    # "forceReport":Z
    :catch_7
    move-exception v0

    move v4, v3

    goto/16 :goto_2a

    .end local v3    # "redrawNeeded":Z
    .end local v39    # "myWidth":I
    .restart local v8    # "myWidth":I
    .restart local p3    # "redrawNeeded":Z
    :catch_8
    move-exception v0

    move/from16 v39, v8

    move/from16 v4, p3

    .end local v8    # "myWidth":I
    .restart local v39    # "myWidth":I
    goto :goto_2a

    .end local v36    # "creating":Z
    .end local v39    # "myWidth":I
    .restart local v8    # "myWidth":I
    .local v15, "creating":Z
    :catch_9
    move-exception v0

    move/from16 v39, v8

    move/from16 v36, v15

    move/from16 v4, p3

    .end local v8    # "myWidth":I
    .end local v15    # "creating":Z
    .restart local v36    # "creating":Z
    .restart local v39    # "myWidth":I
    goto :goto_2a

    .end local v36    # "creating":Z
    .end local v39    # "myWidth":I
    .end local v48    # "formatChanged":Z
    .restart local v8    # "myWidth":I
    .local v11, "formatChanged":Z
    .restart local v15    # "creating":Z
    :catch_a
    move-exception v0

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v36, v15

    move/from16 v4, p3

    .end local v8    # "myWidth":I
    .end local v11    # "formatChanged":Z
    .end local v15    # "creating":Z
    .restart local v36    # "creating":Z
    .restart local v39    # "myWidth":I
    .restart local v48    # "formatChanged":Z
    goto :goto_2a

    .end local v32    # "typeChanged":Z
    .end local v36    # "creating":Z
    .end local v39    # "myWidth":I
    .end local v48    # "formatChanged":Z
    .restart local v8    # "myWidth":I
    .restart local v11    # "formatChanged":Z
    .local v14, "typeChanged":Z
    .restart local v15    # "creating":Z
    :catch_b
    move-exception v0

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v32, v14

    move/from16 v36, v15

    move/from16 v4, p3

    .end local v8    # "myWidth":I
    .end local v11    # "formatChanged":Z
    .end local v14    # "typeChanged":Z
    .end local v15    # "creating":Z
    .restart local v32    # "typeChanged":Z
    .restart local v36    # "creating":Z
    .restart local v39    # "myWidth":I
    .restart local v48    # "formatChanged":Z
    goto :goto_2a

    .end local v31    # "y":I
    .end local v32    # "typeChanged":Z
    .end local v36    # "creating":Z
    .end local v39    # "myWidth":I
    .end local v48    # "formatChanged":Z
    .restart local v8    # "myWidth":I
    .restart local v11    # "formatChanged":Z
    .local v13, "y":I
    .restart local v14    # "typeChanged":Z
    .restart local v15    # "creating":Z
    :catch_c
    move-exception v0

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move/from16 v4, p3

    .end local v8    # "myWidth":I
    .end local v11    # "formatChanged":Z
    .end local v13    # "y":I
    .end local v14    # "typeChanged":Z
    .end local v15    # "creating":Z
    .restart local v31    # "y":I
    .restart local v32    # "typeChanged":Z
    .restart local v36    # "creating":Z
    .restart local v39    # "myWidth":I
    .restart local v48    # "formatChanged":Z
    goto :goto_2a

    .end local v21    # "x":I
    .end local v31    # "y":I
    .end local v32    # "typeChanged":Z
    .end local v36    # "creating":Z
    .end local v39    # "myWidth":I
    .end local v48    # "formatChanged":Z
    .restart local v8    # "myWidth":I
    .restart local v11    # "formatChanged":Z
    .local v12, "x":I
    .restart local v13    # "y":I
    .restart local v14    # "typeChanged":Z
    .restart local v15    # "creating":Z
    :catch_d
    move-exception v0

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v21, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move/from16 v4, p3

    .end local v8    # "myWidth":I
    .end local v11    # "formatChanged":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    .end local v14    # "typeChanged":Z
    .end local v15    # "creating":Z
    .restart local v21    # "x":I
    .restart local v31    # "y":I
    .restart local v32    # "typeChanged":Z
    .restart local v36    # "creating":Z
    .restart local v39    # "myWidth":I
    .restart local v48    # "formatChanged":Z
    goto :goto_2a

    .end local v20    # "flagsChanged":Z
    .end local v21    # "x":I
    .end local v31    # "y":I
    .end local v32    # "typeChanged":Z
    .end local v36    # "creating":Z
    .end local v39    # "myWidth":I
    .end local v48    # "formatChanged":Z
    .local v5, "flagsChanged":Z
    .restart local v8    # "myWidth":I
    .restart local v11    # "formatChanged":Z
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    .restart local v14    # "typeChanged":Z
    .restart local v15    # "creating":Z
    :catch_e
    move-exception v0

    move/from16 v20, v5

    move/from16 v39, v8

    move/from16 v48, v11

    move/from16 v21, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move/from16 v4, p3

    .line 1730
    .end local v5    # "flagsChanged":Z
    .end local v8    # "myWidth":I
    .end local v11    # "formatChanged":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    .end local v14    # "typeChanged":Z
    .end local v15    # "creating":Z
    .end local p3    # "redrawNeeded":Z
    .local v4, "redrawNeeded":Z
    .restart local v20    # "flagsChanged":Z
    .restart local v21    # "x":I
    .restart local v31    # "y":I
    .restart local v32    # "typeChanged":Z
    .restart local v36    # "creating":Z
    .restart local v39    # "myWidth":I
    .restart local v48    # "formatChanged":Z
    :goto_2a
    return-void
.end method
