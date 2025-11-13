.class public Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public builtInDisplayId:I

.field public captureSharedBundle:Landroid/os/Bundle;

.field public capturedDisplayId:I

.field public displayContext:Landroid/content/Context;

.field public displayHeight:I

.field public final displayInfo:Landroid/view/DisplayInfo;

.field public displayRotation:I

.field public displayWidth:I

.field public isNavigationBarVisible:Z

.field public isStatusBarVisible:Z

.field public mBundle:Landroid/os/Bundle;

.field public navigationBarHeight:I

.field public rectToCapture:Landroid/graphics/Rect;

.field public safeInsetBottom:I

.field public safeInsetLeft:I

.field public safeInsetRight:I

.field public safeInsetTop:I

.field public screenCaptureOrigin:I

.field public screenCaptureSweepDirection:I

.field public screenCaptureType:I

.field public screenDegrees:F

.field public screenHeight:I

.field public screenNativeHeight:F

.field public screenNativeWidth:F

.field public screenWidth:I

.field public stackBounds:Landroid/graphics/Rect;

.field public statusBarHeight:I

.field public windowMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "ScreenCaptureHelper"

    sput-object v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    return-void
.end method

.method public static getDegreesForRotation(Landroid/view/Display;)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    return p0
.end method


# virtual methods
.method public final getExcludeSystemUIRect()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "old rectToCapture : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getNavBarPosition(Landroid/content/Context;IZ)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    sub-int v6, v5, v3

    iput v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    sub-int v6, v2, v0

    iput v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    iget v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    sub-int v7, v6, v3

    add-int/2addr v3, v0

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    move v3, v7

    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    sub-int/2addr v5, v3

    iget v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    iput v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    sub-int v6, v3, v0

    iput v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v0, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new getExcludeSystemUIRect : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " navigationBarPosition : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void
.end method

.method public getScreenshotEffectRect()Landroid/graphics/Rect;
    .locals 2

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getExcludeSystemUIRect()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getScreenshotRectToCapture()Landroid/graphics/Rect;
    .locals 2

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getExcludeSystemUIRect()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    return-object p0
.end method

.method public initializeCaptureType()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    return-void
.end method

.method public initializeScreenshotVariable()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    invoke-static {v1, v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    iput v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    int-to-float v2, v3

    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayRotation:I

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getDegreesForRotation(Landroid/view/Display;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initializeScreenshotVariable: screenDegrees="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    const/4 v3, 0x1

    aput v1, v0, v3

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    neg-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v0, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v2

    aget v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v3

    aget v0, v0, v2

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    :cond_0
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    return-void
.end method

.method public isB5CoverScreenInReverseMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isB5ScreenEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLetterBoxHide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowScreenshotAnimation(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "remove_animations"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    iget v2, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureSweepDirection:I

    iget v3, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    iget v4, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    iget v5, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetLeft:I

    iget v6, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    iget v7, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetRight:I

    iget v8, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    iget-object v9, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->captureSharedBundle:Landroid/os/Bundle;

    iget v10, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    iget v11, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    iget-boolean v12, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    iget-boolean v13, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    iget-object v14, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    iget-object v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v17, v15

    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    move/from16 v18, v15

    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    move/from16 v19, v15

    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    move/from16 v20, v15

    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    move/from16 v21, v15

    iget-object v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    move-object/from16 v22, v15

    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    move/from16 v23, v15

    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    move/from16 v24, v15

    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    move/from16 v25, v15

    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    move/from16 v26, v15

    iget-object v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->stackBounds:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->windowMode:I

    move/from16 p0, v0

    const-string v0, "ScreenCaptureHelper(screenCaptureType="

    move-object/from16 v27, v15

    const-string v15, ", screenCaptureSweepDirection="

    move-object/from16 v28, v14

    const-string v14, ", capturedDisplayId="

    invoke-static {v1, v2, v0, v15, v14}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenCaptureOrigin="

    const-string v2, ", safeInsetLeft="

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", safeInsetTop="

    const-string v2, ", safeInsetRight="

    invoke-static {v0, v5, v1, v6, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", safeInsetBottom="

    const-string v2, ", captureSharedBundle="

    invoke-static {v0, v7, v1, v8, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusBarHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", navigationBarHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isStatusBarVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNavigationBarVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayHeight="

    const-string v2, ", screenWidth="

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", screenHeight="

    const-string v2, ", rectToCapture="

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", screenNativeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", screenNativeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", builtInDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stackBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    move/from16 v2, p0

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
