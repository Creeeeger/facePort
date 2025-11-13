.class public final Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapUpdateConsumer:Ljava/util/function/Consumer;

.field public final mCallback:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;

.field public final mColorDecorFilterData:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public mCurDensityDpi:I

.field public mCurrentUserId:I

.field public mDeviceDisplayType:I

.field public final mDimensions:Landroid/graphics/Rect;

.field public final mDisplayId:I

.field public final mDownScaledSourceBitmapSet:Ljava/util/HashMap;

.field public mHighlightFilterAmount:I

.field public final mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field public mIsFolded:Z

.field public mIsNightModeOn:Z

.field public mIsSmartCropAllowed:Z

.field public final mIsVirtualDisplay:Z

.field public mIsWcgContent:Z

.field public mLidState:I

.field public final mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public mOrientation:I

.field public final mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

.field public final mPm:Landroid/os/PowerManager;

.field public final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSmartCropYOffset:I

.field public mSubBitmap:Landroid/graphics/Bitmap;

.field public final mSurfaceSize:Landroid/graphics/Rect;

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p7, "ImageWallpaperCanvasHelper"

    iput-object p7, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mOrientation:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mYOffset:F

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    iput v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    iput v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsFolded:Z

    iput v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    if-nez v1, :cond_0

    const-string v3, "WallpaperManager not available"

    invoke-static {p7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p4

    iput p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iput-object p6, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p8, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCallback:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "ImageWallpaperCanvasHelper_"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCallback:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;

    check-cast p5, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p6, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    iget-object p5, p5, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-virtual {p5}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    move-result p5

    const/4 p6, 0x2

    if-ne p5, p6, :cond_1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    sget-boolean p5, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p5, :cond_2

    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    :cond_2
    new-instance p5, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-direct {p5, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    iput-object p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    iget p5, p5, Landroid/content/res/Configuration;->densityDpi:I

    iput p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    iget p5, p5, Landroid/content/res/Configuration;->orientation:I

    iput p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mOrientation:I

    const p5, -0xf4240

    iput p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result p5

    sget-object p6, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    const/4 p7, 0x0

    invoke-virtual {p6, p5, p7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean p5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p5, :cond_4

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p5

    const-string/jumbo p6, "power"

    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/os/PowerManager;

    iput-object p6, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mPm:Landroid/os/PowerManager;

    new-instance p6, Ljava/lang/StringBuilder;

    const-string p8, " initial lid state : "

    invoke-direct {p6, p8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, " , "

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p8

    invoke-virtual {p8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p8

    iget p8, p8, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    check-cast p3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {p3, p4, p6}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    const/4 p6, 0x5

    if-ne p3, p6, :cond_3

    if-eqz p5, :cond_3

    invoke-static {v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, " flex mode "

    invoke-virtual {p5, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p5, v2

    :cond_3
    invoke-virtual {p0, p5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, 0x20

    if-eqz p3, :cond_5

    move v2, v0

    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    invoke-static {p2, p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->convertDisplayIdToMode(ILandroid/content/Context;)I

    move-result p2

    if-ltz p2, :cond_7

    or-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p3

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p2, "imageFilterParams"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    :goto_1
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iput-object p7, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-nez p1, :cond_8

    const/16 p1, 0x3c

    iput p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    :cond_8
    return-void
.end method

.method public static convertLidStateToString(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "LID_OPEN"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "LID_CLOSED"

    return-object p0

    :cond_1
    const-string p0, "LID_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public final createDownScaledSourceBitmap(Landroid/graphics/Bitmap;I)Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x44800000    # 1024.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    const-string v3, "createDownScaledSourceBitmap: longDisplay="

    const-string v4, ", shortBmpLen="

    const-string v5, ", scale="

    invoke-static {v0, v1, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {p1, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;-><init>(ILandroid/graphics/Bitmap;F)V

    return-object p0

    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "createDownScaledSourceBitmap: Resized bitmap creation failed. org="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", resized="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getCurrentWhich()I
    .locals 6

    iget v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/16 v5, 0x10

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_1

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCallback:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    move-result p0

    if-ne p0, v2, :cond_4

    move v1, v2

    :cond_4
    and-int/lit8 p0, v1, 0x3

    or-int/2addr p0, v0

    return p0
.end method

.method public final getDimFilterColor(I)Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->getColor(I)Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x3

    aget p0, p1, p0

    const/4 v0, 0x0

    aget v0, p1, v0

    aget v1, p1, v2

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplaySize()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance p0, Landroid/graphics/Point;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public final getFilterAppliedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->createFilteredBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    if-ltz v0, :cond_2

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;II)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p2, v3, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v1, p2, p2}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v1, p2, v0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7
    :goto_4
    return-object p1
.end method

.method public final getIntelligentCropHints(I)Ljava/util/ArrayList;
    .locals 7

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_4

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    and-int/lit8 v4, p1, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    if-ne v4, v5, :cond_5

    move-object v4, v6

    check-cast v4, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v4, p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->isPluginWallpaperRequired(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_6

    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperIntelligentCrop()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getIntelligentCropHints: From CoverWallpaper. json = "

    invoke-static {p1, p0, v3}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_8

    check-cast v6, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result p0

    iget-object p1, v6, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_7
    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    const-string p1, "getIntelligentCropHints: From PluginWallpaper. json = "

    invoke-static {p1, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    invoke-virtual {v0, p1, p0}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    const-string p1, "cropHints"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-static {p0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final hasIntelligentCropHints(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getIntelligentCropHints(I)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "loadBitmap: Get cover wallpaper."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string p0, "loadBitmap: mWallpaperManager is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    const-string v3, "loadBitmap: which = "

    invoke-static {p1, v3, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    check-cast v0, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadBitmap: Get plugin wallpaper. bitmap = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "loadBitmap: displayId = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " which = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "getBitmapFromWallpaperManager: Wallpaper type is not image."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    invoke-virtual {v0, p1, p0, v3, v3}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZI)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_7

    move-object p1, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    invoke-virtual {v0, p0, v3, p1, v3}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :catch_0
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    sget v0, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    if-le p0, v0, :cond_a

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result p0

    const-string v0, ", h="

    if-nez p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "getBitmapFromWallpaperManager: Wallpaper is too large! w="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wallpaper is too large! w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    move-object v2, p1

    :goto_3
    return-object v2
.end method

.method public final reportSurfaceSize(I)Landroid/util/Size;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getIntelligentCropHints(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance p1, Landroid/util/Size;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public final setLidState(I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    :cond_0
    return-void
.end method

.method public final useWallpaperBitmap(ILjava/util/function/Consumer;)V
    .locals 7

    const-string/jumbo v0, "useWallpaperBitmap: release 0x"

    const-string/jumbo v1, "useWallpaperBitmap: w="

    const-string/jumbo v2, "useWallpaperBitmap: mode is missing on which. which="

    iget-object v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v3

    and-int/lit8 v4, p1, 0x3c

    if-nez v4, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    :goto_0
    const/16 v2, 0x10

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    :goto_2
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v2, :cond_3

    iput-object v4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_3
    iput-object v4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v4}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsWcgContent:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v1, v5, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;

    if-nez v1, :cond_6

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->createDownScaledSourceBitmap(Landroid/graphics/Bitmap;I)Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "useWallpaperBitmap: Can\'t get bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsWcgContent:Z

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_7

    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_c

    if-eqz v4, :cond_c

    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    const-string v0, "null"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    const-string v0, "null"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", refCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_a
    :goto_7
    iget-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    :cond_c
    monitor-exit p1

    return-void

    :goto_8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_9
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
