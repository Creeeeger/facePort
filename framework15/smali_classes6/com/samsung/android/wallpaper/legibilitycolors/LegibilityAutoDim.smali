.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;
.super Ljava/lang/Object;
.source "LegibilityAutoDim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
    }
.end annotation


# static fields
.field static blacklist mMaximumComplexityForAutoDim:F

.field static blacklist mMinimumComplexityForAutoDim:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMinimumComplexityForAutoDim:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMaximumComplexityForAutoDim:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateAdaptiveDim([Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
    .locals 12

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;-><init>()V

    sget v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMinimumComplexityForAutoDim:F

    sget v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMaximumComplexityForAutoDim:F

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, p0, v7

    iget-object v8, v8, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    iget v9, v8, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    cmpl-float v10, v9, v1

    if-lez v10, :cond_0

    cmpl-float v10, v9, v4

    if-lez v10, :cond_0

    move v3, v7

    move v4, v9

    :cond_0
    cmpl-float v10, v9, v5

    if-lez v10, :cond_1

    move v5, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iput v5, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->maxComplexity:F

    iput v4, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->validMaxComplexity:F

    const/4 v7, -0x1

    const/high16 v8, -0x1000000

    if-eq v3, v7, :cond_4

    aget-object v9, p0, v3

    iget-object v9, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    sub-float/2addr v10, v1

    sub-float v11, v2, v1

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v11

    iput v10, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->opacity:F

    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentColor:I

    if-ne v8, v10, :cond_3

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    iput v7, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->color:I

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    iput v7, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->opacity:F

    iput v8, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->color:I

    :goto_2
    return-object v0
.end method

.method public static blacklist getMaximumComplexityForAutoDim()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMaximumComplexityForAutoDim:F

    return v0
.end method

.method public static blacklist getMinimumComplexityForAutoDim()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMinimumComplexityForAutoDim:F

    return v0
.end method

.method public static blacklist setMaximumComplexityForAutoDim(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMaximumComplexityForAutoDim:F

    return-void
.end method

.method public static blacklist setMinimumComplexityForAutoDim(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMinimumComplexityForAutoDim:F

    return-void
.end method
