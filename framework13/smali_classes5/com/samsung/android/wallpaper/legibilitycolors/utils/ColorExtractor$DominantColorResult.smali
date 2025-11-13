.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
.super Ljava/lang/Object;
.source "ColorExtractor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DominantColorResult"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DominantColorResult"


# instance fields
.field public blacklist color:I

.field public blacklist hsv:[F

.field public blacklist isGrayScale:Z

.field public blacklist percentage:F


# direct methods
.method public constructor blacklist <init>(IF)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "percentage"    # F

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    .line 598
    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 599
    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    .line 601
    iput p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 602
    return-void
.end method

.method public constructor blacklist <init>(IFZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "percentage"    # F
    .param p3, "isGrayScale"    # Z

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    .line 605
    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 606
    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    .line 607
    iput-boolean p3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    .line 608
    iput p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 609
    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 4

    .line 647
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 648
    .local v0, "clone":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    if-eqz v1, :cond_0

    .line 649
    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    .line 650
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 651
    iget-object v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    aget v2, v2, v1

    aput v2, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 655
    .end local v0    # "clone":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    :catch_0
    move-exception v0

    .line 656
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

    const-string v2, "DominantColorResult"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
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

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copyHSV([F)V
    .locals 3
    .param p1, "dst"    # [F

    .line 617
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    .line 618
    const/4 v1, 0x1

    aget v2, v0, v1

    aput v2, p1, v1

    .line 619
    const/4 v1, 0x2

    aget v0, v0, v1

    aput v0, p1, v1

    .line 620
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 629
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 630
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 631
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 632
    .local v1, "that":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    iget v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    iget-boolean v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 624
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 612
    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 613
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    .line 614
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nDominantColorResult{\ncolor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 638
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nisGrayScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    return-object v0
.end method
