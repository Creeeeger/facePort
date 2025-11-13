.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
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
    name = "LegibilityResult"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LegibilityResult"


# instance fields
.field public blacklist adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

.field public blacklist adjustedContentsColor:I

.field public blacklist avgHSV:[F

.field public blacklist contentsColor:I

.field public blacklist contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

.field public blacklist dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    .line 493
    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 494
    const v1, -0xbbbbbc

    iput v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    .line 495
    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 496
    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    .line 497
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    .line 499
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[F)V
    .locals 2
    .param p1, "contentsColorType"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .param p2, "avgHSV"    # [F

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    .line 514
    iput-object p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 515
    const v1, -0xbbbbbc

    iput v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    .line 516
    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 517
    iput-object p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    .line 518
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    .line 520
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V
    .locals 2
    .param p1, "legibilityResult"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iget-object v0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    .line 503
    iget-object v0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 504
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v0, v1, :cond_0

    const v0, -0x50506

    goto :goto_0

    :cond_0
    const v0, -0xbbbbbc

    :goto_0
    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    .line 505
    iget-object v0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 506
    iget-object v0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    .line 507
    iget v0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    .line 509
    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 4

    .line 560
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 561
    .local v0, "clone":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 562
    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    if-eqz v1, :cond_1

    .line 566
    array-length v1, v1

    new-array v1, v1, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 567
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 568
    iget-object v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v2

    aput-object v2, v3, v1

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    if-eqz v1, :cond_2

    .line 572
    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    .line 573
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 574
    iget-object v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    aget v2, v2, v1

    aput v2, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 579
    .end local v0    # "clone":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    :catch_0
    move-exception v0

    .line 580
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

    const-string v2, "LegibilityResult"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
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

    .line 480
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 533
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 534
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 535
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 536
    .local v1, "that":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    iget v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    iget v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    iget v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    iget-object v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    .line 539
    invoke-virtual {v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iget-object v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v3, v4, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    iget-object v5, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 541
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    iget-object v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    .line 542
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 536
    :goto_1
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 525
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 526
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 527
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 528
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nLegibilityResult{\n  contentsColorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  contentsColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  adjustedContentsColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  dominantColorResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 551
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  avgHSV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    .line 552
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  adaptiveShadowData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    return-object v0
.end method
