.class public final Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCropType:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

.field public final mFilterData:Ljava/lang/String;

.field public final mIntelligentCropRects:Ljava/util/ArrayList;

.field public mLegacyCropRects:Ljava/util/ArrayList;

.field public final mSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field public final mUserId:I

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;->NOT_DETERMINED:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mCropType:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWhich:I

    iput p3, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mUserId:I

    new-instance v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-direct {v0, p1, p4}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "cropHints"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mIntelligentCropRects:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;->INTELLIGENT_CROP:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mCropType:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

    :cond_1
    invoke-virtual {p4, p2, p3}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "imageFilterParams"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mFilterData:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public final getFilterData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mFilterData:Ljava/lang/String;

    return-object p0
.end method

.method public final getWallpaperImage()Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mCropType:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

    sget-object v3, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;->INTELLIGENT_CROP:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

    const-string v4, "ms"

    iget v5, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mUserId:I

    iget v6, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWhich:I

    const-string v7, "ImageWallpaper[WallpaperManagerImageSupplier]"

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne v2, v3, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v6, v5, v9, v9}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v3, v8

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_0
    move-object v3, v8

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v8

    :goto_3
    const-string v5, "getSourceBitmap: e="

    invoke-static {v5, v2, v7}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_4
    if-nez v3, :cond_2

    const-string p0, "getWallpaperImage: failed to get original bitmap"

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    invoke-direct {p0, v8, v8, v9}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;-><init>(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V

    return-object p0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getWallpaperImage: intelligent crop, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mIntelligentCropRects:Ljava/util/ArrayList;

    invoke-direct {v0, v3, p0, v2}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;-><init>(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V

    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v5, v9, v6, v9}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    const-string p0, "getWallpaperImage: failed to get cropped bitmap"

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    invoke-direct {p0, v8, v8, v9}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;-><init>(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V

    return-object p0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mLegacyCropRects:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mLegacyCropRects:Ljava/util/ArrayList;

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    iget-object v9, v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    move-result v11

    invoke-direct {v10, v9, v6, v11}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v10}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getImageCategory()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    :goto_5
    const-string v3, "extractSmartCropRect: not smart crop wallpaper"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_7

    const-string v3, "extractSmartCropRect: wallpaper is landscape"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :try_start_5
    invoke-virtual {v3, v2, v6, v5}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    iget-object v3, v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    if-nez v3, :cond_8

    const-string v3, "extractSmartCropRect: smart crop result is null"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "extractSmartCropRect: wpSize="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->getBitmapSizeString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", smartCropRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v3

    goto :goto_6

    :catch_2
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "extractSmartCropRect: e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    if-eqz v8, :cond_9

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mLegacyCropRects:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v3, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;->LEGACY_CROP:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

    iput-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mCropType:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier$CropType;

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getWallpaperImage: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    move-result v0

    new-instance v1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mLegacyCropRects:Ljava/util/ArrayList;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;-><init>(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V

    return-object v1
.end method

.method public final supportWallpaperScrolling()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mWhich:I

    and-int/lit8 v3, v2, 0x1

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-nez v3, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Landroid/app/WallpaperManager;->getLastCallingPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "com.samsung.android.app.dressroom"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "com.android.systemui"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "com.android.wallpaper.livepicker"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "com.samsung.android.themecenter"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "com.sec.knox.kccagent"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_1

    :sswitch_5
    const-string v3, "android"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_0

    const-string/jumbo v0, "supportWallpaperScrolling: lastCallingPkg="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImageWallpaper[WallpaperManagerImageSupplier]"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3357c991 -> :sswitch_5
        0x63daef2 -> :sswitch_4
        0x11e0c37e -> :sswitch_3
        0x33482f52 -> :sswitch_2
        0x653aae6f -> :sswitch_1
        0x78bfa425 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
