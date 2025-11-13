.class public final Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCropResult:Landroid/graphics/Rect;

.field public mDefaultDisplay:Landroid/view/Display;

.field public final mDisplayId:I

.field public mFromLandScape:Z

.field public mLidState:I

.field public final mTmpDisplayInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDisplayId:I

    return-void
.end method

.method public static checkDisplaySize(Landroid/content/res/Configuration;)V
    .locals 7

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v2, 0x5

    if-ne p0, v2, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    int-to-float v3, v1

    int-to-float v4, v0

    div-float v5, v3, v4

    div-float/2addr v4, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3e99999a    # 0.3f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    const-string v3, "Smart Crop ratio different display size.So clear cache. which : "

    const-string v4, " display w: "

    const-string v5, " , h: "

    invoke-static {p0, v1, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cropRect : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageSmartCropper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public final needToExtractSmartCropRect(III)Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    const-string v0, "ImageSmartCropper"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SmartView is connected (fixed ratio), so extract rect"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string p0, "SmartView is not connected"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result p0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez p0, :cond_2

    if-eqz p2, :cond_4

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float p0, p0

    int-to-float v3, v3

    div-float/2addr p0, v3

    cmpl-float p0, p0, v2

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    cmpl-float p0, p0, v2

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "Display info is not updated yet."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method public final needToSmartCrop()Z
    .locals 6

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sehome_portrait_mode_only"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " getSettingKey "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    const-string v5, "ImageSmartCropper"

    invoke-static {v4, v5, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    if-nez v2, :cond_2

    const-string/jumbo v2, "sub_display_system_wallpaper_transparency"

    goto :goto_0

    :cond_2
    const-string v2, "android.wallpaper.settings_systemui_transparency"

    :goto_0
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDisplayId:I

    const/4 v4, 0x2

    if-ne p0, v4, :cond_3

    const-string v2, "dex_system_wallpaper_transparency"

    :cond_3
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method public final updateSmartCropRect(Landroid/graphics/Bitmap;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "] ["

    const-string v4, "Number of faces = "

    const-string v5, "deviceRatio: "

    const-string v6, "deviceWidth : "

    const-string v7, "bmpWidth : "

    sget-boolean v8, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    const-string v9, "ImageSmartCropper"

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    move/from16 v10, p3

    invoke-virtual {v8, v2, v10}, Landroid/app/WallpaperManager;->getWallpaperOrientation(II)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v0, "updateSmartCropRect landscape mode. do not smart crop"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v8, "updateSmartCropRect"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    :try_start_0
    const-string v0, "mBackground == null"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v0, "mBackground is recycled"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v10, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v8, v8, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bmpHeight : "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", deviceHeight : "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToExtractSmartCropRect(III)Z

    move-result v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    new-instance v6, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v6}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/media/face/SemFaceDetection;->init()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v13, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x1

    if-eq v8, v13, :cond_5

    const/4 v13, 0x3

    if-ne v8, v13, :cond_4

    goto :goto_1

    :cond_4
    int-to-float v8, v10

    int-to-float v10, v11

    :goto_0
    div-float/2addr v8, v10

    goto :goto_2

    :cond_5
    :goto_1
    int-to-float v8, v11

    int-to-float v10, v10

    goto :goto_0

    :goto_2
    int-to-float v10, v15

    mul-float/2addr v10, v8

    float-to-int v10, v10

    if-le v10, v14, :cond_6

    move v10, v14

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", landBitmapWidth : "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", landBitmapHeight : "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v1, v7}, Lcom/samsung/android/media/face/SemFaceDetection;->run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v12

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/media/face/SemFace;

    iget-object v11, v11, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "faceRect is : ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v12, v13, :cond_7

    move-object v4, v11

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    if-nez v5, :cond_a

    new-instance v3, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    invoke-direct {v3}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;-><init>()V

    mul-int v5, v15, v14

    new-array v5, v5, [I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    move-object v13, v5

    move v7, v14

    move v14, v1

    move v1, v15

    move/from16 v18, v1

    move/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v3, v1, v7, v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage(II[I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ findObjectRect() ] : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const-string v5, "do not find object"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-wide v11, v3, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v11, v12}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseOneImage(J)I

    goto :goto_5

    :cond_a
    move v7, v14

    move v1, v15

    const/4 v6, 0x0

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recognizedRect: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, v1, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v5, v10, 0x2

    div-int/lit8 v14, v7, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    sub-int/2addr v14, v5

    invoke-virtual {v3, v6, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_b
    sub-int v14, v7, v5

    if-le v1, v14, :cond_c

    sub-int v14, v7, v10

    invoke-virtual {v3, v6, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_c
    if-lt v1, v5, :cond_d

    sub-int/2addr v1, v5

    invoke-virtual {v3, v6, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_d
    :goto_6
    iput-object v3, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ findCropRect() of Real Image] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OutOfMemoryError while smart cropping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.lang.LinkageError occurred when smart cropping "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occurred when smart cropping "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void
.end method

.method public final updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;II)V
    .locals 5

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " updateSmartCropRectIfNeeded: from landscape = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    const-string v4, "ImageSmartCropper"

    invoke-static {v0, v1, v4}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {v1, v0, p2, v3}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getImageCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;II)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string/jumbo p0, "updateSmartCropRectIfNeeded: Do not update SmartCrop."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
