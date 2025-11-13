.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "TypedValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/TypedValue$ComplexDimensionUnit;
    }
.end annotation


# static fields
.field public static final whitelist COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final whitelist COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final whitelist COMPLEX_RADIX_0p23:I = 0x3

.field public static final whitelist COMPLEX_RADIX_16p7:I = 0x1

.field public static final whitelist COMPLEX_RADIX_23p0:I = 0x0

.field public static final whitelist COMPLEX_RADIX_8p15:I = 0x2

.field public static final whitelist COMPLEX_RADIX_MASK:I = 0x3

.field public static final whitelist COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final whitelist COMPLEX_UNIT_DIP:I = 0x1

.field public static final whitelist COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final whitelist COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final whitelist COMPLEX_UNIT_IN:I = 0x4

.field public static final whitelist COMPLEX_UNIT_MASK:I = 0xf

.field public static final whitelist COMPLEX_UNIT_MM:I = 0x5

.field public static final whitelist COMPLEX_UNIT_PT:I = 0x3

.field public static final whitelist COMPLEX_UNIT_PX:I = 0x0

.field public static final whitelist COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final whitelist COMPLEX_UNIT_SP:I = 0x2

.field public static final whitelist DATA_NULL_EMPTY:I = 0x1

.field public static final whitelist DATA_NULL_UNDEFINED:I = 0x0

.field public static final whitelist DENSITY_DEFAULT:I = 0x0

.field public static final whitelist DENSITY_NONE:I = 0xffff

