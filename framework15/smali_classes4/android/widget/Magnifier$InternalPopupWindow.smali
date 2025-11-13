.class Landroid/widget/Magnifier$InternalPopupWindow;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPopupWindow"
.end annotation


# static fields
.field private static final greylist-max-o SURFACE_Z:I = 0x5


# instance fields
.field private final blacklist mBBQ:Landroid/graphics/BLASTBufferQueue;

.field private final blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field private greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mBitmapRenderNode:Landroid/graphics/RenderNode;

.field private greylist-max-o mCallback:Landroid/widget/Magnifier$Callback;

.field private greylist-max-o mContentHeight:I

.field private final greylist-max-o mContentWidth:I

.field private blacklist mCurrentContent:Landroid/graphics/Bitmap;

.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private greylist-max-o mFirstDraw:Z

.field private greylist-max-o mFrameDrawScheduled:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mIsFishEyeStyle:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMagnifierUpdater:Ljava/lang/Runnable;

.field private blacklist mMeshHeight:I

.field private blacklist mMeshLeft:[F

.field private blacklist mMeshRight:[F

.field private blacklist mMeshWidth:I

.field private final greylist-max-o mOffsetX:I

.field private final greylist-max-o mOffsetY:I

.field private final blacklist mOverlay:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverlayRenderNode:Landroid/graphics/RenderNode;

.field private greylist-max-o mPendingWindowPositionUpdate:Z

.field private final blacklist mRamp:I

.field private final greylist-max-o mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private final greylist-max-o mSurface:Landroid/view/Surface;

.field private final greylist-max-o mSurfaceControl:Landroid/view/SurfaceControl;

.field private final greylist-max-o mSurfaceSession:Landroid/view/SurfaceSession;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mWindowPositionX:I

.field private greylist-max-o mWindowPositionY:I

.field private blacklist mZoom:F


# direct methods
.method public static synthetic blacklist $r8$lambda$anz8nud3Iq6rx1egcDwS_UvEQMc(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/widget/Magnifier$InternalPopupWindow;->lambda$doDraw$0(ZIIZJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mVc55Ea-sk0FReygcyspBh5G-GU(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->doDraw()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBitmap(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/widget/Magnifier$Callback;
    .locals 0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentContent(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdrawOverlay(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateContentFactors(Landroid/widget/Magnifier$InternalPopupWindow;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContentFactors(IF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCurrentContentForTesting(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceControl;IIFIFFLandroid/graphics/drawable/Drawable;Landroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;Z)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    move-object/from16 v6, p2

    iput-object v6, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    move-object/from16 v7, p10

    iput-object v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v8, p12

    iput-object v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    move-object/from16 v9, p13

    iput-object v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    iput v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iput v3, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    move/from16 v10, p6

    iput v10, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    move/from16 v11, p7

    iput v11, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    const v0, 0x3f866666    # 1.05f

    mul-float v12, v4, v0

    float-to-int v12, v12

    iput v12, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v12, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v0

    iget v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    iget v13, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    mul-int/lit8 v13, v13, 0x2

    add-int v19, v0, v13

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v13, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v13}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string/jumbo v13, "magnifier surface"

    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    move-object/from16 v15, p3

    invoke-virtual {v0, v15}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v13, "InternalPopupWindow"

    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v14, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v14}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string/jumbo v14, "magnifier surface bbq wrapper"

    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v14, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    iget-object v14, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/16 v18, -0x3

    const-string/jumbo v17, "magnifier surface"

    move-object v13, v0

    move-object/from16 v16, v14

    const/4 v6, 0x0

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    move/from16 v16, v12

    move/from16 v17, v19

    invoke-direct/range {v13 .. v18}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    new-instance v0, Landroid/view/ThreadedRenderer$SimpleRenderer;

    const-string/jumbo v13, "magnifier renderer"

    iget-object v14, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    move-object/from16 v15, p1

    invoke-direct {v0, v15, v13, v14}, Landroid/view/ThreadedRenderer$SimpleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    const-string/jumbo v0, "magnifier content"

    invoke-direct {v1, v0, v4, v5}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    const-string/jumbo v0, "magnifier overlay"

    invoke-direct {v1, v0, v5}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier$InternalPopupWindow;->setupOverlay()V

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v13

    :try_start_0
    invoke-virtual {v13}, Landroid/graphics/RecordingCanvas;->enableZ()V

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v13, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v13}, Landroid/graphics/RecordingCanvas;->disableZ()V

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v13, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v13}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v0, :cond_0

    iget v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v14, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v14, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    :cond_0
    move-object/from16 v6, p11

    iput-object v6, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    move/from16 v14, p14

    iput-boolean v14, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    iget-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier$InternalPopupWindow;->createMeshMatrixForFishEyeEffect()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v6, p11

    move/from16 v14, p14

    iget-object v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    throw v0
.end method

.method private blacklist createMeshMatrixForFishEyeEffect()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v2, v0

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v2, v0

    mul-int/2addr v1, v2

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    return-void
.end method

.method private blacklist createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setElevation(F)Z

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    const v3, -0xff0100

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/graphics/RecordingCanvas;->drawColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    throw v3
.end method

.method private blacklist createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    return-object v0
.end method

.method private greylist-max-o doDraw()V
    .locals 19

    move-object/from16 v7, p0

    iget-object v8, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v8

    return-void

    :cond_0
    iget-object v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v2, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v5, v0

    :try_start_1
    iget-object v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-boolean v3, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_2
    iget v3, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v3, v3

    iget v6, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v6, v9

    int-to-float v6, v6

    iget v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float/2addr v6, v9

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    float-to-int v3, v3

    new-instance v6, Landroid/graphics/Rect;

    sub-int v9, v0, v3

    invoke-direct {v6, v3, v4, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget v10, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    iget v11, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v12, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    sub-int/2addr v11, v12

    iget v12, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v9, v10, v4, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v15, v9

    iget-object v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v9, v6, v15, v2}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9, v4, v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    iget v11, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v12, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v13, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v5

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    iget-object v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    sub-int v10, v0, v3

    invoke-static {v9, v10, v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    iget v11, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v12, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v13, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v5

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v12, v5

    goto/16 :goto_3

    :cond_1
    :try_start_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v10, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v6, v4, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v9, v3, v6, v2}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    iget-object v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    iget-boolean v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    if-nez v0, :cond_3

    iget-boolean v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v11, v4

    move-object v12, v5

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean v6, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    iput-boolean v4, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    iget-boolean v3, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    iput-boolean v4, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    iget v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    iget v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    move v9, v1

    new-instance v10, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object/from16 v2, p0

    move v11, v4

    move v4, v0

    move-object v12, v5

    move v5, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZ)V

    move-object v1, v10

    iget-boolean v2, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-nez v2, :cond_4

    iget-object v2, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v4, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v4, v0, v9}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightCenter(Landroid/view/Display;II)V

    :cond_4
    move-object v0, v1

    :goto_2
    iput-boolean v11, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v1, v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    invoke-interface {v1}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    move-object v12, v5

    :goto_3
    :try_start_5
    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private blacklist drawOverlay()V
    .locals 5

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    throw v1
.end method

.method private blacklist fillMeshMatrix()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    const/4 v2, 0x6

    iput v2, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget v2, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    int-to-float v3, v3

    iget v4, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float v4, v3, v4

    sub-float v5, v3, v4

    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    iget v8, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v8, v1

    mul-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    iget v7, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    rem-int v7, v6, v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    int-to-float v9, v7

    iget v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v8, v6

    iget-object v8, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    iget v9, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iget v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    mul-int/2addr v10, v7

    iget v11, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    div-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v8, v6

    div-int/lit8 v8, v6, 0x2

    iget v9, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v9, v1

    div-int/2addr v8, v9

    int-to-float v9, v7

    mul-float/2addr v9, v5

    iget v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v9, v4

    sub-float v10, v3, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget-object v12, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    add-int/lit8 v13, v6, 0x1

    int-to-float v14, v8

    mul-float/2addr v14, v9

    iget v15, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float/2addr v14, v10

    aput v14, v12, v13

    int-to-float v12, v7

    mul-float/2addr v12, v5

    iget v13, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v12, v3, v12

    sub-float v13, v3, v12

    div-float/2addr v13, v11

    iget-object v11, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    add-int/lit8 v14, v6, 0x1

    int-to-float v15, v8

    mul-float/2addr v15, v12

    iget v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    int-to-float v1, v1

    div-float/2addr v15, v1

    add-float/2addr v15, v13

    aput v15, v11, v14

    add-int/lit8 v6, v6, 0x2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$doDraw$0(ZIIZJ)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p5, p6}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method private greylist-max-o requestUpdate()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    return-void
.end method

.method private blacklist setupOverlay()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/Magnifier$InternalPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/Magnifier$InternalPopupWindow$1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private blacklist updateContentFactors(IF)V
    .locals 7

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v3, -0x3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    add-int/2addr v5, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v0}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    add-int/2addr v5, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v0}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v1

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->disableZ()V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    throw v2

    :cond_1
    :goto_0
    iput p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    return-void
.end method

.method private blacklist updateCurrentContentForTesting()V
    .locals 6

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->destroy()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public greylist-max-o setContentPositionForNextDraw(II)V
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    return-void
.end method

.method public greylist-max-o updateContent(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    return-void
.end method
