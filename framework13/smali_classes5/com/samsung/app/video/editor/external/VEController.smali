.class Lcom/samsung/app/video/editor/external/VEController;
.super Ljava/lang/Object;
.source "VEController.java"


# instance fields
.field private final blacklist AUTOEDIT_MODE_AUTO:I

.field private final blacklist DISPLAY_TYPE_PAUSE:I

.field private final blacklist DISPLAY_TYPE_PLAY:I

.field private final blacklist FULL_VERSION_SUMMARY:I

.field private final blacklist LITE_VERSION_SUMMARY:I

.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist lockObject:Ljava/lang/Object;

.field private final blacklist mAssetManager:Landroid/content/res/AssetManager;

.field private blacklist mCurrentLocation:I

.field private blacklist mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

.field blacklist mEngineListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

.field blacklist mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

.field private blacklist mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

.field private blacklist mThiz:Lcom/samsung/app/video/editor/external/VEController;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "VEController"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/app/video/editor/external/VEController;->AUTOEDIT_MODE_AUTO:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/VEController;->FULL_VERSION_SUMMARY:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/app/video/editor/external/VEController;->LITE_VERSION_SUMMARY:I

    .line 29
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/app/video/editor/external/VEController;->DISPLAY_TYPE_PAUSE:I

    .line 30
    iput v0, p0, Lcom/samsung/app/video/editor/external/VEController;->DISPLAY_TYPE_PLAY:I

    .line 75
    new-instance v0, Lcom/samsung/app/video/editor/external/VEController$1;

    invoke-direct {v0, p0}, Lcom/samsung/app/video/editor/external/VEController$1;-><init>(Lcom/samsung/app/video/editor/external/VEController;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mMainHandler:Landroid/os/Handler;

    .line 481
    new-instance v0, Lcom/samsung/app/video/editor/external/VEController$2;

    invoke-direct {v0, p0}, Lcom/samsung/app/video/editor/external/VEController$2;-><init>(Lcom/samsung/app/video/editor/external/VEController;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mEngineListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    .line 53
    iput-object p0, p0, Lcom/samsung/app/video/editor/external/VEController;->mThiz:Lcom/samsung/app/video/editor/external/VEController;

    .line 54
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/VEController;->mAssetManager:Landroid/content/res/AssetManager;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 57
    sget-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->DEFAULT:Lcom/samsung/app/video/editor/external/SummaryState;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    .line 58
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/app/video/editor/external/VEController;)Lcom/samsung/app/video/editor/external/VEState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/VEController;

    .line 17
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/app/video/editor/external/VEController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/VEController;

    .line 17
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private blacklist getBitmapFrombyteArray([BII)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I

    .line 1042
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1043
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-string v1, "VEController"

    if-eqz v0, :cond_1

    .line 1044
    if-eqz p1, :cond_0

    .line 1045
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1046
    .local v1, "pixelBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1047
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1049
    const/4 p1, 0x0

    .line 1050
    nop

    .line 1051
    .end local v1    # "pixelBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1052
    :cond_0
    const-string v2, "<<<<<<< retouch effect GOT NULL DATA FROM ENGINE >>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1055
    :cond_1
    const-string v2, "<<<<<<< Bitmap.createBitmap -  NULL >>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_0
    return-object v0
.end method


# virtual methods
.method blacklist addEffectToVideoThumbnailRequest(I[BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/ThumbnailListener;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "bytes"    # [B
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I
    .param p5, "effectType"    # I
    .param p6, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p7, "isEffect"    # I
    .param p8, "layerTransformInfo"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .param p9, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 670
    move-object v0, p0

    const-string v1, "VEController"

    const-string v2, "In addEffectToVideoThumbnailRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->isSurfacePrepared()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->addEffectToVideoThumbnailRequest(I[BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/ThumbnailListener;)Z

    goto :goto_0

    .line 674
    :cond_1
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 675
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->GET_EFFECT_TO_VIDEO_THUMBNAIL_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 677
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist changeSphericalSurface(Z)V
    .locals 4
    .param p1, "isSpherical"    # Z

    .line 843
    const-string v0, "VEController"

    const-string v1, "Inside changeSphericalSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v0, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 845
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->changeSphericalSurfaceNative(ZIJ)V

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_2

    .line 847
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->changeSphericalSurfaceNative(ZIJ)V

    .line 849
    :cond_2
    :goto_0
    return-void
.end method

.method blacklist clearEffectToVideoThumbnailRequest()V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->clearEffectToVideoThumbnailRequest()V

    .line 684
    :cond_0
    return-void
.end method

.method blacklist clearStoryBoardThumbnailRequest()V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->clearStoryBoardThumbnailRequest()V

    .line 627
    :cond_0
    return-void
.end method

.method public blacklist controlTone(Lcom/samsung/app/video/editor/external/ToneParams;)V
    .locals 2
    .param p1, "toneParams"    # Lcom/samsung/app/video/editor/external/ToneParams;

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In controlTone() : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_2

    .line 1256
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->SET_TONE_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_1

    .line 1253
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->controlToneNative(Lcom/samsung/app/video/editor/external/ToneParams;)V

    .line 1258
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist createFreeHandLayer(Lcom/samsung/app/video/editor/external/DoodleStroke;)V
    .locals 2
    .param p1, "doodleStroke"    # Lcom/samsung/app/video/editor/external/DoodleStroke;

    .line 883
    const-string v0, "VEController"

    const-string v1, "Inside createFreeHandLayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_0

    .line 886
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->DOODLE_EVENT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 888
    :cond_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->createFreeHandLayerNative(Lcom/samsung/app/video/editor/external/DoodleStroke;)V

    .line 889
    return-void
.end method

.method public blacklist createSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;DLcom/samsung/app/video/editor/external/SummaryMode;)Z
    .locals 9
    .param p1, "input"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "output"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p3, "mSummaryDuration"    # D
    .param p5, "mode"    # Lcom/samsung/app/video/editor/external/SummaryMode;

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside createSummary : Current state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    sget-object v1, Lcom/samsung/app/video/editor/external/SummaryState;->DEFAULT:Lcom/samsung/app/video/editor/external/SummaryState;

    if-ne v0, v1, :cond_2

    .line 780
    sget-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->CREATING:Lcom/samsung/app/video/editor/external/SummaryState;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    .line 781
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->SUMMARY_CREATING:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 782
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {p5}, Lcom/samsung/app/video/editor/external/SummaryMode;->getValue()I

    move-result v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->createInstanceSummaryNative(Lcom/samsung/app/video/editor/external/TranscodeElement;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    const/16 v8, 0x32

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->createSummaryNative(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;DI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    sget-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->CREATED:Lcom/samsung/app/video/editor/external/SummaryState;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    .line 786
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_0

    .line 787
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->SUMMARY_COMPLETED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 788
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 791
    :cond_1
    sget-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->DEFAULT:Lcom/samsung/app/video/editor/external/SummaryState;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    .line 792
    return v2

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_3

    .line 795
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->CREATE_SUMMARY_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 796
    :cond_3
    return v2
.end method

.method blacklist deinit()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deinit start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 237
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->DEINIT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_1

    .line 230
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->deinitThumbnail()V

    .line 231
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->deInit()V

    .line 232
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 233
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 234
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->DEINIT_SUCCESS:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 239
    :cond_2
    :goto_1
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deinit end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist destroySummary()Z
    .locals 3

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside destroySummary : Current state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    sget-object v1, Lcom/samsung/app/video/editor/external/SummaryState;->CREATED:Lcom/samsung/app/video/editor/external/SummaryState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_2

    .line 812
    :cond_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->freeSummaryOutputNative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->deleteSummaryInstanceNative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    sget-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->DEFAULT:Lcom/samsung/app/video/editor/external/SummaryState;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    .line 815
    const/4 v0, 0x1

    return v0

    .line 817
    :cond_1
    return v2

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_3

    .line 820
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->DESTROY_SUMMARY_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 821
    :cond_3
    return v2
.end method

.method blacklist destroySurface()V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroySurface start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    if-eqz v1, :cond_1

    .line 410
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->isSurfacePrepared()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->callOnSurfaceDestroyed()V

    .line 413
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    if-eqz v1, :cond_0

    .line 414
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->setSurfacePrepared(Z)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 417
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->SURFACE_DESTROYED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 420
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->DESTROY_SURFACE_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 422
    :cond_2
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroySurface end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "inp"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "exportParams"    # Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;
    .param p3, "outputfd"    # Ljava/io/FileDescriptor;

    .line 433
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "export start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSummaryState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", outputfd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-nez p3, :cond_0

    .line 436
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 437
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->EXPORT_ERROR:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    sget-object v2, Lcom/samsung/app/video/editor/external/SummaryState;->CREATING:Lcom/samsung/app/video/editor/external/SummaryState;

    if-eq v1, v2, :cond_1

    .line 440
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->deinitThumbnail()V

    .line 441
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/app/video/editor/external/NativeInterface;->export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)V

    .line 442
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 443
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 444
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->EXPORT_STARTED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 447
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->EXPORT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 449
    :cond_2
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "export end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist fetchLutInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/LUTInfo;",
            ">;)V"
        }
    .end annotation

    .line 948
    .local p1, "lutInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/LUTInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside fetchLutInfo : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_2

    .line 955
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->FETCH_LUT_INFO_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_1

    .line 950
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->fetchLUTInfoNative(Ljava/util/List;)V

    .line 957
    :cond_2
    :goto_1
    return-void
.end method

.method blacklist findIfJpeg(Ljava/lang/String;)I
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;

    .line 711
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->findIfJPEGNative(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist forceStopSummaryCreation()Z
    .locals 2

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside forceStopSummaryCreation : Current state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    sget-object v1, Lcom/samsung/app/video/editor/external/SummaryState;->CREATING:Lcom/samsung/app/video/editor/external/SummaryState;

    if-ne v0, v1, :cond_0

    .line 766
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->stopSummaryNative()V

    .line 768
    sget-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->DEFAULT:Lcom/samsung/app/video/editor/external/SummaryState;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    .line 769
    const/4 v0, 0x1

    return v0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_1

    .line 772
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->FORCE_STOP_SUMMARY_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 773
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurScalePosInfo([F[F)V
    .locals 5
    .param p1, "currScale"    # [F
    .param p2, "currPosition"    # [F

    .line 1219
    const-string v0, "VEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getCurScalePositionInfo : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1222
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurScalePosInfoNative([F[F)V

    goto :goto_0

    .line 1224
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 1225
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->GET_SCALE_POS_INFO_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1227
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1228
    return-void

    .line 1227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getCurrentPlayPosition()I
    .locals 2

    .line 460
    const-string v0, "VEController"

    const-string v1, "Inside getCurrentPlayPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getPositionOfPlayer()I

    move-result v0

    return v0
.end method

.method blacklist getCurrentState()Lcom/samsung/app/video/editor/external/VEState;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    return-object v0
.end method

.method public blacklist getEngineVersion()Ljava/lang/String;
    .locals 1

    .line 1288
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getEngineVersionNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFileProperties(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 741
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->getFileProperties(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getHandle()Landroid/os/Handler;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getLayerTransformInfo(Lcom/samsung/app/video/editor/external/GraphicLayerType;IZ)Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .locals 9
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .param p2, "index"    # I
    .param p3, "clearRotation"    # Z

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In getLayerTransformInfo : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    .line 1021
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v5, 0x1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->getLayerTransformInfoNative(JILcom/samsung/app/video/editor/external/GraphicLayerType;IZ)Lcom/samsung/app/video/editor/external/LayerTransformParams;

    move-result-object v0

    return-object v0

    .line 1023
    :cond_1
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v4, 0x2

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->getLayerTransformInfoNative(JILcom/samsung/app/video/editor/external/GraphicLayerType;IZ)Lcom/samsung/app/video/editor/external/LayerTransformParams;

    move-result-object v0

    return-object v0

    .line 1016
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_3

    .line 1017
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->GET_LAYER_TRANSFORM_INFO_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1018
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinBestMaxSummaryDurations()[I
    .locals 2

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside getMinBestMaxSummaryDurations : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    sget-object v1, Lcom/samsung/app/video/editor/external/SummaryState;->CREATED:Lcom/samsung/app/video/editor/external/SummaryState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    .line 928
    :cond_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getMinBestMaxSummaryDurationsNative()[I

    move-result-object v0

    return-object v0

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_2

    .line 931
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->GET_SUMMARY_DURATION_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 932
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPerspectiveViewInfo()Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_0

    .line 1077
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->GET_PERSPECTIVE_INFO_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1078
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1080
    :cond_1
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getPerspectiveViewInfoNative()Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    move-result-object v0

    return-object v0
.end method

.method blacklist getPreviewThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZLcom/samsung/app/video/editor/external/PreviewFrameType;FLjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V
    .locals 17
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "time"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "isDetailMode"    # Z
    .param p8, "type"    # Lcom/samsung/app/video/editor/external/PreviewFrameType;
    .param p9, "storyBoardTime"    # F
    .param p13, "framekey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIZ",
            "Lcom/samsung/app/video/editor/external/PreviewFrameType;",
            "F",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p10, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p11, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p12, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p14, "doodleParamsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewThumbnail : Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->isSurfacePrepared()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/app/video/editor/external/PreviewFrameType;->getValue()I

    move-result v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->addPreviewThubnailRequest(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZIFLjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 651
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->GET_PREVIEW_FRAME_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 653
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist getStaticDoodleBuffer(Ljava/util/List;III)[B
    .locals 3
    .param p1, "doodleParams"    # Ljava/util/List;
    .param p2, "timeStamp"    # I
    .param p3, "doodleWidth"    # I
    .param p4, "doodleHeight"    # I

    .line 901
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_0
    const-string v1, "VEController"

    const-string v2, "Inside getStaticDoodleBuffer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 907
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->DOODLE_EVENT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 908
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 904
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/app/video/editor/external/NativeInterface;->getStaticDoodleBufferNative(Ljava/util/List;III)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getStoryboardThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZLcom/samsung/app/video/editor/external/ThumbnailType;FLjava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;Ljava/util/List;)V
    .locals 17
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "time"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "isDetailedMode"    # Z
    .param p8, "type"    # Lcom/samsung/app/video/editor/external/ThumbnailType;
    .param p9, "storyBoardTime"    # F
    .param p12, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIZ",
            "Lcom/samsung/app/video/editor/external/ThumbnailType;",
            "F",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Lcom/samsung/app/video/editor/external/ThumbnailListener;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p10, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p11, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p13, "doodleParamsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStoryboardThumbnail : Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 617
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->GET_STORYBOARD_THUMBNAIL_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_1

    .line 614
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/app/video/editor/external/ThumbnailType;->getValue()I

    move-result v11

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    invoke-virtual/range {v3 .. v16}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->addStoryBoardThumbnailRequest(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZIFLjava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;Ljava/util/List;)Z

    .line 619
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist getSummaryElementInElementList(Lcom/samsung/app/video/editor/external/Element;I)Z
    .locals 2
    .param p1, "elem"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "pos"    # I

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside getSummaryElementInElementList : Current state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    sget-object v1, Lcom/samsung/app/video/editor/external/SummaryState;->CREATED:Lcom/samsung/app/video/editor/external/SummaryState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    .line 802
    :cond_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/NativeInterface;->getSummaryElementInElementListAtNative(Lcom/samsung/app/video/editor/external/Element;I)Z

    move-result v0

    return v0

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_2

    .line 805
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->GET_SUMMARY_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 806
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getSummaryState()Lcom/samsung/app/video/editor/external/SummaryState;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    return-object v0
.end method

.method blacklist getVideoDuration(Ljava/lang/String;)I
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 721
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->getVideoDuration(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getVideoThumbnail([BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bytes"    # [B
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I
    .param p4, "effectType"    # I
    .param p5, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p6, "isEffect"    # I
    .param p7, "layerTransformInfo"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 751
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside getVideoThumbnail : Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, "b":[B
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->isSurfacePrepared()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnailNative([BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;)[B

    move-result-object v1

    goto :goto_0

    .line 756
    :cond_0
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v2, :cond_1

    .line 757
    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->GET_EFFECT_TO_VIDEO_THUMBNAIL_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v2, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 759
    :cond_1
    :goto_0
    move v2, p2

    move v3, p3

    invoke-direct {p0, v1, p2, p3}, Lcom/samsung/app/video/editor/external/VEController;->getBitmapFrombyteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method blacklist getVideoTimestamp()I
    .locals 2

    .line 472
    const-string v0, "VEController"

    const-string v1, "Inside getVideoTimestamp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getVideoTimestamp()I

    move-result v0

    return v0
.end method

.method blacklist init()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    .line 179
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_init()V

    .line 180
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 181
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 182
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->INIT_SUCCESS:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 185
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->INIT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 187
    :cond_1
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isUHDFileSupported()Lcom/samsung/app/video/editor/external/UHDMode;
    .locals 2

    .line 860
    const-string v0, "VEController"

    const-string v1, "Inside isUHDFileSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    .line 862
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_0

    .line 863
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->IS_UHD_FILE_SUPPORTED_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 864
    :cond_0
    sget-object v0, Lcom/samsung/app/video/editor/external/UHDMode;->ERROR:Lcom/samsung/app/video/editor/external/UHDMode;

    return-object v0

    .line 866
    :cond_1
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->isUHDFileSupported()I

    move-result v0

    .line 867
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 877
    sget-object v1, Lcom/samsung/app/video/editor/external/UHDMode;->ERROR:Lcom/samsung/app/video/editor/external/UHDMode;

    return-object v1

    .line 875
    :pswitch_0
    sget-object v1, Lcom/samsung/app/video/editor/external/UHDMode;->UHD_PREVIEW_EXPORT_EFFECT_DETAIL:Lcom/samsung/app/video/editor/external/UHDMode;

    return-object v1

    .line 873
    :pswitch_1
    sget-object v1, Lcom/samsung/app/video/editor/external/UHDMode;->UHD_PREVIEW_EXPORT_EFFECT:Lcom/samsung/app/video/editor/external/UHDMode;

    return-object v1

    .line 871
    :pswitch_2
    sget-object v1, Lcom/samsung/app/video/editor/external/UHDMode;->UHD_PREVIEW_ONLY:Lcom/samsung/app/video/editor/external/UHDMode;

    return-object v1

    .line 869
    :pswitch_3
    sget-object v1, Lcom/samsung/app/video/editor/external/UHDMode;->UHD_OFF:Lcom/samsung/app/video/editor/external/UHDMode;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist launch()V
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 251
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_launch()I

    move-result v1

    sget v2, Lcom/samsung/app/video/editor/external/NativeInterface;->SUCCESS:I

    if-ne v1, v2, :cond_1

    .line 252
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_0

    .line 253
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->LAUNCH_SUCCESS:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 254
    :cond_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mEngineListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->setStackChangeListener(Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;)V

    .line 255
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 256
    new-instance v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/VEController;->mThiz:Lcom/samsung/app/video/editor/external/VEController;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;-><init>(Landroid/content/res/AssetManager;Ljava/lang/Object;Lcom/samsung/app/video/editor/external/VEController;)V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    .line 257
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->setVEStateChangeListener(Lcom/samsung/app/video/editor/external/VECallbackListener;)V

    .line 258
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->startThread()V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 261
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->LAUNCH_ERROR:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 265
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->LAUNCH_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 267
    :cond_3
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist pauseExport()I
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pauseExport start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, -0x1

    .line 335
    .local v1, "time":I
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v2, v3, :cond_1

    .line 337
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->pauseExport()I

    move-result v2

    move v1, v2

    .line 339
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 340
    const-string v2, "VEController"

    const-string/jumbo v3, "pauseExport Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->deInit()V

    .line 344
    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE_EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 345
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v2, :cond_2

    .line 346
    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->PAUSED_EXPORT:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v2, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v2, :cond_2

    .line 350
    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->PAUSE_EXPORT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v2, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 352
    :cond_2
    :goto_0
    const-string v2, "VEController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pauseExport end : Current state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    monitor-exit v0

    return v1

    .line 354
    .end local v1    # "time":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist pausePreview()V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pausePreview start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    .line 368
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->getPositionOfPlayer()I

    move-result v1

    iput v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentLocation:I

    .line 370
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->pause()V

    .line 371
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 372
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 373
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->PAUSED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 376
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->PAUSE_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 378
    :cond_1
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pausePreview end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist performCrop(Lcom/samsung/app/video/editor/external/ROIInfo;II[F[F[F)V
    .locals 12
    .param p1, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p2, "initROIWidth"    # I
    .param p3, "initROIHeight"    # I
    .param p4, "pan"    # [F
    .param p5, "scale"    # [F
    .param p6, "pivot"    # [F

    .line 1131
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In performCrop() : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1133
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/app/video/editor/external/NativeInterface;->performCropNative(JLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[F)V

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 1136
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/app/video/editor/external/NativeInterface;->performCropNative(JLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[F)V

    goto :goto_0

    .line 1138
    :cond_2
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 1139
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->PERFORM_CROP_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1141
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist performCrop(Lcom/samsung/app/video/editor/external/ROIInfo;II[F[F[FZ)V
    .locals 13
    .param p1, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p2, "initROIWidth"    # I
    .param p3, "initROIHeight"    # I
    .param p4, "pan"    # [F
    .param p5, "scale"    # [F
    .param p6, "pivot"    # [F
    .param p7, "isROIDeltaReset"    # Z

    .line 1144
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In performCrop() : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1146
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/app/video/editor/external/NativeInterface;->performCropNative(JLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[FZ)V

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 1149
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move-object v6, p1

    move v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v3 .. v12}, Lcom/samsung/app/video/editor/external/NativeInterface;->performCropNative(JLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[FZ)V

    goto :goto_0

    .line 1151
    :cond_2
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 1152
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->PERFORM_CROP_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1154
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist performFlip(ZZZ)V
    .locals 10
    .param p1, "axisX"    # Z
    .param p2, "axisY"    # Z
    .param p3, "axisZ"    # Z

    .line 994
    const-string v0, "VEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In performFlip : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 997
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v5, 0x2

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->performFlipNative(JIZZZ)V

    goto :goto_0

    .line 999
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 1000
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v6, 0x1

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->performFlipNative(JIZZZ)V

    goto :goto_0

    .line 1004
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 1005
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->PERFORM_FLIP_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1007
    :cond_3
    :goto_0
    monitor-exit v0

    .line 1011
    return-void

    .line 1007
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist performPanning(FF)V
    .locals 8
    .param p1, "dX"    # F
    .param p2, "dY"    # F

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In performPanning : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v0, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 979
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v4, 0x2

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->performPanningNative(JIFF)V

    goto :goto_0

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_2

    .line 982
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v5, 0x1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->performPanningNative(JIFF)V

    goto :goto_0

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_3

    .line 987
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->PERFORM_PANNING_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 990
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist performRotation(Lcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FLcom/samsung/app/video/editor/external/TransformOrder;)F
    .locals 16
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/RotationType;
    .param p2, "degree"    # [F
    .param p3, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p4, "initROIWidth"    # I
    .param p5, "initROIHeight"    # I
    .param p6, "roiScale"    # [F
    .param p7, "userScale"    # [F
    .param p8, "order"    # Lcom/samsung/app/video/editor/external/TransformOrder;

    .line 1098
    move-object/from16 v1, p0

    const-string v0, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In performRotation : Current STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v2, v1, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1100
    :try_start_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v3, :cond_0

    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v5, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 1101
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v6, 0x2

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/app/video/editor/external/TransformOrder;->getValue()I

    move-result v14

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v3 .. v14}, Lcom/samsung/app/video/editor/external/NativeInterface;->performRotationNative(JILcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FI)F

    move-result v0

    monitor-exit v2

    return v0

    .line 1102
    :cond_1
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v3, :cond_2

    .line 1103
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v5, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v7, 0x1

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/app/video/editor/external/TransformOrder;->getValue()I

    move-result v15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v4 .. v15}, Lcom/samsung/app/video/editor/external/NativeInterface;->performRotationNative(JILcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FI)F

    move-result v0

    monitor-exit v2

    return v0

    .line 1105
    :cond_2
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_3

    .line 1106
    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->PERFORM_ROTATION_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1107
    :cond_3
    const/4 v0, 0x0

    monitor-exit v2

    return v0

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist performRotation(Lcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FLcom/samsung/app/video/editor/external/TransformOrder;Z)F
    .locals 17
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/RotationType;
    .param p2, "degree"    # [F
    .param p3, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p4, "initROIWidth"    # I
    .param p5, "initROIHeight"    # I
    .param p6, "roiScale"    # [F
    .param p7, "userScale"    # [F
    .param p8, "order"    # Lcom/samsung/app/video/editor/external/TransformOrder;
    .param p9, "isROIDeltaReset"    # Z

    .line 1115
    move-object/from16 v1, p0

    const-string v0, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In performRotation : Current STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v2, v1, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1117
    :try_start_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v3, :cond_0

    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v5, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 1118
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v6, 0x2

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/app/video/editor/external/TransformOrder;->getValue()I

    move-result v14

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v15, p9

    invoke-virtual/range {v3 .. v15}, Lcom/samsung/app/video/editor/external/NativeInterface;->performRotationNative(JILcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FIZ)F

    move-result v0

    monitor-exit v2

    return v0

    .line 1119
    :cond_1
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v3, :cond_2

    .line 1120
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v5, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v7, 0x1

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/app/video/editor/external/TransformOrder;->getValue()I

    move-result v15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v16, p9

    invoke-virtual/range {v4 .. v16}, Lcom/samsung/app/video/editor/external/NativeInterface;->performRotationNative(JILcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FIZ)F

    move-result v0

    monitor-exit v2

    return v0

    .line 1122
    :cond_2
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_3

    .line 1123
    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->PERFORM_ROTATION_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1124
    :cond_3
    const/4 v0, 0x0

    monitor-exit v2

    return v0

    .line 1126
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist performSkew([FLcom/samsung/app/video/editor/external/TransformOrder;Z[F)V
    .locals 10
    .param p1, "degree"    # [F
    .param p2, "order"    # Lcom/samsung/app/video/editor/external/TransformOrder;
    .param p3, "isPrespectiveEnable"    # Z
    .param p4, "prespectiveMatrix"    # [F

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In performSkew : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v0, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1161
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v4, 0x2

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/TransformOrder;->getValue()I

    move-result v6

    move-object v5, p1

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->performSkewNative(JI[FIZ[F)V

    goto :goto_0

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_2

    .line 1164
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/TransformOrder;->getValue()I

    move-result v7

    move-object v6, p1

    move v8, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->performSkewNative(JI[FIZ[F)V

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_3

    .line 1169
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->PERFORM_SKEW_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1171
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist performZoom(FFFFFF)V
    .locals 13
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F
    .param p4, "pivotX"    # F
    .param p5, "pivotY"    # F
    .param p6, "pivotZ"    # F

    .line 961
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In performZoom : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 963
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v5, 0x2

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/app/video/editor/external/NativeInterface;->performZoomNative(JIFFFFFF)V

    goto :goto_0

    .line 965
    :cond_1
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 966
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v6, 0x1

    move v7, p1

    move v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v3 .. v12}, Lcom/samsung/app/video/editor/external/NativeInterface;->performZoomNative(JIFFFFFF)V

    goto :goto_0

    .line 970
    :cond_2
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 971
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->PERFORM_ZOOM_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 973
    :cond_3
    :goto_0
    return-void
.end method

.method blacklist play(ILcom/samsung/app/video/editor/external/TranscodeElement;)Z
    .locals 2
    .param p1, "currTime"    # I
    .param p2, "transcodeElement"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In play : Current state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    sget-object v1, Lcom/samsung/app/video/editor/external/SummaryState;->CREATING:Lcom/samsung/app/video/editor/external/SummaryState;

    if-eq v0, v1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->play(ILcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 586
    const/4 v0, 0x1

    return v0

    .line 593
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist playbackComplete()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playbackComplete start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    .line 548
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->stop()V

    .line 549
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 550
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 551
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->PLAYBACK_COMPLETED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    .line 553
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->stop()V

    .line 554
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 555
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 556
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->EXPORT_COMPLETED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 558
    :cond_1
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playbackComplete end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    monitor-exit v0

    .line 561
    return-void

    .line 560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist prepareSurface(Landroid/view/Surface;IIIILcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;IIZ)V
    .locals 15
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "graphicbufferWidth"    # I
    .param p3, "graphicbufferHeight"    # I
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I
    .param p6, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p7, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p8, "initRoiW"    # I
    .param p9, "initRoiH"    # I
    .param p10, "isReconfigureMode"    # Z

    .line 383
    move-object v1, p0

    iget-object v2, v1, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    const-string v0, "VEController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareSurface  with roiDeltaInfo - start : Current state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_0

    .line 386
    const-string v0, "VEController"

    const-string v3, "In prepareSurface with roiDeltaInfo"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->deinitThumbnail()V

    .line 389
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-virtual/range {v4 .. v14}, Lcom/samsung/app/video/editor/external/NativeInterface;->setEngineSurface(Landroid/view/Surface;IIIILcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;IIZ)V

    .line 390
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->setSurfacePrepared(Z)V

    .line 391
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_1

    .line 392
    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->PREPARE_SURFACE_SUCCESS:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_1

    .line 395
    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->PREPARE_SURFACE_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 398
    :cond_1
    :goto_0
    const-string v0, "VEController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareSurface end : Current state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v2

    .line 400
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist resetSphericalSurface(Z)V
    .locals 4
    .param p1, "isSpherical"    # Z

    .line 851
    const-string v0, "VEController"

    const-string v1, "Inside resetSphericalSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v0, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 853
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->resetSphericalSurfaceNative(ZIJ)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_2

    .line 855
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->resetSphericalSurfaceNative(ZIJ)V

    .line 857
    :cond_2
    :goto_0
    return-void
.end method

.method blacklist resumeExport(I)V
    .locals 4
    .param p1, "time"    # I

    .line 309
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeExport start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE_EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    .line 313
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_init()V

    .line 314
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->resumeExport(I)V

    .line 315
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 316
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 317
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->EXPORT_STARTED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 320
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->RESUME_EXPORT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 322
    :cond_1
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeExport end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist setAppName(I)V
    .locals 2
    .param p1, "name"    # I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppName : name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->setAppName(I)V

    .line 168
    return-void
.end method

.method blacklist setCurrentState(Lcom/samsung/app/video/editor/external/VEState;)V
    .locals 2
    .param p1, "currentState"    # Lcom/samsung/app/video/editor/external/VEState;

    .line 700
    const-string v0, "VEController"

    const-string v1, "In setCurrentState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 702
    return-void
.end method

.method public blacklist setLayerTransformInfo(Lcom/samsung/app/video/editor/external/LayerTransformParams;)V
    .locals 4
    .param p1, "params"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In setLayerTransformInfo : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_0

    .line 1031
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->SET_LAYER_TRANSFORM_INFO_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1032
    :cond_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_2

    .line 1035
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->setLayerTransformInfoNative(JILcom/samsung/app/video/editor/external/LayerTransformParams;)V

    goto :goto_0

    .line 1037
    :cond_2
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->setLayerTransformInfoNative(JILcom/samsung/app/video/editor/external/LayerTransformParams;)V

    .line 1039
    :goto_0
    return-void
.end method

.method public blacklist setThumbnailParams(II)V
    .locals 2
    .param p1, "thumbnailWidth"    # I
    .param p2, "thumbnailHeight"    # I

    .line 745
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    .line 746
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->setThumbParams(II)V

    .line 748
    :cond_0
    return-void
.end method

.method blacklist setVEStateChangeListener(Lcom/samsung/app/video/editor/external/VECallbackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/app/video/editor/external/VECallbackListener;

    .line 569
    const-string v0, "VEController"

    const-string v1, "In setVEStateChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    .line 571
    return-void
.end method

.method public blacklist setZoomLimitation(FFZ)V
    .locals 2
    .param p1, "minZoom"    # F
    .param p2, "maxZoom"    # F
    .param p3, "isInAppMode"    # Z

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In setZoomLimitation() : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_2

    .line 1069
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->SET_ZOOM_LIMITAION_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_1

    .line 1064
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/NativeInterface;->setZoomLimitationNative(FFZ)V

    .line 1071
    :cond_2
    :goto_1
    return-void
.end method

.method blacklist stop()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    .line 279
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->stop()V

    .line 280
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 281
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 282
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->PLAYBACK_STOPPED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    .line 285
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->stop()V

    .line 286
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 287
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 288
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->EXPORT_STOPPED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE_EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 291
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->stop()V

    .line 292
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 293
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 294
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->EXPORT_STOPPED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 297
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->STOP_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 299
    :cond_3
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist terminate()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "terminate start : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->deinitThumbnail()V

    .line 200
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->deInit()V

    .line 201
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 202
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_1

    .line 203
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->DEINIT_SUCCESS:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 209
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 210
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->stopThread()V

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    .line 212
    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    .line 213
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 214
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->TERMINATE_SUCCESS:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 217
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->TERMINATE_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 219
    :cond_3
    :goto_0
    const-string v1, "VEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "terminate end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist update(Lcom/samsung/app/video/editor/external/TranscodeElement;II)V
    .locals 1
    .param p1, "transcodeElm"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 358
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/NativeInterface;->update(Lcom/samsung/app/video/editor/external/TranscodeElement;II)V

    .line 359
    return-void
.end method

.method public blacklist updateDoodleSurfaceOnTouch(Ljava/util/List;)V
    .locals 2
    .param p1, "doodlePoints"    # Ljava/util/List;

    .line 892
    const-string v0, "VEController"

    const-string v1, "Inside updateDoodleSurfaceOnTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    .line 894
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_0

    .line 895
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->DOODLE_EVENT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 897
    :cond_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateDoodleSurfaceOnTouchNative(Ljava/util/List;)V

    .line 898
    return-void
.end method

.method public blacklist updateEngineDoodle(Lcom/samsung/app/video/editor/external/DoodleCommandInfo;)V
    .locals 3
    .param p1, "doodleCommandInfo"    # Lcom/samsung/app/video/editor/external/DoodleCommandInfo;

    .line 914
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    const-string v1, "VEController"

    const-string v2, "Inside updateEngineDoodle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 920
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->DOODLE_EVENT_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    goto :goto_1

    .line 917
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateEngineDoodleNative(Lcom/samsung/app/video/editor/external/DoodleCommandInfo;)V

    .line 922
    :cond_2
    :goto_1
    monitor-exit v0

    .line 923
    return-void

    .line 922
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateFrame()V
    .locals 5

    .line 1262
    const-string v0, "VEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateFrame(): Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1264
    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1265
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateFrameNative(J)V

    goto :goto_0

    .line 1267
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 1268
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->UPDATE_FRAME_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1270
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1271
    return-void

    .line 1270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateFrame(Lcom/samsung/app/video/editor/external/Element;JFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "time"    # J
    .param p4, "storyBoardTime"    # F
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JFII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)V"
        }
    .end annotation

    .line 1276
    .local p7, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p8, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p9, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p10, "doodleParamsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateFrame(): Current STATE  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->isSurfacePrepared()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1278
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->addUpdateFrameRequest(Lcom/samsung/app/video/editor/external/Element;JFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1280
    :cond_1
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_2

    .line 1281
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->UPDATE_FRAME_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1284
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist updateNextRoi(Lcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/TranscodeElement;)[F
    .locals 9
    .param p1, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p2, "transcodeElement"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1234
    const-string v0, "VEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateNextRoi : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1237
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v7, 0x2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateNextRoiNative(JLcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/TranscodeElement;I)[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1238
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 1239
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    const/4 v8, 0x1

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateNextRoiNative(JLcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/TranscodeElement;I)[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1241
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 1242
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->UPDATE_NEXT_ROI_SUCCESS_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1244
    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updatePlayerParam(Lcom/samsung/app/video/editor/external/PlayerUpdateParams;)V
    .locals 2
    .param p1, "params"    # Lcom/samsung/app/video/editor/external/PlayerUpdateParams;

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In updatePlayerParam : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    .line 1087
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updatePlayerParamNative(Lcom/samsung/app/video/editor/external/PlayerUpdateParams;)V

    goto :goto_0

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_1

    .line 1092
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->UPDATE_PLAYERPARAMS_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1094
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist updateRoi(Lcom/samsung/app/video/editor/external/ROIDeltaInfo;)V
    .locals 5
    .param p1, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 1175
    const-string v0, "VEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateRoi : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1178
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateRoiNative(JLcom/samsung/app/video/editor/external/ROIDeltaInfo;)V

    goto :goto_0

    .line 1179
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 1180
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateRoiNative(JLcom/samsung/app/video/editor/external/ROIDeltaInfo;)V

    goto :goto_0

    .line 1182
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 1183
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->UPDATE_ROI_SUCCESS_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1185
    :cond_3
    :goto_0
    monitor-exit v0

    .line 1186
    return-void

    .line 1185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateRoi(Lcom/samsung/app/video/editor/external/ROIDeltaInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;I)V
    .locals 9
    .param p1, "fromRoiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p2, "toRoiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p3, "animDuration"    # I

    .line 1190
    const-string v0, "VEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateRoi : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1193
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateRoiNative(JLcom/samsung/app/video/editor/external/ROIDeltaInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;I)V

    goto :goto_0

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 1195
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateRoiNative(JLcom/samsung/app/video/editor/external/ROIDeltaInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;I)V

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 1198
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->UPDATE_ROI_SUCCESS_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1200
    :cond_3
    :goto_0
    monitor-exit v0

    .line 1201
    return-void

    .line 1200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateSummaryDuration(I)Z
    .locals 2
    .param p1, "duration"    # I

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside updateSummaryDuration : Current STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mSummaryState:Lcom/samsung/app/video/editor/external/SummaryState;

    sget-object v1, Lcom/samsung/app/video/editor/external/SummaryState;->CREATED:Lcom/samsung/app/video/editor/external/SummaryState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    .line 939
    :cond_0
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateSummaryDurationNative(I)Z

    move-result v0

    return v0

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_2

    .line 942
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->UPDATE_SUMMARY_DURATION_CALLED_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 943
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateSurfaceOnTouch(FF)V
    .locals 8
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F

    .line 825
    const-string v0, "VEController"

    const-string v1, "Inside updateSurfaceOnTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v0, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 827
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v5, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateSurfaceOnTouchNative(FFIJ)V

    goto :goto_0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_2

    .line 829
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v6, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateSurfaceOnTouchNative(FFIJ)V

    .line 831
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist updateSurfaceOnZoom(F)V
    .locals 4
    .param p1, "scalefactor"    # F

    .line 834
    const-string v0, "VEController"

    const-string v1, "Inside updateSurfaceOnZoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v0, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 836
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateSurfaceOnZoomNative(FIJ)V

    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_2

    .line 838
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v2, v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateSurfaceOnZoomNative(FIJ)V

    .line 840
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist updateViewport(IILcom/samsung/app/video/editor/external/ROIDeltaInfo;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 1205
    const-string v0, "VEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateViewport : Current STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v1, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v3, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1208
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateViewportNative(JIILcom/samsung/app/video/editor/external/ROIDeltaInfo;)V

    goto :goto_0

    .line 1209
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mCurrentState:Lcom/samsung/app/video/editor/external/VEState;

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_2

    .line 1210
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mTaskOffLoaderThread:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;

    iget-wide v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateViewportNative(JIILcom/samsung/app/video/editor/external/ROIDeltaInfo;)V

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v1, :cond_3

    .line 1213
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->UPDATE_VIEWPORT_SUCCESS_IN_WRONG_STATE:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 1215
    :cond_3
    :goto_0
    monitor-exit v0

    .line 1216
    return-void

    .line 1215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
