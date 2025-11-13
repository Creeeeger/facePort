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
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;,
        Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;
    }
.end annotation


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

.field private blacklist mCustomDimAmount:F

.field private blacklist mDefaultDimAmount:F

.field greylist-max-o mDestroyed:Z

.field final greylist-max-o mDispatchedContentInsets:Landroid/graphics/Rect;

.field greylist-max-o mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

.field final greylist-max-o mDispatchedStableInsets:Landroid/graphics/Rect;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private blacklist mDisplayContext:Landroid/content/Context;

.field private blacklist mDisplayHeight:I

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private blacklist mDisplayRotation:I

.field private greylist-max-o mDisplayState:I

.field private blacklist mDisplayWidth:I

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

.field protected blacklist mIsFixedOrientationRequested:Z

.field greylist-max-o mIsInAmbientMode:Z

.field private blacklist mIsScreenTurningOn:Z

.field private greylist-max-o mLastColorInvalidation:J

.field private blacklist mLastProcessLocalColorsTimestamp:J

.field private blacklist mLastScreenshot:Landroid/graphics/Bitmap;

.field private final blacklist mLastSurfaceSize:Landroid/graphics/Point;

.field final greylist-max-o mLayout:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mLidState:I

.field private final blacklist mLocalColorAreas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalColorsToAdd:Landroid/util/ArraySet;
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

.field private blacklist mNeedUpdateSurfaceAfterVisibilityChanged:Z

.field private final greylist-max-o mNotifyColorsChanged:Ljava/lang/Runnable;

.field greylist-max-o mOffsetMessageEnqueued:Z

.field greylist-max-o mOffsetsChanged:Z

.field greylist-max-o mPendingMove:Landroid/view/MotionEvent;

.field greylist-max-o mPendingSync:Z

.field private greylist-max-p mPendingXOffset:F

.field private greylist-max-o mPendingXOffsetStep:F

.field private greylist-max-o mPendingYOffset:F

.field private greylist-max-o mPendingYOffsetStep:F

.field private blacklist mPixelCopyCount:I

.field blacklist mPreserveVisible:Z

.field blacklist mPreviewSurfacePosition:Landroid/graphics/Rect;

.field private blacklist mPreviousWallpaperDimAmount:F

.field private blacklist mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field blacklist mRelayoutResult:Landroid/view/WindowRelayoutResult;

.field greylist-max-o mReportedVisible:Z

.field private blacklist mResetWindowPages:Z

.field private blacklist mScreenshotSize:Landroid/graphics/Point;

.field private blacklist mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSession:Landroid/view/IWindowSession;

.field blacklist mShouldDimByDefault:Z

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSurfaceCreated:Z

.field final greylist-max-o mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field private final blacklist mSurfaceSize:Landroid/graphics/Point;

.field final blacklist mSyncSeqIdBundle:Landroid/os/Bundle;