.field private static final greylist-max-o DIMENSION_UNIT_STRS:[Ljava/lang/String;

.field private static final greylist-max-o FRACTION_UNIT_STRS:[Ljava/lang/String;

.field private static final blacklist INCHES_PER_MM:F = 0.03937008f

.field private static final blacklist INCHES_PER_PT:F = 0.013888889f

.field private static final greylist-max-o MANTISSA_MULT:F = 0.00390625f

.field private static final greylist-max-o RADIX_MULTS:[F

.field public static final whitelist TYPE_ATTRIBUTE:I = 0x2

.field public static final whitelist TYPE_DIMENSION:I = 0x5

.field public static final whitelist TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final whitelist TYPE_FIRST_INT:I = 0x10

.field public static final whitelist TYPE_FLOAT:I = 0x4

.field public static final whitelist TYPE_FRACTION:I = 0x6

.field public static final whitelist TYPE_INT_BOOLEAN:I = 0x12

.field public static final whitelist TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final whitelist TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final whitelist TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final whitelist TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final whitelist TYPE_INT_DEC:I = 0x10

.field public static final whitelist TYPE_INT_HEX:I = 0x11

.field public static final whitelist TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final whitelist TYPE_LAST_INT:I = 0x1f

.field public static final whitelist TYPE_NULL:I = 0x0

.field public static final whitelist TYPE_REFERENCE:I = 0x1

.field public static final whitelist TYPE_STRING:I = 0x3


# instance fields
.field public whitelist assetCookie:I

.field public whitelist changingConfigurations:I

.field public whitelist data:I

.field public whitelist density:I

.field public whitelist resourceId:I

.field public whitelist sourceResourceId:I

.field public whitelist string:Ljava/lang/CharSequence;

.field public whitelist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/TypedValue;->RADIX_MULTS:[F

    const-string v5, "in"

    const-string/jumbo v6, "mm"

    const-string/jumbo v1, "px"

    const-string v2, "dip"

    const-string/jumbo v3, "sp"

    const-string/jumbo v4, "pt"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    const-string v0, "%"

    const-string v1, "%p"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000000
        0x34000000
        0x30000000
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    return-void
.end method

.method public static whitelist applyDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3d214285

    mul-float/2addr v0, v1

    return v0

    :pswitch_1
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    return v0

    :pswitch_2
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3c638e39

    mul-float/2addr v0, v1

    return v0

    :pswitch_3
    iget-object v0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    invoke-interface {v0, p1}, Landroid/content/res/FontScaleConverter;->convertSpToDp(F)F

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_0
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p1

    return v0

    :pswitch_4
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0

    :pswitch_5
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final whitelist coerceToString(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    const/16 v1, 0x1c

    const/16 v2, 0x1f

    if-lt p0, v1, :cond_1

    if-gt p0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_4
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_7
    return-object v0

    :cond_1
    const/16 v1, 0x10

    if-lt p0, v1, :cond_2

    if-gt p0, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist complexToDimension(ILandroid/util/DisplayMetrics;)F
    .locals 2

    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static whitelist complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .locals 2

    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static whitelist complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .locals 5

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    shr-int/lit8 v1, p0, 0x0

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f000000    # 0.5f

    if-ltz v3, :cond_0

    add-float/2addr v4, v1

    goto :goto_0

    :cond_0
    sub-float v4, v1, v4

    :goto_0
    float-to-int v3, v4

    if-eqz v3, :cond_1

    return v3

    :cond_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public static whitelist complexToFloat(I)F
    .locals 3

    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Landroid/util/TypedValue;->RADIX_MULTS:[F

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static whitelist complexToFraction(IFF)F
    .locals 1

    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p2

    return v0

    :pswitch_1
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist convertDimensionToPixels(IFLandroid/util/DisplayMetrics;)F
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static whitelist convertPixelsToDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private static blacklist createComplex(II)I
    .locals 3

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v0, :cond_1

    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p1, 0x4

    or-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of mantissa is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createComplexDimension(FI)I
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-static {p0}, Landroid/util/TypedValue;->floatToComplex(F)I

    move-result v0

    or-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a valid COMPLEX_UNIT_*: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createComplexDimension(II)I
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-static {p0}, Landroid/util/TypedValue;->intToComplex(I)I

    move-result v0

    or-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a valid COMPLEX_UNIT_*: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unitToConvertTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    const v1, 0x3d214285

    div-float/2addr v0, v1

    return v0

    :pswitch_1
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    return v0

    :pswitch_2
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    const v1, 0x3c638e39

    div-float/2addr v0, v1

    return v0

    :pswitch_3
    iget-object v1, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v1, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    invoke-interface {v1, v0}, Landroid/content/res/FontScaleConverter;->convertDpToSp(F)F

    move-result v1

    return v1

    :cond_3
    iget v1, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p1, v0

    return v0

    :pswitch_4
    iget v1, p2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_5

    return v0

    :cond_5
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    return v0

    :pswitch_5
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist floatToComplex(F)I
    .locals 4

    const/high16 v0, -0x35000000    # -8388608.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_4

    const v0, 0x4affffff    # 8388607.5f

    cmpl-float v0, p0, v0

    if-gez v0, :cond_4

    float-to-int v0, p0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    float-to-int v0, p0

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    const/high16 v1, 0x4b000000    # 8388608.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    :cond_1
    const/high16 v2, 0x43800000    # 256.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    const/high16 v1, 0x47000000    # 32768.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    :cond_2
    const/high16 v2, 0x47800000    # 65536.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    const/high16 v1, 0x43000000    # 128.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert value to complex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of the value is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getUnitFromComplexDimension(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static blacklist intToComplex(I)I
    .locals 3

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of the value is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist coerceToString()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    return-object v1

    :cond_0
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getComplexUnit()I
    .locals 1

    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/util/TypedValue;->getUnitFromComplexDimension(I)I

    move-result v0

    return v0
.end method

.method public whitelist getDimension(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public final whitelist getFloat()F
    .locals 1

    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist getFraction(FF)F
    .locals 1

    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    return v0
.end method

.method public whitelist isColorType()Z
    .locals 2

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist setTo(Landroid/util/TypedValue;)V
    .locals 1

    iget v0, p1, Landroid/util/TypedValue;->type:I

    iput v0, p0, Landroid/util/TypedValue;->type:I

    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroid/util/TypedValue;->data:I

    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/util/TypedValue;->assetCookie:I

    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    iput v0, p0, Landroid/util/TypedValue;->resourceId:I

    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/util/TypedValue;->density:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypedValue{t=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/d=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v2, "<null>"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    if-eqz v1, :cond_2

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_3

    const-string v1, " r=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
