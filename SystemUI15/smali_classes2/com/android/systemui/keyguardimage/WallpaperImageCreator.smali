.class public Lcom/android/systemui/keyguardimage/WallpaperImageCreator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field protected final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p4, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iput-object p5, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iput-object p6, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    return-void
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v3

    iget-object v4, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    check-cast v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    move-result v5

    iget-object v6, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled()Z

    move-result v7

    const-string v8, "createImage: which = "

    const-string v9, ", userId = "

    const-string v10, ", imageOption.type = "

    invoke-static {v0, v3, v8, v9, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", imageOption.rotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", imageOption.DisplayType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isCoverWallpaper = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isDynamicLockWallpaper = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    if-nez v8, :cond_23

    sget-boolean v8, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-eqz v8, :cond_0

    goto/16 :goto_15

    :cond_0
    iget v8, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 v10, 0x5

    if-ne v8, v10, :cond_1

    sget-boolean v8, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v8, :cond_2

    const/16 v0, 0x21

    :cond_1
    :goto_0
    move v8, v0

    goto :goto_1

    :cond_2
    sget-boolean v8, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v8, :cond_1

    const/16 v0, 0x11

    goto :goto_0

    :goto_1
    iget v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    if-gez v0, :cond_3

    iget-object v0, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    :cond_3
    iget-boolean v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useScreenshot:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v0, :cond_7

    const-string v0, "captureWallpaper"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, v8, v3, v11}, Landroid/app/WallpaperManager;->semGetScreenshotFileDescriptor(IILandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v13, :cond_5

    :try_start_1
    const-string v0, "captureWallpaper: failed to get screenshot"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_4

    :try_start_2
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v14, v11

    goto :goto_5

    :cond_4
    :goto_2
    move-object v14, v11

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v14, v0

    goto :goto_3

    :cond_5
    :try_start_3
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0, v11, v14}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :goto_3
    if-eqz v13, :cond_6

    :try_start_5
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v13, v0

    :try_start_6
    invoke-virtual {v14, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "captureWallpaper: e = "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    if-eqz v14, :cond_7

    iget v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v2, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-virtual {v1, v14, v0, v2, v12}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_7
    iget v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 v13, 0x1

    if-ne v0, v10, :cond_10

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    move-result v0

    const/16 v5, 0xd

    if-eq v0, v5, :cond_9

    const/16 v5, 0x17

    if-ne v0, v5, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperIntelligentCrop()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v0, :cond_f

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v5, v12, v12, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v5, v10, v14, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_b

    :cond_9
    :goto_7
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v11, v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v4, v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v4, v13}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperRect(I)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_8

    :cond_a
    iget-object v4, v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getHomeWallpaperRect(I)Landroid/graphics/Rect;

    move-result-object v4

    :goto_8
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v4, "getCroppedBitmapForCoverScreen: Invalid params."

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_b
    iget-object v5, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v5, v13}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRealScreenSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v5

    iget v10, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v5, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v14

    invoke-virtual {v10, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    iget v15, v4, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    mul-float/2addr v15, v14

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    invoke-virtual {v10, v15, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    invoke-virtual {v10, v0, v4, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v5

    goto :goto_b

    :cond_c
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "getCoverThumbnail: which = "

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", wallpaperType = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v10, :cond_d

    :try_start_7
    invoke-virtual {v1, v8}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->getGifWallpaperPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->decodeGif(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v4, v11

    goto :goto_a

    :cond_d
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    invoke-virtual {v0, v8, v5, v4}, Landroid/app/WallpaperManager;->getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v11, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_9
    move-object v0, v4

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_a

    :cond_e
    :try_start_9
    const-string v0, "getCoverThumbnail: wallpaper is null"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v0, v11

    goto :goto_b

    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "getCoverThumbnail: e = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_f
    :goto_b
    if-eqz v0, :cond_10

    iget-object v1, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->fitToCoverScreen(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_10
    if-eqz v7, :cond_1d

    const-string v0, "getDlsThumbnail: src = "

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result v3

    invoke-interface {v6, v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDlsThumbnail: iCrops = "

    invoke-static {v4, v3, v9}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v3}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_c

    :cond_11
    move-object v3, v11

    :goto_c
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_d

    :cond_12
    move v13, v12

    :goto_d
    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isVideoWallpaperEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object v6

    if-nez v5, :cond_14

    if-eqz v6, :cond_13

    goto :goto_e

    :cond_13
    const-string v5, "getDlsThumbnail: no video wallpaper data"

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_14
    :goto_e
    iget-object v7, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "getDlsThumbnail: semIsKeyguardShowingAndNotOccluded() = "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    check-cast v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/16 v8, 0x268

    invoke-virtual {v7, v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->notifyEvent(I)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_15

    const-string/jumbo v8, "wallpaper_bitmap"

    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/graphics/Bitmap;

    :cond_15
    if-nez v11, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getDlsThumbnail: View or player is null, get frame from retriever. path = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v7, v6, v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v11, v5

    goto :goto_f

    :cond_16
    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isWallpaperSrcPath()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v13}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getBitmapFromPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_f

    :cond_17
    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isWallpaperSrcUri()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v6, v5, v13}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getBitmapFromUri(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_f

    :cond_18
    invoke-interface {v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_19
    :goto_f
    if-eqz v11, :cond_1a

    if-eqz v13, :cond_1a

    :try_start_a
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v14

    int-to-float v14, v14

    int-to-float v10, v10

    div-float/2addr v14, v10

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v13, v13

    div-float/2addr v10, v13

    invoke-static {v14, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v13, v3, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    iget v14, v3, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v15, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v8, v11, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dx = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", dy = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", displaySize.getWidth() = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", displaySize.getHeight() = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scale = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2

    move-object v11, v7

    goto :goto_10

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDlsThumbnail: e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_10
    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    const-string v0, "createImage: return DLS blank bitmap"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v3, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_1c
    iget v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v2, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    const/4 v3, 0x0

    invoke-virtual {v1, v11, v0, v2, v3}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    :try_start_b
    iget v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    invoke-virtual {v4, v8, v3, v0}, Landroid/app/WallpaperManager;->semGetThumbnailFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    if-eqz v3, :cond_1e

    :try_start_c
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0, v11, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget v5, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v6, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v5, v6, v7}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object v5, v0

    goto :goto_11

    :cond_1e
    :try_start_e
    const-string v0, "createImage: failed to get thumbnail"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v3, :cond_20

    :try_start_f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_14

    :goto_11
    if-eqz v3, :cond_1f

    :try_start_10
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_12

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_12
    throw v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "createImage: e = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_14
    invoke-virtual {v4, v8}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_21

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "createImage: bitmap from wallpaper manager"

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v4, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    iget v2, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_21
    iget v3, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v4, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v0, :cond_22

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v4, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    iget v2, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_22
    const-string v0, "createImage: return blank bitmap"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_23
    :goto_15
    const-string v0, "createBlackWallpaper"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, v2, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object v0
.end method

.method public final decodeGif(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_7

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_1

    const-string v1, "decodeGif() bitmap is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    const-string v1, "decodeGif() Exception occurs "

    invoke-static {v1, p1, p0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_6
    return-object v0

    :cond_2
    :goto_7
    const-string p1, "decodeGif() bitmap return null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getGifWallpaperPath(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    const-string v1, "getGifWallpaperPath: which = "

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", gifPath = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getGifWallpaperPath: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method public final makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const-string v4, "makeResult: w = "

    const-string v5, ", h = "

    const-string v6, ", rotation = "

    invoke-static {v1, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_7

    :cond_0
    sget-boolean v5, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v8, v9

    int-to-float v11, v7

    div-float v12, v11, v9

    mul-int v13, v5, v2

    mul-int v14, v1, v7

    const/high16 v15, 0x3f800000    # 1.0f

    if-le v13, v14, :cond_2

    int-to-float v8, v2

    div-float/2addr v8, v11

    mul-float/2addr v8, v15

    goto :goto_1

    :cond_2
    int-to-float v11, v1

    div-float/2addr v11, v8

    mul-float v8, v11, v15

    :goto_1
    const-string v11, "metricsHeight="

    const-string v13, " metricsWidth="

    const-string v14, "WallpaperUtils"

    invoke-static {v2, v1, v11, v13, v14}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v11, v1

    mul-float/2addr v11, v15

    div-float/2addr v11, v8

    int-to-float v13, v2

    mul-float/2addr v13, v15

    div-float/2addr v13, v8

    div-float v15, v11, v9

    sub-float v15, v10, v15

    const/16 v16, 0x0

    cmpg-float v17, v15, v16

    if-gez v17, :cond_3

    move/from16 v15, v16

    :cond_3
    div-float v9, v13, v9

    sub-float v9, v12, v9

    cmpg-float v17, v9, v16

    if-gez v17, :cond_4

    move/from16 v9, v16

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "widthOrigin = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "heightOrigin = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "scale = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "centerX = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "centerY = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startX = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startY = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "width = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "height = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-ne v5, v4, :cond_5

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-ne v7, v4, :cond_5

    const-string v1, "It doesn\'t need to crop bitmap"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v1, v0

    goto :goto_5

    :cond_5
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v6, 0x1

    if-lt v4, v6, :cond_9

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-lt v4, v6, :cond_9

    if-lt v1, v6, :cond_9

    if-ge v2, v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, v5, :cond_8

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    if-le v2, v7, :cond_7

    goto :goto_3

    :cond_7
    const-string v1, "Cropping..."

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v1, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_3
    const-string v0, "Calculated crop size error"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    :goto_4
    const-string v0, "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_5
    if-gtz v3, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x1

    if-ne v3, v0, :cond_b

    const/16 v0, 0x5a

    goto :goto_6

    :cond_b
    const/16 v0, 0x10e

    :goto_6
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_7
    const-string v0, "makeResult: thumbnail is invalid"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
