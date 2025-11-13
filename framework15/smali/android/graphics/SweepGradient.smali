.class public Landroid/graphics/SweepGradient;
.super Landroid/graphics/Shader;
.source "SweepGradient.java"


# instance fields
.field private greylist-max-r mColor0:I

.field private greylist-max-r mColor1:I

.field private final blacklist mColorLongs:[J

.field private greylist-max-r mColors:[I

.field private greylist-max-r mCx:F

.field private greylist-max-r mCy:F

.field private greylist-max-r mPositions:[F


# direct methods
.method public constructor whitelist <init>(FFII)V
    .locals 7

    invoke-static {p3}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v3

    invoke-static {p4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/SweepGradient;-><init>(FFJJ)V

    return-void
.end method

.method public constructor whitelist <init>(FFJJ)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p3, v0, v1

    const/4 v1, 0x1

    aput-wide p5, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[J[F)V

    return-void
.end method

.method public constructor whitelist <init>(FF[I[F)V
    .locals 6

    invoke-static {p3}, Landroid/graphics/SweepGradient;->convertColors([I)[J

    move-result-object v3

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/SweepGradient;-><init>(FF[J[FLandroid/graphics/ColorSpace;)V

    return-void
.end method

.method public constructor whitelist <init>(FF[J[F)V
    .locals 7

    invoke-virtual {p3}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [J

    invoke-static {p3}, Landroid/graphics/SweepGradient;->detectColorSpace([J)Landroid/graphics/ColorSpace;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/graphics/SweepGradient;-><init>(FF[J[FLandroid/graphics/ColorSpace;)V

    return-void
.end method

.method private constructor blacklist <init>(FF[J[FLandroid/graphics/ColorSpace;)V
    .locals 2

    invoke-direct {p0, p5}, Landroid/graphics/Shader;-><init>(Landroid/graphics/ColorSpace;)V

    if-eqz p4, :cond_1

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    iput-object p3, p0, Landroid/graphics/SweepGradient;->mColorLongs:[J

    if-eqz p4, :cond_2

    invoke-virtual {p4}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    return-void
.end method

.method private static native blacklist nativeCreate(JFF[J[FJ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .locals 8

    iget v2, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v3, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget-object v4, p0, Landroid/graphics/SweepGradient;->mColorLongs:[J

    iget-object v5, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    invoke-virtual {p0}, Landroid/graphics/SweepGradient;->colorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v6

    move-wide v0, p1

    invoke-static/range {v0 .. v7}, Landroid/graphics/SweepGradient;->nativeCreate(JFF[J[FJ)J

    move-result-wide v0

    return-wide v0
.end method
