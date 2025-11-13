.class Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;
.super Ljava/lang/Thread;
.source "TaskOffLoaderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;,
        Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;,
        Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;,
        Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TaskOffLoaderThread"

.field static blacklist THUMB_ERROR:J


# instance fields
.field blacklist mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAssetManager:Landroid/content/res/AssetManager;

.field private blacklist mClipVideoThumbnailJob:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;

.field private blacklist mClipVideoThumbnailRequestAvailable:Z

.field private blacklist mHeight:I

.field blacklist mInitFile:Ljava/lang/String;

.field blacklist mIsPlayCommandReceived:Z

.field blacklist mListener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

.field blacklist mPlayPosition:I

.field blacklist mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRetrieveStoryBoardThumbnailJobs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRetrievedUpdateFrameRequest:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

.field private blacklist mStoryBoardTime:F

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mSurfacePrepared:Ljava/util/concurrent/atomic/AtomicInteger;

.field blacklist mTerminateThread:Z

.field blacklist mThumbnailHandle:J

.field blacklist mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

.field private blacklist mVECallbackListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

.field private final blacklist mVeController:Lcom/samsung/app/video/editor/external/VEController;

.field private blacklist mWidth:I

.field private final blacklist processLockObject:Ljava/lang/Object;

.field private final blacklist requestLockObject:Ljava/lang/Object;

.field private blacklist thumbnailHeight:I

.field private blacklist thumnailWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 29
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/Object;Lcom/samsung/app/video/editor/external/VEController;)V
    .locals 4
    .param p1, "manager"    # Landroid/content/res/AssetManager;
    .param p2, "processLockObject"    # Ljava/lang/Object;
    .param p3, "mThiz"    # Lcom/samsung/app/video/editor/external/VEController;

    .line 106
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    .line 107
    iput-object p3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mIsPlayCommandReceived:Z

    .line 109
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievedUpdateFrameRequest:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 112
    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    .line 114
    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrieveStoryBoardThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    .line 115
    iput-boolean v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mClipVideoThumbnailRequestAvailable:Z

    .line 116
    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 117
    iput v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mPlayPosition:I

    .line 118
    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    iput-wide v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    .line 119
    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mInitFile:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mAssetManager:Landroid/content/res/AssetManager;

    .line 121
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->processLockObject:Ljava/lang/Object;

    .line 122
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->setPriority(I)V

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mSurfacePrepared:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    return-void
.end method

