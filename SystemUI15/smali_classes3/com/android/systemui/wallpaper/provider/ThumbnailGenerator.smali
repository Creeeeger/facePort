.class public final Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWallMgr:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->mWallMgr:Landroid/app/WallpaperManager;

    return-void
.end method


# virtual methods
.method public final generateThumbnail(Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->mWallMgr:Landroid/app/WallpaperManager;

    iget v3, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->sourceWhich:I

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_e

    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    goto/16 :goto_c

    :cond_0
    iget v7, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->which:I

    iget v8, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->rotation:I

    const/16 v9, 0x8

    if-ne v2, v9, :cond_a

    new-instance v12, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;

    invoke-direct {v12}, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->mContext:Landroid/content/Context;

    const-string v9, "ImageWallpaper[VideoThumbnailGenerator]"

    const-string v0, "generateThumbnail: failed to decode image file. file="

    new-instance v11, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    iget v13, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->userId:I

    invoke-direct {v11, v2, v3, v13}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    const-string/jumbo v13, "thumbnailUri"

    invoke-virtual {v11, v13}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v10, v0

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v13, v0

    :try_start_6
    invoke-virtual {v10, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v13, v0

    :try_start_8
    invoke-virtual {v10, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    const-string v10, "generateThumbnail: e="

    invoke-static {v10, v0, v9}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    new-array v0, v6, [Landroid/graphics/Bitmap;

    aput-object v4, v0, v5

    invoke-static {v3}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v16, 0x4

    goto :goto_6

    :cond_3
    move/from16 v16, v6

    :goto_6
    new-instance v3, Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    sget-object v18, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    iget v6, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->userId:I

    const/16 v19, 0x0

    iget v15, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->sourceWhich:I

    move-object v13, v3

    move-object v14, v2

    move/from16 v17, v6

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/wallpaper/engines/video/VideoSource;-><init>(Landroid/content/Context;IIILcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;)V

    new-instance v1, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;

    move-object v6, v11

    move-object v11, v1

    move-object v15, v0

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;Lcom/android/systemui/wallpaper/engines/video/VideoSource;Landroid/content/Context;[Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;)V

    iget-object v6, v3, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    if-nez v6, :cond_4

    goto :goto_7

    :cond_4
    new-instance v9, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda2;

    invoke-direct {v9, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;)V

    invoke-interface {v6, v9}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;->useMediaRetriever(Ljava/util/function/Consumer;)V

    :goto_7
    aget-object v1, v0, v5

    if-eqz v1, :cond_8

    invoke-virtual {v3, v5}, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->isFixedOrientation(Z)Z

    move-result v1

    invoke-static {v2, v7, v8}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v1, :cond_5

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_5

    iput v7, v2, Landroid/graphics/Point;->x:I

    iput v6, v2, Landroid/graphics/Point;->y:I

    :cond_5
    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, v0, v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v9, v2, Landroid/graphics/Point;->x:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7, v9, v10}, Lcom/samsung/android/wallpaper/live/sdk/utils/GraphicsUtils;->getCenterCropRect(IIII)Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v1, :cond_6

    invoke-static {v8}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->convertDisplayRotationToAngle(I)I

    move-result v1

    neg-int v1, v1

    move v15, v1

    goto :goto_8

    :cond_6
    move v15, v5

    :goto_8
    aget-object v11, v0, v5

    iget v13, v2, Landroid/graphics/Point;->x:I

    iget v14, v2, Landroid/graphics/Point;->y:I

    const/16 v16, 0x1

    invoke-static/range {v11 .. v16}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->getSizeLimitedCenterCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aget-object v0, v0, v5

    if-eq v0, v1, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object/from16 v16, v1

    goto :goto_9

    :cond_8
    move-object/from16 v16, v4

    :goto_9
    iget-object v0, v3, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;->release()V

    iput-object v4, v3, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    :cond_9
    :goto_a
    return-object v16

    :cond_a
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v9, 0x4

    if-ne v2, v9, :cond_b

    new-instance v2, Lcom/android/systemui/wallpaper/provider/AnimatedThumbnailGenerator;

    invoke-direct {v2}, Lcom/android/systemui/wallpaper/provider/AnimatedThumbnailGenerator;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;

    invoke-direct {v4, v0, v3, v2}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;-><init>(Landroid/content/Context;ILandroid/widget/FrameLayout;)V

    invoke-static {v0, v7, v8}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    :try_start_9
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->getComplexAnimation()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v6, v0

    const-string v0, "failed to get apk resource : e = "

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v4, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->TAG:Ljava/lang/String;

    invoke-static {v7, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    iget-object v0, v4, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v0, v4, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v0, v4, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v4, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, v4, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_b
    if-ne v2, v6, :cond_c

    new-instance v2, Lcom/android/systemui/wallpaper/provider/MotionThumbnailGenerator;

    invoke-direct {v2}, Lcom/android/systemui/wallpaper/provider/MotionThumbnailGenerator;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-direct {v2, v0, v3, v6}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;-><init>(Landroid/content/Context;IZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "generateThumbnail: rootView="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "ImageWallpaper[MotionThumbnailGenerator]"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;

    invoke-direct {v4, v3, v2}, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;-><init>(ILcom/android/systemui/wallpaper/theme/MotionWallpaper;)V

    invoke-static {v0, v7, v8}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v7, v4, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;->mRootView:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-virtual {v7, v3, v1}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {v7, v5, v5, v2, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->init()V

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_c
    const/4 v1, 0x5

    if-ne v2, v1, :cond_d

    new-instance v1, Lcom/android/systemui/wallpaper/provider/GifThumbnailGenerator;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/provider/GifThumbnailGenerator;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/wallpaper/engines/gif/GifSource;

    sget-object v5, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-direct {v4, v0, v3, v5}, Lcom/android/systemui/wallpaper/engines/gif/GifSource;-><init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/CoverWallpaper;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->getGifPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "generateThumbnail: gifPath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", displaySize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ImageWallpaper[GifThumbnailGenerator]"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/graphics/drawable/AnimatedImageDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2

    :cond_d
    const-string v0, "generateThumbnail : Unexpected wallpaper type - "

    const-string v1, "ImageWallpaper[ThumbnailGenerator]"

    invoke-static {v2, v0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_e
    :goto_c
    new-instance v2, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator;

    invoke-direct {v2}, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    sget-object v9, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    iget v11, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->sourceWhich:I

    invoke-static {v11, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayIdByWhich(ILandroid/content/Context;)I

    move-result v13

    const/4 v10, 0x0

    iget v12, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->userId:I

    move-object v7, v2

    move-object v8, v0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;III)V

    new-array v3, v6, [Landroid/graphics/Bitmap;

    aput-object v4, v3, v5

    new-instance v4, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;Landroid/content/Context;Lcom/android/systemui/wallpaper/engines/image/ImageSource;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->useBitmap(Ljava/util/function/Consumer;)V

    aget-object v0, v3, v5

    return-object v0
.end method