.field final blacklist mTempControls:Landroid/view/InsetsSourceControl$Array;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTmpValues:[F

.field greylist-max-o mType:I

.field greylist-max-o mVisible:Z

.field private blacklist mWallpaperDimAmount:F

.field greylist-max-o mWidth:I

.field final blacklist mWinFrames:Landroid/window/ClientWindowFrames;

.field final greylist-max-o mWindow:Lcom/android/internal/view/BaseIWindow;

.field greylist-max-o mWindowFlags:I

.field private blacklist mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

.field greylist-max-o mWindowPrivateFlags:I

.field greylist-max-o mWindowToken:Landroid/os/IBinder;

.field blacklist mX:I

.field blacklist mY:I

.field blacklist mZoom:F

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public static synthetic blacklist $r8$lambda$3jX6LT2WFK8p48hRgDRaH45bOtA(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePage$2(ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DP3zhCwfM-jUectCyYRWZR9n0cA(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$addLocalColorsAreas$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GShbwRGG_28Qbgw7ZiWH2EcBra8(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$removeLocalColorsAreas$5(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cTLJo1Q3sdj6NDN1rGmGrTBCock(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$switchDisplay$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ohYq4B3nAldT3-sO9RiLuVHOv-0(Landroid/service/wallpaper/WallpaperService$Engine;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$processLocalColors$1(JJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uvEMS0sEXbaKTh-TxU28qDRsYcY(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePageColors$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .locals 0

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLidState(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .locals 0

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedUpdateSurfaceAfterVisibilityChanged(Landroid/service/wallpaper/WallpaperService$Engine;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedUpdateSurfaceAfterVisibilityChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedUpdateSurfaceAfterVisibilityChanged(Landroid/service/wallpaper/WallpaperService$Engine;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedUpdateSurfaceAfterVisibilityChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingXOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .locals 0

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingXOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .locals 0

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingYOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .locals 0

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingYOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .locals 0

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWallpaperFlagsString(Landroid/service/wallpaper/WallpaperService$Engine;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlagsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresizePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->resizePreview(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

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

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    const/16 v2, 0x10

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    const/4 v2, 0x4

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    new-instance v3, Landroid/window/ClientWindowFrames;

    invoke-direct {v3}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    sget-object v3, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3}, Landroid/view/InsetsState;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v3}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    new-instance v3, Landroid/util/MergedConfiguration;

    invoke-direct {v3}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {}, Lcom/android/window/flags/Flags;->windowSessionRelayoutInfo()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    new-instance v3, Landroid/view/SurfaceControl;

    invoke-direct {v3}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {}, Lcom/android/window/flags/Flags;->windowSessionRelayoutInfo()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/view/WindowRelayoutResult;

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    new-array v2, v0, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsFixedOrientationRequested:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedUpdateSurfaceAfterVisibilityChanged:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$4;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist cleanUpScreenshotSurfaceControl()V
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    :cond_0
    return-void
.end method

.method private greylist-max-o dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsFixedOrientationRequested:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :goto_2
    return-void
.end method

.method private blacklist enableKeyguardTouchEventReceiving(Z)V
    .locals 4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string v1, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableKeyguardTouchEventReceiving: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", permission required"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v2, p1}, Landroid/view/IWindowSession;->setKeyguardWallpaperTouchAllowed(Landroid/view/IWindow;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableKeyguardTouchEventReceiving: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist fixRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

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

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_3
    iput v0, p2, Landroid/graphics/Rect;->right:I

    return-object p2
.end method

.method private blacklist freeze()V
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->showScreenshotOfWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 7

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v2, v0

    if-gez v4, :cond_0

    move v2, v0

    :cond_0
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v3, v1

    :cond_1
    int-to-float v4, p3

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    int-to-float v2, p3

    mul-float/2addr v2, v3

    rem-float/2addr v2, v5

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private blacklist getDisplayState(Landroid/view/Display;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/Display;->getCommittedState()I

    move-result v1

    return v1
.end method

.method private blacklist getOrCreateBLASTSurface(III)Landroid/view/Surface;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/BLASTBufferQueue;

    const-string v3, "Wallpaper"

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    move-object v2, v1

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    :goto_0
    return-object v0
.end method

.method private blacklist getRectFPage(Landroid/graphics/RectF;F)I
    .locals 3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ne v1, v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    return v2

    :cond_2
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    :cond_3
    return v1
.end method

.method private blacklist getWallpaperFlagsString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    move-result v0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    const-string/jumbo v2, "lock"

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PREVIEW_LOCK_ONLY_LIVE_WALLPAPER:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v1, "preview"

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "systemlock"

    return-object v1

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "system"

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist handleDisplaySwitch(Z)V
    .locals 4

    const/16 v0, 0x271b

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreserveVisible:Z

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreserveVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreserveVisible:Z

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {v1}, Landroid/service/wallpaper/EngineWindowPage;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

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

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v2

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/service/wallpaper/EngineWindowPage;->addArea(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private blacklist isDisplaySizeChanged(II)Z
    .locals 5

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v0, v2, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method

.method private synthetic blacklist lambda$addLocalColorsAreas$4(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$processLocalColors$1(JJ)V
    .locals 2

    add-long v0, p1, p3

    iput-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastProcessLocalColorsTimestamp:J

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColorsInternal()V

    return-void
.end method

.method private synthetic blacklist lambda$removeLocalColorsAreas$5(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v4, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/service/wallpaper/EngineWindowPage;->removeArea(Landroid/graphics/RectF;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$switchDisplay$6()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    return-void
.end method

.method private synthetic blacklist lambda$updatePage$2(ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V
    .locals 12

    move-object v6, p0

    move-object v7, p2

    move-object/from16 v8, p7

    const-string v0, "WallpaperService#pixelCopy"

    move v9, p1

    invoke-static {v0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    if-eqz p10, :cond_1

    invoke-virtual {p2}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v0, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v11, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    :cond_0
    move-wide/from16 v10, p8

    goto :goto_0

    :cond_1
    iput-object v8, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v8}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    move-wide/from16 v10, p8

    invoke-virtual {p2, v10, v11}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$updatePageColors$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WallpaperService"

    const-string v2, "Error calling Connection.onLocalWallpaperColorsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$updateWallpaperDimming$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method private blacklist notifyWallpaperPid()V
    .locals 6

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->isStockLiveWallpaperPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/app/WallpaperManager;->notifyPid(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private blacklist notifyWallpaperPidDetach()V
    .locals 6

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->isStockLiveWallpaperPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/app/WallpaperManager;->notifyPid(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private blacklist processLocalColors()V
    .locals 14

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastProcessLocalColorsTimestamp:J

    sub-long v9, v7, v0

    const-wide/16 v0, 0x7d0

    sub-long/2addr v0, v9

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v13, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda7;

    move-object v1, v13

    move-object v2, p0

    move-wide v3, v7

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda7;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;JJ)V

    invoke-virtual {v0, v13, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private blacklist processLocalColorsInternal()V
    .locals 15

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    iget v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    rem-float v3, v1, v2

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v9, v4

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-float v5, v4

    div-float v2, v3, v5

    add-int/lit8 v3, v4, -0x1

    int-to-float v3, v3

    int-to-float v5, v4

    div-float/2addr v3, v5

    mul-float/2addr v1, v3

    div-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v9, v4

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v1

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    move v4, v3

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v7, v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v7, v7

    if-eq v7, v9, :cond_4

    :cond_3
    new-array v7, v9, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {p0, v7, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V

    :cond_4
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v11, v10}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v10, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v11

    iget-object v12, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v12, v12, v11

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    invoke-virtual {v12, v10}, Landroid/service/wallpaper/EngineWindowPage;->removeColor(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_6
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    :cond_7
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v7, v7

    if-lt v4, v7, :cond_8

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v7, v7

    add-int/lit8 v4, v7, -0x1

    move v10, v4

    goto :goto_2

    :cond_8
    move v10, v4

    :goto_2
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v4, v10

    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v4}, Landroid/service/wallpaper/EngineWindowPage;->getAreas()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p0

    move v6, v10

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePage(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    return-void

    :cond_9
    :goto_3
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist reposition()V
    .locals 7

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v4, 0x3

    aget v4, v1, v4

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v5, 0x1

    aget v5, v1, v5

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v6, 0x4

    aget v6, v1, v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private blacklist resetWindowPages()V
    .locals 4

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist resizePreview(Landroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method private blacklist setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

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

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    invoke-direct {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    return-void
.end method

.method private blacklist showScreenshotOfWallpaper()Z
    .locals 7

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const-string v3, "WallpaperService"

    if-eqz v2, :cond_1

    const-string v2, "Failed to screenshot wallpaper: surface bounds are empty"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2

    const-string v2, "Screenshot is unexpectedly not null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    :cond_2
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v2, v4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v2, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v4, "Failed to screenshot wallpaper: screenshotBuffer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

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

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    const-string v5, "WallpaperService.Engine.showScreenshotOfWallpaper"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v4, 0x1

    return v4

    :cond_4
    :goto_0
    return v1
.end method

.method private blacklist unfreeze()V
    .locals 1

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method private blacklist updateFrozenState(Z)V
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->unfreeze()V

    :goto_1
    return-void
.end method

.method private blacklist updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/wallpaper/EngineWindowPage;",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;IIF)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WallpaperService#updatePageColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/RectF;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct {v1, v4, v5, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v9, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v10, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    :try_start_0
    invoke-static {v8, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move/from16 v13, p5

    invoke-static {v0, v13}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v14

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2, v4}, Landroid/service/wallpaper/EngineWindowPage;->getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v14, v15}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    :cond_2
    invoke-virtual {v2, v4, v14}, Landroid/service/wallpaper/EngineWindowPage;->addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    move-object/from16 v16, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v4, v14}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    move-object/from16 v2, p1

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v13, p5

    move-object v2, v0

    move-object v0, v2

    const-string v2, "WallpaperService"

    const-string v14, "Error creating page local color bitmap"

    invoke-static {v2, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_4
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v13, p5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_5
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v13, p5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ProcessLocalColors should be called from the background thread"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateWallpaperDimming(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    return-void
.end method

.method private blacklist validStep(F)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

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

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 3

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayState(Landroid/view/Display;)I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    const-string v0, "WPMS.Engine.onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    const-string v1, "WPMS.Engine.updateSurface"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyWallpaperPid()V

    :cond_2
    return-void
.end method

.method public greylist-max-o detach()V
    .locals 4

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

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

    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyWallpaperPidDetach()V

    :cond_3
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    :cond_4
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    :cond_5
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    :cond_6
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    :cond_8
    return-void
.end method

.method public blacklist doAmbientModeChanged(ZJ)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->onAmbientModeChanged(ZJ)V

    :cond_0
    return-void
.end method

.method greylist-max-o doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 8

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_4

    const-string v0, "android.wallpaper.freeze"

    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.wallpaper.unfreeze"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "android.wallpaper.displayswitch"

    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->handleDisplaySwitch(Z)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateFrozenState(Z)V

    :cond_3
    iget-object v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v7, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-boolean v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v1, :cond_5

    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :cond_5
    :goto_3
    return-void
.end method

.method greylist-max-o doDesiredSizeChanged(II)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    :cond_0
    return-void
.end method

.method greylist-max-o doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_0
    return-void
.end method

.method greylist-max-o doOffsetsChanged(Z)V
    .locals 12

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    move v9, v2

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    iget v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    move v10, v2

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int/2addr v0, v3

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

    :goto_0
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v11, v4, v8

    if-lez v11, :cond_3

    int-to-float v2, v11

    mul-float/2addr v2, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    :cond_3
    move v8, v2

    move-object v2, p0

    move v3, v1

    move v4, v9

    invoke-virtual/range {v2 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    :cond_5
    :goto_1
    if-eqz v10, :cond_6

    :try_start_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_6
    :goto_2
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method greylist-max-o doVisibilityChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility(Z)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mIsScreenTurningOn="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "mX="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "mY="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinFrames="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZoom="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPreviewSurfacePosition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingResizeCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_0
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreserveVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPreserveVisible=true"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingXOffset="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " mPendingXOffset="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingXOffsetStep="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " mPendingXOffsetStep="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mPendingSync="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingMove="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getCurrentUserId()I
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCurrentUserId(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)I

    move-result v0

    return v0
.end method

.method public whitelist getDesiredMinimumHeight()I
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public whitelist getDisplayContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    return v0
.end method

.method public whitelist getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public whitelist getWallpaperFlags()I
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getWindowTokenAsBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getZoom()F
    .locals 1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    return v0
.end method

.method public whitelist isInAmbientMode()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    return v0
.end method

.method protected blacklist isKeyguardTouchEventRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPreview()Z
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public whitelist isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public whitelist notifyColorsChanged()V
    .locals 8

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_0

    const-string v0, "Ignoring notifyColorsChanged(), Engine has already been destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    const-string v0, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    iput-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v0

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V

    goto :goto_0

    :cond_3
    const-string v4, "Can\'t notify system because wallpaper connection was not established."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "Can\'t notify system because wallpaper connection was lost."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-interface {v3, v2, v1, v4}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method public whitelist onAmbientModeChanged(ZJ)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0

    return-void
.end method

.method public whitelist onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onComputeColors()Landroid/app/WallpaperColors;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x272e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public whitelist onDesiredSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    return-void
.end method

.method public blacklist onDimAmountChanged(F)V
    .locals 0

    return-void
.end method

.method public whitelist onOffsetsChanged(FFFFII)V
    .locals 0

    return-void
.end method

.method blacklist onScreenTurningOnChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility(Z)V

    :cond_0
    return-void
.end method

.method public whitelist onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public whitelist onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public whitelist onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public whitelist onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public blacklist onSwitchDisplayChanged(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public whitelist onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onWallpaperFlagsChanged(I)V
    .locals 0

    return-void
.end method

.method public whitelist onZoomChanged(F)V
    .locals 0

    return-void
.end method

.method public blacklist refreshCachedWallpaper(I)V
    .locals 0

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

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist reportEngineShown(Z)V
    .locals 5

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPMS.reportEngineShown-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportEngineShown: shouldWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x27a6

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method greylist-max-o reportSurfaceDestroyed()V
    .locals 5

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method blacklist reportVisibility(Z)V
    .locals 9

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayState(Landroid/view/Display;)I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->AOD_FULLSCREEN:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misAodTransitionRequired(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v1

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v6

    or-int/2addr v6, v4

    invoke-virtual {v3, v6}, Landroid/app/WallpaperManager;->isStockLiveWallpaper(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    move v0, v3

    :cond_2
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    invoke-static {v3}, Landroid/view/Display;->isOnState(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v6

    :goto_2
    nop

    iget-boolean v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v7, :cond_5

    if-nez v3, :cond_6

    if-nez v6, :cond_6

    if-nez v0, :cond_6

    :cond_5
    iget-boolean v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreserveVisible:Z

    if-eqz v7, :cond_7

    :cond_6
    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    iget-boolean v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-ne v7, v4, :cond_8

    if-eqz p1, :cond_e

    :cond_8
    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    sget-boolean v7, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v7, :cond_9

    sget-boolean v7, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v7, v7, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v7

    iput v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    :cond_9
    const-string v7, "WallpaperService"

    if-eqz v4, :cond_b

    invoke-virtual {p0, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    iget-boolean v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    if-eqz v8, :cond_a

    const-string/jumbo v8, "reportVisibility: enforce redraw"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    invoke-virtual {p0, v5, v5, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reportVisibility: visibility changed. visible="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    if-eqz v4, :cond_c

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v5, v5, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v5, :cond_c

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyWallpaperPid()V

    :cond_c
    iget-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v5, :cond_d

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    :cond_d
    invoke-static {v4, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method blacklist scaleAndCropScreenshot()V
    .locals 11

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v8, v2, v3

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

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

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v8

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

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

    return-void
.end method

.method public blacklist semCreateSurface(ZF)Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semCreateSurface: keepPrevSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "semCreateSurface: the initial surface is not created yet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "semCreateSurface: engine is destroyed state"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, v1, v3}, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper BBQ wrapper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlagsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v4, "Wallpaper#recreate"

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v1, Landroid/graphics/BLASTBufferQueue;

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v8, v4, Landroid/graphics/Point;->y:I

    iget v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    const-string v5, "Wallpaper"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_4
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v4}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v3, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    if-eqz p1, :cond_5

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-object v0

    :cond_5
    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->-$$Nest$fgetmBlastBufferQueue(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->-$$Nest$fgetmSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-object v2

    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semCreateSurface: Incorrect alpha value. alpha="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7
    :goto_1
    const-string/jumbo v0, "semCreateSurface: current surface control is not ready"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist semGetExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmExtras(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist semGetWallpaperFlags()I
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    return v0
.end method

.method protected blacklist semIsFixedOrientationRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsFixedOrientationRequested:Z

    return v0
.end method

.method public blacklist semReleaseSurface(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semReleaseSurface: surfaceControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->-$$Nest$fgetmSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->-$$Nest$fgetmBlastBufferQueue(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->-$$Nest$fgetmSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method protected blacklist semSetFixedOrientation(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetFixedOrientation: fixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsFixedOrientationRequested:Z

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setCreated(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    return-void
.end method

.method public blacklist setCurrentUserId(I)V
    .locals 0

    return-void
.end method

.method public greylist setFixedSizeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    return-void
.end method

.method public whitelist setOffsetNotificationsEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_1
    return-void
.end method

.method public blacklist setShowForAllUsers(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_1
    return-void
.end method

.method public blacklist setSurfaceAlpha(F)V
    .locals 3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_1

    const-string v0, "Skip set alpha. Already destroyed!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

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

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "setSurfaceAlpha mBbqSurfaceControl is null or invalid"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string/jumbo v0, "mIWallpaperEngine or mWallpaperManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setTouchEventsEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_1
    return-void
.end method

.method public blacklist setZoom(F)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    :cond_0
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v1, :cond_2

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onZoomChanged(F)V

    :cond_2
    return-void

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

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldZoomOutWallpaper()Z
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmIsWearOs(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x103e6fd3

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist supportsLocalColorExtraction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist switchDisplay(Z)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " switchDisplay start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , lidState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    if-ne v1, v3, :cond_0

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedUpdateSurfaceAfterVisibilityChanged:Z

    :cond_0
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSwitchDisplayChanged(Z)V

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v3, p1, :cond_2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " switchDisplay finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method blacklist updatePage(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/wallpaper/EngineWindowPage;",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;IIF)V"
        }
    .end annotation

    move-object/from16 v12, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long v13, v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getLastUpdateTime()J

    move-result-wide v0

    sub-long v15, v13, v0

    cmp-long v0, v15, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_3
    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_1
    move v11, v0

    const/high16 v0, 0x42800000    # 64.0f

    int-to-float v1, v11

    div-float v18, v0, v1

    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, v18

    float-to-int v8, v0

    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v18

    float-to-int v7, v0

    const-string v6, "WallpaperService"

    if-lez v8, :cond_5

    if-gtz v7, :cond_4

    move-object v3, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move-object v2, v10

    move/from16 v26, v11

    move-wide/from16 v20, v15

    goto/16 :goto_4

    :cond_4
    const-string v19, "WallpaperService#pixelCopy"

    iget v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    move v5, v0

    const-string v0, "WallpaperService#pixelCopy"

    invoke-static {v0, v5}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v9, v4

    :try_start_0
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v5

    move-wide/from16 v20, v15

    move-object v15, v4

    move-object/from16 v4, p1

    move/from16 v16, v5

    move-object/from16 v5, p2

    move-object/from16 v22, v6

    move/from16 v6, p3

    move/from16 v23, v7

    move/from16 v7, p4

    move/from16 v24, v8

    move/from16 v8, p5

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-wide v10, v13

    :try_start_1
    invoke-direct/range {v1 .. v11}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;J)V

    iget-object v1, v12, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, v25

    :try_start_2
    invoke-static {v2, v15, v0, v1}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, v25

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move-object v2, v10

    move/from16 v26, v11

    move-wide/from16 v20, v15

    move-object v15, v4

    move/from16 v16, v5

    :goto_2
    const-string v1, "Cancelling processLocalColors: exception caught during PixelCopy"

    move-object/from16 v3, v22

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_5
    move-object v3, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move-object v2, v10

    move/from16 v26, v11

    move-wide/from16 v20, v15

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong width and height values of bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v4, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method greylist-max-o updateSurface(ZZZ)V
    .locals 63

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string/jumbo v5, "updateSurface : finish redrawing reserve to redraw after visible cause currently not visible."

    const-string/jumbo v6, "updateSurface: invoke Session.finishDrawing"

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v7, "WallpaperService"

    if-eqz v0, :cond_0

    const-string v0, "Ignoring updateSurface due to destroyed"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v8

    if-nez v8, :cond_1

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

    :goto_0
    if-gtz v8, :cond_2

    const/4 v8, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v9

    if-nez v9, :cond_3

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

    :goto_2
    if-gtz v9, :cond_4

    const/4 v9, -0x1

    move v10, v9

    move v9, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    move v10, v9

    move v9, v0

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSurface "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlagsString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " forceRelayout="

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    move v15, v0

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    xor-int/2addr v0, v14

    move/from16 v16, v0

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

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    xor-int/2addr v0, v14

    move/from16 v18, v0

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

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move-object/from16 v19, v6

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v0, v6, :cond_c

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v0, v6, :cond_b

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v0, 0x1

    :goto_b
    move v6, v0

    if-nez v2, :cond_e

    if-nez v15, :cond_e

    if-nez v16, :cond_e

    if-nez v11, :cond_e

    if-nez v17, :cond_e

    if-nez v14, :cond_e

    if-nez v6, :cond_e

    if-nez v4, :cond_e

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_d

    goto :goto_c

    :cond_d
    move/from16 v20, v6

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    move/from16 v46, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v31, v14

    move/from16 v47, v15

    goto/16 :goto_29

    :cond_e
    :goto_c
    :try_start_0
    iput v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    iput v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    iput v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iput v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    move-object/from16 v20, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_f

    move/from16 v20, v6

    const/4 v6, 0x1

    if-ne v0, v6, :cond_f

    const/4 v0, 0x1

    goto :goto_d

    :cond_f
    const/4 v0, 0x0

    :goto_d
    move v6, v0

    :try_start_1
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_e

    move/from16 v21, v12

    :try_start_2
    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_d

    or-int/lit16 v12, v12, 0x200

    const/high16 v22, 0x10000

    or-int v12, v12, v22

    or-int/lit16 v12, v12, 0x100

    move/from16 v22, v13

    const/16 v13, 0x8

    or-int/2addr v12, v13

    :try_start_3
    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v12, v0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v13, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v0, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v13, v0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_10

    if-eq v10, v0, :cond_11

    :cond_10
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_c

    if-eqz v0, :cond_12

    :cond_11
    :try_start_4
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v31, v14

    :try_start_5
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, -0x4001

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v32, v5

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    move/from16 v46, v11

    move/from16 v47, v15

    goto/16 :goto_29

    :catch_1
    move-exception v0

    move/from16 v31, v14

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    move/from16 v46, v11

    move/from16 v47, v15

    goto/16 :goto_29

    :cond_12
    move/from16 v31, v14

    :try_start_6
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v14, v8

    div-float/2addr v0, v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v32, v5

    int-to-float v5, v10

    div-float/2addr v14, v5

    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_b

    if-eqz v5, :cond_14

    :try_start_7
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v5, :cond_14

    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v1, v5, v14}, Landroid/service/wallpaper/WallpaperService$Engine;->isDisplaySizeChanged(II)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v5, v5

    int-to-float v14, v8

    div-float/2addr v5, v14

    iget v14, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v14, v14

    move/from16 v25, v0

    int-to-float v0, v10

    div-float/2addr v14, v0

    invoke-static {v5, v14}, Ljava/lang/Math;->max(FF)F

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_f

    :cond_13
    move/from16 v25, v0

    goto :goto_e

    :cond_14
    move/from16 v25, v0

    :goto_e
    move/from16 v0, v25

    :goto_f
    :try_start_8
    iget-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsFixedOrientationRequested:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_b

    if-eqz v5, :cond_15

    if-nez v6, :cond_15

    :try_start_9
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    const/4 v14, 0x2

    if-eq v5, v14, :cond_15

    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v14, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v25, v0

    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v14, v5

    move/from16 v26, v5

    int-to-float v5, v10

    div-float/2addr v14, v5

    int-to-float v5, v0

    move/from16 v27, v0

    int-to-float v0, v8

    div-float/2addr v5, v0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_10

    :cond_15
    move/from16 v25, v0

    move/from16 v0, v25

    :goto_10
    :try_start_a
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v14, v8

    mul-float/2addr v14, v0

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v14, v14, v25

    float-to-int v14, v14

    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v14, v10

    mul-float/2addr v14, v0

    add-float v14, v14, v25

    float-to-int v14, v14

    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v14, v14, 0x4000

    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_11
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsFixedOrientationRequested:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_b

    if-eqz v0, :cond_16

    if-nez v6, :cond_16

    :try_start_b
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_16

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_12

    :cond_16
    :try_start_c
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_12
    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maxBounds : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " , mDeviceHeight : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", mDeviceWidth : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",mDeviceRotation  : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    move v5, v0

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_b

    if-nez v0, :cond_19

    :try_start_d
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v14, v14, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v14, 0x800033

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v14, 0x1030323

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v23, v2

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move/from16 v44, v5

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v45, v6

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v37

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v38

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    move/from16 v46, v11

    :try_start_e
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    move/from16 v47, v15

    const/4 v3, 0x1

    :try_start_f
    new-array v15, v3, [F

    const/16 v36, 0x0

    move-object/from16 v33, v14

    move-object/from16 v34, v2

    move-object/from16 v35, v5

    move-object/from16 v39, v0

    move-object/from16 v40, v6

    move-object/from16 v41, v11

    move-object/from16 v43, v15

    invoke-interface/range {v33 .. v43}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v2

    if-gez v2, :cond_17

    const-string v3, "Failed to add window while updating wallpaper surface."

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isKeyguardTouchEventRequired()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->enableKeyguardTouchEventReceiving(Z)V

    :cond_18
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldZoomOutWallpaper()Z

    move-result v11

    invoke-interface {v5, v6, v11}, Landroid/view/IWindowSession;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    new-instance v5, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v1, v0, v6}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_13

    :catch_2
    move-exception v0

    move/from16 v47, v15

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    goto/16 :goto_29

    :catch_3
    move-exception v0

    move/from16 v46, v11

    move/from16 v47, v15

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    goto/16 :goto_29

    :cond_19
    move-object/from16 v23, v2

    move/from16 v44, v5

    move/from16 v45, v6

    move/from16 v46, v11

    move/from16 v47, v15

    :goto_13
    :try_start_10
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_a

    if-nez v9, :cond_1a

    :try_start_11
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_14

    :catch_4
    move-exception v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    goto/16 :goto_29

    :cond_1a
    :try_start_12
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_14
    const-string/jumbo v0, "updateSurface: invoke Session.relayout"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/window/flags/Flags;->windowSessionRelayoutInfo()Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_a

    if-eqz v0, :cond_1b

    :try_start_13
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v36, v5

    move/from16 v37, v6

    move-object/from16 v42, v11

    invoke-interface/range {v33 .. v42}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_4

    move v2, v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    goto :goto_15

    :cond_1b
    :try_start_14
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_a

    move/from16 v33, v10

    :try_start_15
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_9

    move/from16 v34, v8

    :try_start_16
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8

    move/from16 v35, v9

    :try_start_17
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v48, v0

    move-object/from16 v49, v2

    move-object/from16 v50, v3

    move/from16 v51, v5

    move/from16 v52, v6

    move-object/from16 v57, v11

    move-object/from16 v58, v14

    move-object/from16 v59, v15

    move-object/from16 v60, v10

    move-object/from16 v61, v8

    move-object/from16 v62, v9

    invoke-interface/range {v48 .. v62}, Landroid/view/IWindowSession;->relayoutLegacy(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    move-result v0

    move v2, v0

    :goto_15
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object v3, v0

    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry updateSurface because bounds changed from relayout: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz v4, :cond_1c

    const/4 v11, 0x1

    goto :goto_16

    :cond_1c
    const/4 v11, 0x0

    :goto_16
    const/16 v6, 0x272e

    invoke-virtual {v5, v6, v11}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_1d
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getInstallOrientation()I

    move-result v0

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    add-int/2addr v0, v5

    rem-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v0

    move v5, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v9, v9, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    const/16 v29, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v13

    move/from16 v26, v6

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v30, v10

    invoke-static/range {v24 .. v30}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper BBQ wrapper "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlagsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v6, "Wallpaper#relayout"

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    :cond_1e
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-direct {v1, v0, v6, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->getOrCreateBLASTSurface(III)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    :cond_1f
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Point;->set(II)V

    :cond_20
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v8}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v10, v10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v10}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v12}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v51

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v24, v3

    iget-object v3, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v56

    const/16 v50, 0x0

    const/16 v54, 0x0

    const/16 v57, 0x0

    move-object/from16 v48, v10

    move-object/from16 v49, v9

    move/from16 v52, v11

    move/from16 v53, v14

    move/from16 v55, v15

    invoke-virtual/range {v48 .. v57}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v3

    if-nez v35, :cond_21

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v14, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v14

    add-int/2addr v0, v11

    iget v11, v10, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v14

    add-int/2addr v6, v11

    iget v11, v10, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v14, v10, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    iget v15, v10, Landroid/graphics/Rect;->right:I

    neg-int v15, v15

    move/from16 v25, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    invoke-virtual {v3, v11, v14, v15, v0}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    move-object v3, v0

    move v10, v6

    move-object v6, v3

    move/from16 v3, v25

    goto :goto_17

    :cond_21
    move/from16 v0, v34

    move/from16 v6, v33

    move v10, v6

    move-object v6, v3

    move v3, v0

    :goto_17
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    if-eq v0, v3, :cond_22

    const/16 v17, 0x1

    iput v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    :cond_22
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_7

    if-eq v0, v10, :cond_23

    const/4 v11, 0x1

    :try_start_18
    iput v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_5

    move/from16 v17, v11

    goto :goto_18

    :catch_5
    move-exception v0

    move/from16 v17, v11

    goto/16 :goto_29

    :cond_23
    :goto_18
    :try_start_19
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v11, v0

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v14, v0

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    goto :goto_19

    :cond_24
    move-object v0, v8

    :goto_19
    move-object v15, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_1a

    :cond_25
    const/4 v0, 0x0

    :goto_1a
    or-int v18, v18, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_1b

    :cond_26
    const/4 v0, 0x0

    :goto_1b
    or-int v18, v18, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v15}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_1c

    :cond_27
    const/4 v0, 0x0

    :goto_1c
    or-int v18, v18, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v3, v10}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_7

    return-void

    :cond_28
    const/16 v25, 0x0

    move/from16 v26, v3

    :try_start_1a
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v16, :cond_2b

    const/4 v3, 0x1

    :try_start_1b
    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    const/16 v25, 0x1

    const-string v0, "WPMS.Engine.onSurfaceCreated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_2a

    array-length v3, v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move/from16 v29, v5

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v3, :cond_29

    :try_start_1c
    aget-object v30, v0, v5

    move-object/from16 v36, v30

    move-object/from16 v30, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v37, v3

    move-object/from16 v3, v36

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    move/from16 v3, v37

    goto :goto_1d

    :catchall_0
    move-exception v0

    move/from16 v30, v2

    move v3, v4

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v5, v19

    move-object/from16 v2, v32

    goto/16 :goto_28

    :cond_29
    move-object/from16 v30, v0

    goto :goto_1e

    :cond_2a
    move-object/from16 v30, v0

    move/from16 v29, v5

    goto :goto_1e

    :catchall_1
    move-exception v0

    move/from16 v29, v5

    move/from16 v30, v2

    move v3, v4

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v5, v19

    move-object/from16 v2, v32

    goto/16 :goto_28

    :cond_2b
    move/from16 v29, v5

    :goto_1e
    if-nez v47, :cond_2d

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_2c

    goto :goto_1f

    :cond_2c
    const/4 v0, 0x0

    goto :goto_20

    :cond_2d
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    or-int v3, v4, v0

    :try_start_1d
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v0, :cond_2e

    :try_start_1e
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_2e

    const-string v0, "Set redraw after visible because drawn on invisible state"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    or-int/2addr v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    goto :goto_21

    :catchall_2
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v5, v19

    move-object/from16 v2, v32

    goto/16 :goto_28

    :cond_2e
    :goto_21
    if-nez p2, :cond_30

    if-nez v47, :cond_30

    if-nez v16, :cond_30

    if-nez v46, :cond_30

    if-eqz v17, :cond_2f

    goto :goto_22

    :cond_2f
    move/from16 v30, v2

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    goto :goto_24

    :cond_30
    :goto_22
    const/16 v25, 0x1

    :try_start_1f
    const-string v0, "WPMS.Engine.onSurfaceChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    move/from16 v30, v2

    :try_start_20
    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_32

    array-length v2, v0

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v2, :cond_31

    aget-object v5, v0, v4

    move-object/from16 p3, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v36, v2

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    move-object/from16 v37, v8

    :try_start_21
    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    move-object/from16 v38, v9

    :try_start_22
    iget v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-interface {v5, v0, v2, v8, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    move/from16 v2, v36

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    goto :goto_23

    :catchall_3
    move-exception v0

    move-object/from16 v38, v9

    move-object/from16 v5, v19

    move-object/from16 v2, v32

    goto/16 :goto_28

    :cond_31
    move-object/from16 p3, v0

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    goto :goto_24

    :cond_32
    move-object/from16 p3, v0

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    :goto_24
    if-eqz v18, :cond_33

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    const-string v0, "WPMS.Engine.onApplyWindowInsets"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_25

    :catchall_4
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v2, v32

    goto/16 :goto_28

    :cond_33
    :goto_25
    if-nez v3, :cond_34

    if-eqz v17, :cond_36

    :cond_34
    const-string v0, "WPMS.Engine.onSurfaceRedrawNeeded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_36

    array-length v2, v0

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v2, :cond_36

    aget-object v5, v0, v4

    instance-of v8, v5, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v8, :cond_35

    move-object v8, v5

    check-cast v8, Landroid/view/SurfaceHolder$Callback2;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_36
    if-eqz v25, :cond_39

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_39

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    const-string/jumbo v2, "updateSurface onVisibilityChanged visible: false"

    const-string v4, "WPMS.Engine.onVisibilityChanged-false"

    if-eqz v0, :cond_38

    :try_start_23
    invoke-static {}, Lcom/android/window/flags/Flags;->noConsecutiveVisibilityEvents()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    const-string v5, "WPMS.Engine.onVisibilityChanged-true"

    if-eqz v0, :cond_37

    :try_start_24
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_37
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    const-string/jumbo v0, "updateSurface onVisibilityChanged visible: true"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_38
    :goto_27
    invoke-static {}, Lcom/android/window/flags/Flags;->noConsecutiveVisibilityEvents()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    :cond_39
    const/4 v2, 0x0

    :try_start_25
    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v3, :cond_3b

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-nez v0, :cond_3a

    move-object/from16 v2, v32

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    :cond_3a
    move-object/from16 v5, v19

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    :cond_3b
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    nop

    move v4, v3

    goto/16 :goto_29

    :catchall_5
    move-exception v0

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v5, v19

    move-object/from16 v2, v32

    goto :goto_28

    :catchall_6
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v5, v19

    move-object/from16 v2, v32

    goto :goto_28

    :catchall_7
    move-exception v0

    move/from16 v30, v2

    move/from16 v29, v5

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v5, v19

    move-object/from16 v2, v32

    move v3, v4

    :goto_28
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v3, :cond_3d

    iget-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-nez v4, :cond_3c

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    :cond_3c
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v5, 0x7fffffff

    const/4 v7, 0x0

    invoke-interface {v2, v4, v7, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    :cond_3d
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    nop

    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_6

    :catch_6
    move-exception v0

    move v4, v3

    goto/16 :goto_29

    :catch_7
    move-exception v0

    goto/16 :goto_29

    :catch_8
    move-exception v0

    move/from16 v35, v9

    goto/16 :goto_29

    :catch_9
    move-exception v0

    move/from16 v34, v8

    move/from16 v35, v9

    goto/16 :goto_29

    :catch_a
    move-exception v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    goto :goto_29

    :catch_b
    move-exception v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    move/from16 v46, v11

    move/from16 v47, v15

    goto :goto_29

    :catch_c
    move-exception v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    move/from16 v46, v11

    move/from16 v31, v14

    move/from16 v47, v15

    goto :goto_29

    :catch_d
    move-exception v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    move/from16 v46, v11

    move/from16 v22, v13

    move/from16 v31, v14

    move/from16 v47, v15

    goto :goto_29

    :catch_e
    move-exception v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    move/from16 v46, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v31, v14

    move/from16 v47, v15

    goto :goto_29

    :catch_f
    move-exception v0

    move/from16 v20, v6

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v10

    move/from16 v46, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v31, v14

    move/from16 v47, v15

    :goto_29
    return-void
.end method