.method private blacklist applyEffectToThumbnail()V
    .locals 9

    .line 510
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;

    .line 513
    .local v0, "t":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->data:[B

    iget v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->width:I

    iget v4, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->height:I

    iget v5, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->effectType:I

    iget-object v6, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    iget v7, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->isEffect:I

    iget-object v8, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->param:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnailNative([BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;)[B

    move-result-object v1

    .line 514
    .local v1, "b":[B
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

    iget v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->id:I

    iget v4, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->width:I

    iget v5, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->height:I

    invoke-direct {p0, v1, v4, v5}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->getBitmapFrombyteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/app/video/editor/external/ThumbnailListener;->setThumbnailAfterEffectApplied(ILandroid/graphics/Bitmap;)V

    .line 516
    .end local v0    # "t":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;
    .end local v1    # "b":[B
    :cond_0
    return-void
.end method

.method private blacklist getBitmapFrombyteArray([BII)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I

    .line 895
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 896
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-string v1, "TaskOffLoaderThread"

    if-eqz v0, :cond_1

    .line 898
    if-eqz p1, :cond_0

    .line 899
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 900
    .local v1, "pixelBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 902
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 903
    const/4 p1, 0x0

    .line 904
    nop

    .line 905
    .end local v1    # "pixelBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 906
    :cond_0
    const-string v2, "<<<<<<< retouch effect GOT NULL DATA FROM ENGINE >>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    :cond_1
    const-string v2, "<<<<<<< Bitmap.createBitmap -  NULL >>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :goto_0
    return-object v0
.end method

.method private blacklist getPreviewFrame(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)V
    .locals 20
    .param p1, "onGoingJob"    # Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->initThumbnail(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)J

    move-result-wide v14

    .line 552
    .local v14, "thumbnailHandle":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_0

    .line 553
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    iget-object v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->secondElement:Lcom/samsung/app/video/editor/external/Element;

    iget v7, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    iget v8, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->width:I

    iget v9, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->height:I

    iget v10, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->previewType:I

    iget-object v11, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->clipartList:Ljava/util/List;

    iget-object v12, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->drawList:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->access$300(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Ljava/util/List;

    move-result-object v13

    iget v5, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->storyBoardTime:F

    invoke-static/range {p1 .. p1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->access$200(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Ljava/util/List;

    move-result-object v16

    move/from16 v17, v5

    move-wide v5, v14

    move-wide/from16 v18, v14

    .end local v14    # "thumbnailHandle":J
    .local v18, "thumbnailHandle":J
    move/from16 v14, v17

    move-object/from16 v15, v16

    invoke-virtual/range {v2 .. v15}, Lcom/samsung/app/video/editor/external/NativeInterface;->getThumbnailFromNative(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;Ljava/util/List;FLjava/util/List;)V

    .line 554
    move-wide/from16 v2, v18

    .end local v18    # "thumbnailHandle":J
    .local v2, "thumbnailHandle":J
    iput-wide v2, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    .line 555
    new-instance v4, Lcom/samsung/app/video/editor/external/VECallbackInfo;

    invoke-direct {v4}, Lcom/samsung/app/video/editor/external/VECallbackInfo;-><init>()V

    .line 556
    .local v4, "callbackInfo":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<[I>;"
    sget-object v5, Lcom/samsung/app/video/editor/external/VECallback;->SURFACE_UPDATED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-virtual {v4, v5}, Lcom/samsung/app/video/editor/external/VECallbackInfo;->setCallback(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 557
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 558
    .local v5, "data":[I
    sget v6, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_TIME:I

    iget v7, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    aput v7, v5, v6

    .line 559
    sget v6, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_KEY:I

    iget v7, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->Framekey:I

    aput v7, v5, v6

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewFrame  data[callbackInfo.GETTHUMB_TIME] :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_TIME:I

    aget v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data[callbackInfo.GETTHUMB_KEY] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_KEY:I

    aget v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TaskOffLoaderThread"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v4, v5}, Lcom/samsung/app/video/editor/external/VECallbackInfo;->setData(Ljava/lang/Object;)V

    .line 562
    iget-object v6, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVECallbackListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    invoke-interface {v6, v4}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallbackInfo;)V

    goto :goto_0

    .line 552
    .end local v2    # "thumbnailHandle":J
    .end local v4    # "callbackInfo":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<[I>;"
    .end local v5    # "data":[I
    .restart local v14    # "thumbnailHandle":J
    :cond_0
    move-wide v2, v14

    .line 564
    .end local v14    # "thumbnailHandle":J
    .restart local v2    # "thumbnailHandle":J
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private blacklist getThumbnailForPreview()V
    .locals 5

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 537
    .local v0, "t":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
    new-instance v1, Lcom/samsung/app/video/editor/external/VECallbackInfo;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/external/VECallbackInfo;-><init>()V

    .line 538
    .local v1, "callbackInfo":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<[I>;"
    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->GET_THUMBNAIL_SKIPPED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackInfo;->setCallback(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 539
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 540
    .local v2, "data":[I
    sget v3, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_TIME:I

    iget v4, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    aput v4, v2, v3

    .line 541
    sget v3, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_KEY:I

    iget v4, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->Framekey:I

    aput v4, v2, v3

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThumbnailForPreview - skipped frames  data[callbackInfo.GETTHUMB_TIME] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_TIME:I

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data[callbackInfo.GETTHUMB_KEY] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_KEY:I

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", queue size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskOffLoaderThread"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackInfo;->setData(Ljava/lang/Object;)V

    .line 544
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVECallbackListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    invoke-interface {v3, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallbackInfo;)V

    .line 545
    .end local v0    # "t":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
    .end local v1    # "callbackInfo":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<[I>;"
    .end local v2    # "data":[I
    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 547
    .local v0, "onGoingJob":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
    invoke-direct {p0, v0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->getPreviewFrame(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)V

    .line 548
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private blacklist getThumbnailForStoryboard()V
    .locals 19

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrieveStoryBoardThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 522
    .local v1, "t":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

    iget v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lcom/samsung/app/video/editor/external/ThumbnailListener;->isTargetViewExist(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    invoke-direct {v0, v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->initThumbnail(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)J

    move-result-wide v14

    .line 525
    .local v14, "thumbnailHandle":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_0

    .line 526
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    iget-object v5, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->secondElement:Lcom/samsung/app/video/editor/external/Element;

    iget v8, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    iget v9, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->width:I

    iget v10, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->height:I

    iget v11, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->previewType:I

    iget-object v12, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->clipartList:Ljava/util/List;

    iget-object v13, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->drawList:Ljava/util/List;

    iget v2, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->storyBoardTime:F

    invoke-static {v1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->access$200(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Ljava/util/List;

    move-result-object v16

    move-wide v6, v14

    move-wide/from16 v17, v14

    .end local v14    # "thumbnailHandle":J
    .local v17, "thumbnailHandle":J
    move v14, v2

    move-object/from16 v15, v16

    invoke-virtual/range {v3 .. v15}, Lcom/samsung/app/video/editor/external/NativeInterface;->getThumbnailForScrollBarFromNative(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;FLjava/util/List;)[B

    move-result-object v2

    .line 527
    .local v2, "b":[B
    move-wide/from16 v3, v17

    .end local v17    # "thumbnailHandle":J
    .local v3, "thumbnailHandle":J
    iput-wide v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    .line 528
    iget-object v5, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

    iget v6, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    int-to-long v6, v6

    iget v8, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->width:I

    iget v9, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->height:I

    invoke-direct {v0, v2, v8, v9}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->getBitmapFrombyteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/samsung/app/video/editor/external/ThumbnailListener;->setStoryBoardThumbnail(JLandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 525
    .end local v2    # "b":[B
    .end local v3    # "thumbnailHandle":J
    .restart local v14    # "thumbnailHandle":J
    :cond_0
    move-wide v3, v14

    .line 531
    .end local v14    # "thumbnailHandle":J
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initThumbnail(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)J
    .locals 9
    .param p1, "req"    # Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 584
    iget-wide v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    .line 585
    .local v0, "thumbnailHandle":J
    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 586
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v5, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {p1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->access$400(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Z

    move-result v6

    iget v7, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->thumnailWidth:I

    iget v8, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->thumbnailHeight:I

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailInitialise(Landroid/content/res/AssetManager;Lcom/samsung/app/video/editor/external/Element;ZII)J

    move-result-wide v0

    goto :goto_0

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mInitFile:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->deinitThumbnail()V

    .line 589
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v5, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {p1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->access$400(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Z

    move-result v6

    iget v7, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->thumnailWidth:I

    iget v8, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->thumbnailHeight:I

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailInitialise(Landroid/content/res/AssetManager;Lcom/samsung/app/video/editor/external/Element;ZII)J

    move-result-wide v0

    .line 591
    :cond_1
    :goto_0
    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 592
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVECallbackListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->GET_THUMBNAIL_FAILED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v2, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 593
    return-wide v0

    .line 595
    :cond_2
    iget-object v2, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mInitFile:Ljava/lang/String;

    .line 596
    return-wide v0
.end method

.method private blacklist updateFrame(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)V
    .locals 14
    .param p1, "onGoingJob"    # Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 568
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->initThumbnail(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)J

    move-result-wide v12

    .line 569
    .local v12, "thumbnailHandle":J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-eqz v0, :cond_0

    .line 570
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    iget v4, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    iget v5, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->storyBoardTime:F

    iget v6, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->width:I

    iget v7, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->height:I

    iget-object v8, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->clipartList:Ljava/util/List;

    iget-object v9, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->drawList:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->access$300(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Ljava/util/List;

    move-result-object v10

    invoke-static {p1}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->access$200(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Ljava/util/List;

    move-result-object v11

    move-wide v2, v12

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateFrameFromNative(Lcom/samsung/app/video/editor/external/Element;JIFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 571
    iput-wide v12, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    .line 572
    new-instance v0, Lcom/samsung/app/video/editor/external/VECallbackInfo;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/VECallbackInfo;-><init>()V

    .line 573
    .local v0, "callbackInfo":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<[I>;"
    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->FRAME_UPDATED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackInfo;->setCallback(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 574
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 575
    .local v1, "data":[I
    sget v2, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_TIME:I

    iget v3, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    aput v3, v1, v2

    .line 576
    sget v2, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_KEY:I

    iget v3, p1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->Framekey:I

    aput v3, v1, v2

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewFrame  data[callbackInfo.GETTHUMB_TIME] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_TIME:I

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data[callbackInfo.GETTHUMB_KEY] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_KEY:I

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskOffLoaderThread"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackInfo;->setData(Ljava/lang/Object;)V

    .line 579
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVECallbackListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    invoke-interface {v2, v0}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallbackInfo;)V

    .line 581
    .end local v0    # "callbackInfo":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<[I>;"
    .end local v1    # "data":[I
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public blacklist addEffectToVideoThumbnailRequest(I[BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/ThumbnailListener;)Z
    .locals 12
    .param p1, "id"    # I
    .param p2, "bytes"    # [B
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I
    .param p5, "effectType"    # I
    .param p6, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p7, "isEffect"    # I
    .param p8, "param"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .param p9, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 370
    move-object v1, p0

    new-instance v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;-><init>(I[BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/ThumbnailListener;)V

    .line 371
    .local v2, "job":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 372
    .local v3, "res":Z
    iget-object v4, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 374
    :try_start_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v4

    .line 379
    return v3

    .line 378
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist addPreviewThubnailRequest(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZIFLjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V
    .locals 24
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "time"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "isDetailMode"    # Z
    .param p8, "type"    # I
    .param p9, "storyBoardTime"    # F
    .param p13, "framekey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIZIF",
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

    .line 174
    .local p10, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p11, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p12, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p14, "doodleParamsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 175
    .local v0, "fe":Lcom/samsung/app/video/editor/external/Element;
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_0

    .line 175
    :cond_0
    move-object/from16 v18, v0

    .line 178
    .end local v0    # "fe":Lcom/samsung/app/video/editor/external/Element;
    .local v18, "fe":Lcom/samsung/app/video/editor/external/Element;
    :goto_0
    const/4 v0, 0x0

    .line 179
    .local v0, "se":Lcom/samsung/app/video/editor/external/Element;
    if-eqz p2, :cond_1

    .line 180
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_1

    .line 179
    :cond_1
    move-object/from16 v19, v0

    .line 183
    .end local v0    # "se":Lcom/samsung/app/video/editor/external/Element;
    .local v19, "se":Lcom/samsung/app/video/editor/external/Element;
    :goto_1
    const/4 v0, 0x0

    .line 184
    .local v0, "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz p10, :cond_3

    .line 185
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object v0, v2

    .line 186
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 187
    .local v3, "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v4, v3}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v3    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    goto :goto_2

    .line 186
    :cond_2
    move-object/from16 v20, v0

    goto :goto_3

    .line 184
    :cond_3
    move-object/from16 v20, v0

    .line 190
    .end local v0    # "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local v20, "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :goto_3
    const/4 v0, 0x0

    .line 191
    .local v0, "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz p11, :cond_5

    .line 192
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object v0, v2

    .line 193
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 194
    .restart local v3    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v4, v3}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v3    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    goto :goto_4

    .line 193
    :cond_4
    move-object/from16 v21, v0

    goto :goto_5

    .line 191
    :cond_5
    move-object/from16 v21, v0

    .line 198
    .end local v0    # "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local v21, "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :goto_5
    const/4 v0, 0x0

    .line 199
    .local v0, "gl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    if-eqz p12, :cond_7

    .line 200
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object v0, v2

    .line 201
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/StickerParams;

    .line 202
    .local v3, "gp":Lcom/samsung/app/video/editor/external/StickerParams;
    new-instance v4, Lcom/samsung/app/video/editor/external/StickerParams;

    invoke-direct {v4, v3}, Lcom/samsung/app/video/editor/external/StickerParams;-><init>(Lcom/samsung/app/video/editor/external/StickerParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v3    # "gp":Lcom/samsung/app/video/editor/external/StickerParams;
    goto :goto_6

    .line 201
    :cond_6
    move-object/from16 v22, v0

    goto :goto_7

    .line 199
    :cond_7
    move-object/from16 v22, v0

    .line 206
    .end local v0    # "gl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local v22, "gl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    :goto_7
    const/4 v0, 0x0

    .line 207
    .local v0, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    if-eqz p14, :cond_9

    .line 208
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object v0, v2

    .line 209
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/DoodleParams;

    .line 210
    .local v3, "dp":Lcom/samsung/app/video/editor/external/DoodleParams;
    new-instance v4, Lcom/samsung/app/video/editor/external/DoodleParams;

    invoke-direct {v4, v3}, Lcom/samsung/app/video/editor/external/DoodleParams;-><init>(Lcom/samsung/app/video/editor/external/DoodleParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v3    # "dp":Lcom/samsung/app/video/editor/external/DoodleParams;
    goto :goto_8

    .line 209
    :cond_8
    move-object/from16 v23, v0

    goto :goto_9

    .line 207
    :cond_9
    move-object/from16 v23, v0

    .line 214
    .end local v0    # "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    .local v23, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    :goto_9
    new-instance v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    const/4 v15, 0x0

    move-object v2, v0

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move/from16 v16, p13

    move-object/from16 v17, v23

    invoke-direct/range {v2 .. v17}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;-><init>(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZIFLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;ILjava/util/List;)V

    .line 215
    .local v2, "thumbnailJobs":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 216
    iget-object v3, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    :try_start_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    goto :goto_a

    .line 222
    :catchall_0
    move-exception v0

    goto :goto_b

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    monitor-exit v3

    .line 223
    return-void

    .line 222
    :goto_b
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist addStoryBoardThumbnailRequest(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZIFLjava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;Ljava/util/List;)Z
    .locals 24
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "time"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "isDetailedMode"    # Z
    .param p8, "type"    # I
    .param p9, "storyBoardTime"    # F
    .param p12, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIZIF",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Lcom/samsung/app/video/editor/external/ThumbnailListener;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)Z"
        }
    .end annotation

    .line 303
    .local p10, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p11, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p13, "doodleParamsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p13

    const/4 v0, 0x0

    .line 304
    .local v0, "fe":Lcom/samsung/app/video/editor/external/Element;
    if-eqz p1, :cond_0

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_0

    .line 304
    :cond_0
    move-object/from16 v19, v0

    .line 307
    .end local v0    # "fe":Lcom/samsung/app/video/editor/external/Element;
    .local v19, "fe":Lcom/samsung/app/video/editor/external/Element;
    :goto_0
    const/4 v0, 0x0

    .line 308
    .local v0, "se":Lcom/samsung/app/video/editor/external/Element;
    if-eqz p2, :cond_1

    .line 309
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_1

    .line 308
    :cond_1
    move-object/from16 v20, v0

    .line 312
    .end local v0    # "se":Lcom/samsung/app/video/editor/external/Element;
    .local v20, "se":Lcom/samsung/app/video/editor/external/Element;
    :goto_1
    const/4 v0, 0x0

    .line 313
    .local v0, "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz p10, :cond_3

    .line 314
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move-object v0, v3

    .line 315
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 316
    .local v4, "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v5, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v5, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v4    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    goto :goto_2

    .line 315
    :cond_2
    move-object/from16 v21, v0

    goto :goto_3

    .line 313
    :cond_3
    move-object/from16 v21, v0

    .line 319
    .end local v0    # "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local v21, "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :goto_3
    const/4 v0, 0x0

    .line 320
    .local v0, "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz p11, :cond_5

    .line 321
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move-object v0, v3

    .line 322
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 323
    .restart local v4    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v5, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v5, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v4    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    goto :goto_4

    .line 322
    :cond_4
    move-object/from16 v22, v0

    goto :goto_5

    .line 320
    :cond_5
    move-object/from16 v22, v0

    .line 327
    .end local v0    # "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local v22, "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :goto_5
    const/4 v0, 0x0

    .line 328
    .local v0, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    if-eqz v2, :cond_6

    .line 329
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move-object v0, v3

    move-object/from16 v23, v0

    goto :goto_6

    .line 328
    :cond_6
    move-object/from16 v23, v0

    .line 332
    .end local v0    # "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    .local v23, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    :goto_6
    new-instance v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    const/4 v15, 0x0

    const/16 v17, -0x1

    move-object v3, v0

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v16, p12

    move-object/from16 v18, v23

    invoke-direct/range {v3 .. v18}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;-><init>(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZIFLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;ILjava/util/List;)V

    .line 333
    .local v3, "thumbnailJobs":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrieveStoryBoardThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v4

    .line 334
    .local v4, "res":Z
    iget-object v5, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    monitor-enter v5

    .line 336
    :try_start_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    goto :goto_7

    .line 340
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    monitor-exit v5

    .line 341
    return v4

    .line 340
    :goto_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist addUpdateFrameRequest(Lcom/samsung/app/video/editor/external/Element;JFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 23
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

    .line 240
    .local p7, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p8, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p9, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p10, "doodleParamsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 241
    .local v0, "fe":Lcom/samsung/app/video/editor/external/Element;
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_0

    .line 241
    :cond_0
    move-object/from16 v18, v0

    .line 244
    .end local v0    # "fe":Lcom/samsung/app/video/editor/external/Element;
    .local v18, "fe":Lcom/samsung/app/video/editor/external/Element;
    :goto_0
    const/4 v0, 0x0

    .line 245
    .local v0, "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz p7, :cond_2

    .line 246
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object v0, v2

    .line 247
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 248
    .local v3, "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v4, v3}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v3    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    goto :goto_1

    .line 247
    :cond_1
    move-object/from16 v19, v0

    goto :goto_2

    .line 245
    :cond_2
    move-object/from16 v19, v0

    .line 251
    .end local v0    # "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local v19, "cpl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :goto_2
    const/4 v0, 0x0

    .line 252
    .local v0, "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz p8, :cond_4

    .line 253
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object v0, v2

    .line 254
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 255
    .restart local v3    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v4, v3}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v3    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    goto :goto_3

    .line 254
    :cond_3
    move-object/from16 v20, v0

    goto :goto_4

    .line 252
    :cond_4
    move-object/from16 v20, v0

    .line 259
    .end local v0    # "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local v20, "dl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :goto_4
    const/4 v0, 0x0

    .line 260
    .local v0, "gl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    if-eqz p9, :cond_6

    .line 261
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object v0, v2

    .line 262
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/StickerParams;

    .line 263
    .local v3, "gp":Lcom/samsung/app/video/editor/external/StickerParams;
    new-instance v4, Lcom/samsung/app/video/editor/external/StickerParams;

    invoke-direct {v4, v3}, Lcom/samsung/app/video/editor/external/StickerParams;-><init>(Lcom/samsung/app/video/editor/external/StickerParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v3    # "gp":Lcom/samsung/app/video/editor/external/StickerParams;
    goto :goto_5

    .line 262
    :cond_5
    move-object/from16 v21, v0

    goto :goto_6

    .line 260
    :cond_6
    move-object/from16 v21, v0

    .line 267
    .end local v0    # "gl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local v21, "gl":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    :goto_6
    const/4 v0, 0x0

    .line 268
    .local v0, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    if-eqz p10, :cond_8

    .line 269
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object v0, v2

    .line 270
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/DoodleParams;

    .line 271
    .local v3, "dp":Lcom/samsung/app/video/editor/external/DoodleParams;
    new-instance v4, Lcom/samsung/app/video/editor/external/DoodleParams;

    invoke-direct {v4, v3}, Lcom/samsung/app/video/editor/external/DoodleParams;-><init>(Lcom/samsung/app/video/editor/external/DoodleParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v3    # "dp":Lcom/samsung/app/video/editor/external/DoodleParams;
    goto :goto_7

    .line 270
    :cond_7
    move-object/from16 v22, v0

    goto :goto_8

    .line 268
    :cond_8
    move-object/from16 v22, v0

    .line 275
    .end local v0    # "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    .local v22, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    :goto_8
    new-instance v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v0

    move-object/from16 v3, v18

    move-wide/from16 v5, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v11, p4

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v17, v22

    invoke-direct/range {v2 .. v17}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;-><init>(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZIFLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;ILjava/util/List;)V

    iput-object v0, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievedUpdateFrameRequest:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 276
    iget-object v2, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 278
    :try_start_0
    iget-object v0, v1, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    goto :goto_9

    .line 282
    :catchall_0
    move-exception v0

    goto :goto_a

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    monitor-exit v2

    .line 283
    return-void

    .line 282
    :goto_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist clearEffectToVideoThumbnailRequest()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 389
    return-void
.end method

.method public blacklist clearStoryBoardThumbnailRequest()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrieveStoryBoardThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 349
    return-void
.end method

.method blacklist deinitThumbnail()V
    .locals 4

    .line 603
    iget-wide v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    sget-wide v2, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 604
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailDeinitialise(J)I

    .line 605
    sget-wide v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->THUMB_ERROR:J

    iput-wide v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mThumbnailHandle:J

    .line 607
    :cond_0
    return-void
.end method

.method public blacklist isSurfacePrepared()Z
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mSurfacePrepared:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist play(ILcom/samsung/app/video/editor/external/TranscodeElement;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "tr"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "te":Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->copy()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 147
    :cond_0
    iput p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mPlayPosition:I

    .line 148
    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mIsPlayCommandReceived:Z

    .line 150
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist test-api run()V
    .locals 6

    .line 393
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 394
    const-string v0, "TaskOffLoaderThread"

    const-string v1, "mTaskOffLoaderThread STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mTerminateThread:Z

    if-nez v0, :cond_12

    .line 409
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mIsPlayCommandReceived:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->processLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_0
    const-string v3, "TaskOffLoaderThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "play start : Current state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v3

    sget-object v4, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v3

    sget-object v4, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEController;->getSummaryState()Lcom/samsung/app/video/editor/external/SummaryState;

    move-result-object v3

    sget-object v4, Lcom/samsung/app/video/editor/external/SummaryState;->CREATING:Lcom/samsung/app/video/editor/external/SummaryState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mSurfacePrepared:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 415
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    .line 416
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 417
    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievedUpdateFrameRequest:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 418
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 419
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrieveStoryBoardThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 421
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->deinitThumbnail()V

    .line 423
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mPlayPosition:I

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->play(ILcom/samsung/app/video/editor/external/TranscodeElement;)I

    .line 424
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/VEController;->setCurrentState(Lcom/samsung/app/video/editor/external/VEState;)V

    .line 425
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVECallbackListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    sget-object v3, Lcom/samsung/app/video/editor/external/VECallback;->PLAYBACK_STARTED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v3}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 427
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mIsPlayCommandReceived:Z

    .line 428
    const-string v1, "TaskOffLoaderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play end : Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/VEState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 431
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mClipVideoThumbnailRequestAvailable:Z

    if-eqz v0, :cond_5

    .line 433
    const-string v0, "TaskOffLoaderThread"

    const-string v1, "Processing Request for clip video thumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iput-boolean v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mClipVideoThumbnailRequestAvailable:Z

    .line 435
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->processLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_4

    .line 437
    :cond_3
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mClipVideoThumbnailJob:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;->access$000(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mClipVideoThumbnailJob:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;

    invoke-static {v3}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;->access$100(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->getThumbnailForClipVideoFromNative(Lcom/samsung/app/video/editor/external/TranscodeElement;F)V

    .line 438
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVECallbackListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    sget-object v2, Lcom/samsung/app/video/editor/external/VECallback;->SURFACE_UPDATED:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v1, v2}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 442
    :cond_4
    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 445
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->processLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_7

    .line 452
    :cond_6
    const-string v1, "TaskOffLoaderThread"

    const-string v2, "Processing Request for preview thumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->getThumbnailForPreview()V

    .line 455
    :cond_7
    monitor-exit v0

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 457
    :cond_8
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrieveStoryBoardThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-eqz v0, :cond_b

    .line 458
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->processLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_3
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_a

    .line 464
    :cond_9
    const-string v1, "TaskOffLoaderThread"

    const-string v2, "Processing Request for storyboard thumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->getThumbnailForStoryboard()V

    .line 467
    :cond_a
    monitor-exit v0

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 469
    :cond_b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 470
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->processLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_4
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v1, v2, :cond_d

    .line 476
    :cond_c
    const-string v1, "TaskOffLoaderThread"

    const-string v2, "Processing Request for applyEffectToThumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->applyEffectToThumbnail()V

    .line 479
    :cond_d
    monitor-exit v0

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 480
    :cond_e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievedUpdateFrameRequest:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    if-eqz v0, :cond_11

    .line 481
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->processLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_5
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    if-eq v2, v3, :cond_f

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVeController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentState()Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v2, v3, :cond_10

    .line 488
    :cond_f
    const-string v2, "TaskOffLoaderThread"

    const-string v3, "Processing Request for UpdateFrame"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievedUpdateFrameRequest:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 490
    .local v2, "onGoingJob":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievedUpdateFrameRequest:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 491
    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->updateFrame(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)V

    .line 493
    .end local v2    # "onGoingJob":Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
    :cond_10
    monitor-exit v0

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    .line 497
    :cond_11
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_6
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->requestLockObject:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 502
    goto :goto_1

    .line 503
    :catchall_6
    move-exception v1

    goto :goto_2

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 503
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v0

    goto/16 :goto_0

    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v1

    .line 506
    :cond_12
    const-string v0, "TaskOffLoaderThread"

    const-string v1, "mTaskOffLoaderThread STOPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method public blacklist setAssetManager(Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 52
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mAssetManager:Landroid/content/res/AssetManager;

    .line 53
    return-void
.end method

.method public blacklist setListener(Lcom/samsung/app/video/editor/external/ThumbnailListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 63
    nop

    .line 64
    return-void
.end method

.method public blacklist setSurfacePrepared(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 645
    const-string v0, "TaskOffLoaderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSurfacePrepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->processLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    if-eqz p1, :cond_0

    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mSurfacePrepared:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mSurfacePrepared:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 654
    :goto_0
    monitor-exit v0

    .line 655
    return-void

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setThumbParams(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 132
    iput p2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->thumbnailHeight:I

    .line 133
    iput p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->thumnailWidth:I

    .line 134
    return-void
.end method

.method public blacklist setVEStateChangeListener(Lcom/samsung/app/video/editor/external/VECallbackListener;)V
    .locals 0
    .param p1, "VECallbackListener"    # Lcom/samsung/app/video/editor/external/VECallbackListener;

    .line 628
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mVECallbackListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    .line 629
    return-void
.end method

.method public blacklist startThread()V
    .locals 1

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mTerminateThread:Z

    .line 128
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->start()V

    .line 129
    return-void
.end method

.method public blacklist stopThread()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrieveStoryBoardThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 614
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mApplyEffectToVideoThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 615
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievePreviewThumbnailJobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mRetrievedUpdateFrameRequest:Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 618
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mTerminateThread:Z

    .line 619
    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;->mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 620
    return-void
.end method
