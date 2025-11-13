.class final Landroid/graphics/ColorSpace$Xyz;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Xyz"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Xyz-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static greylist-max-o clamp(F)F
    .locals 2

    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist fromXyz([F)[F
    .locals 2

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public whitelist getMinValue(I)F
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    return v0
.end method

.method public whitelist isWideGamut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist toXyz([F)[F
    .locals 2

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    return-object p1
.end method
