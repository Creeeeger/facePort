.class public final Landroidx/palette/graphics/Palette$Swatch;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBlue:I

.field public mBodyTextColor:I

.field public mGeneratedTextColors:Z

.field public final mGreen:I

.field public mHsl:[F

.field public final mPopulation:I

.field public final mRed:I

.field public final mRgb:I

.field public mTitleTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRed:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mGreen:I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBlue:I

    iput p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    iput p2, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRed:I

    iput p2, p0, Landroidx/palette/graphics/Palette$Swatch;->mGreen:I

    iput p3, p0, Landroidx/palette/graphics/Palette$Swatch;->mBlue:I

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    iput p4, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    return-void
.end method

.method public constructor <init>([FI)V
    .locals 7

    sget-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v5, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    sub-float/2addr v3, v2

    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v1, v2

    rem-float/2addr v2, v4

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v6, v2

    mul-float/2addr v6, v5

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v1, :pswitch_data_0

    move v1, v0

    move v2, v1

    goto :goto_0

    :pswitch_0
    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v1, v3, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_1
    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v1, v3, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_2
    mul-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_3
    mul-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_4
    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_5
    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->constrain(I)I

    move-result v0

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->constrain(I)I

    move-result v1

    invoke-static {v2}, Landroidx/core/graphics/ColorUtils;->constrain(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ensureTextColorsGenerated()V
    .locals 8

    iget-boolean v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    if-nez v0, :cond_4

    const/4 v0, -0x1

    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2, v0, v1}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(FII)I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4, v0, v1}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(FII)I

    move-result v5

    const/4 v6, 0x1

    if-eq v3, v0, :cond_0

    if-eq v5, v0, :cond_0

    invoke-static {v0, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    invoke-static {v0, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    iput-boolean v6, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    return-void

    :cond_0
    const/high16 v7, -0x1000000

    invoke-static {v2, v7, v1}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(FII)I

    move-result v2

    invoke-static {v4, v7, v1}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(FII)I

    move-result v1

    if-eq v2, v0, :cond_1

    if-eq v1, v0, :cond_1

    invoke-static {v7, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    invoke-static {v7, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    iput-boolean v6, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    return-void

    :cond_1
    if-eq v3, v0, :cond_2

    invoke-static {v0, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {v7, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    :goto_0
    iput v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    if-eq v5, v0, :cond_3

    invoke-static {v0, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {v7, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_1
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    iput-boolean v6, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    :cond_4
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/palette/graphics/Palette$Swatch;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/palette/graphics/Palette$Swatch;

    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    iget v3, p1, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    iget p1, p1, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getHsl()[F
    .locals 4

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    :cond_0
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBlue:I

    iget-object v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mRed:I

    iget v3, p0, Landroidx/palette/graphics/Palette$Swatch;->mGreen:I

    invoke-static {v2, v3, v0, v1}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    iget-object p0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [RGB: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [HSL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [Population: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [Title Text: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [Body Text: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    iget p0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
