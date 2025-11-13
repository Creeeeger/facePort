.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
.super Ljava/lang/Object;
.source "LegibilityLogic.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptiveShadowData"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AdaptiveShadowData"


# instance fields
.field public blacklist contentColor:I

.field public blacklist contentContrastDiff:F

.field public blacklist contentContrastDiffNormalized:F

.field public blacklist contentOpacityNormalized:F

.field public blacklist dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

.field public blacklist luminanceComplexity:F

.field public blacklist shadowOpacityNormalized:F

.field public blacklist shadowSizeNormalized:F

.field public blacklist shapeComplexity:F

.field public blacklist shapeComplexityNormalized:F

.field public blacklist totalComplexity:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    .locals 4

    .line 464
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    .line 465
    .local v0, "clone":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    if-eqz v1, :cond_0

    .line 466
    array-length v1, v1

    new-array v1, v1, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 467
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 468
    iget-object v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 472
    .end local v0    # "clone":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveShadowData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 417
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 418
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 419
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    .line 420
    .local v1, "that":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    iget v4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    sub-float/2addr v3, v5

    .line 421
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentOpacityNormalized:F

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentOpacityNormalized:F

    sub-float/2addr v3, v5

    .line 422
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentColor:I

    iget v5, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentColor:I

    if-ne v3, v5, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->luminanceComplexity:F

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->luminanceComplexity:F

    sub-float/2addr v3, v5

    .line 424
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiff:F

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiff:F

    sub-float/2addr v3, v5

    .line 425
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiffNormalized:F

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiffNormalized:F

    sub-float/2addr v3, v5

    .line 426
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexity:F

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexity:F

    sub-float/2addr v3, v5

    .line 427
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexityNormalized:F

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexityNormalized:F

    sub-float/2addr v3, v5

    .line 428
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    sub-float/2addr v3, v5

    .line 429
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    iget-object v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 430
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 420
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 410
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentOpacityNormalized:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->luminanceComplexity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiff:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiffNormalized:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexityNormalized:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 411
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 412
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nAdaptiveShadowData{\ndominantColorResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 447
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshadowOpacityNormalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshadowSizeNormalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncontentOpacityNormalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentOpacityNormalized:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncontentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nluminanceComplexity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->luminanceComplexity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncontentContrastDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiff:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncontentContrastDiffNormalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiffNormalized:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshapeComplexity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshapeComplexityNormalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexityNormalized:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntotalComplexity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    return-object v0
.end method
