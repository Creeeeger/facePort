.class public Landroid/graphics/RadialGradient;
.super Landroid/graphics/Shader;
.source "RadialGradient.java"


# instance fields
.field private greylist-max-r mCenterColor:I

.field private final blacklist mColorLongs:[J

.field private greylist-max-r mColors:[I

.field private greylist-max-r mEdgeColor:I

.field private final blacklist mFocalRadius:F

.field private final blacklist mFocalX:F

.field private final blacklist mFocalY:F

.field private greylist-max-r mPositions:[F

.field private greylist-max-r mRadius:F

.field private greylist-max-r mTileMode:Landroid/graphics/Shader$TileMode;

.field private greylist-max-r mX:F

.field private greylist-max-r mY:F


# direct methods
.method public constructor whitelist <init>(FFFFFF[J[FLandroid/graphics/Shader$TileMode;)V
    .locals 12

    invoke-virtual/range {p7 .. p7}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [J

    invoke-static/range {p7 .. p7}, Landroid/graphics/RadialGradient;->detectColorSpace([J)Landroid/graphics/ColorSpace;

    move-result-object v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFFFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    return-void
.end method

.method private constructor blacklist <init>(FFFFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V
    .locals 2

    invoke-direct {p0, p10}, Landroid/graphics/Shader;-><init>(Landroid/graphics/ColorSpace;)V

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_4

    cmpg-float v0, p6, v0

    if-lez v0, :cond_3

    if-eqz p8, :cond_1

    array-length v0, p7

    array-length v1, p8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p4, p0, Landroid/graphics/RadialGradient;->mX:F

    iput p5, p0, Landroid/graphics/RadialGradient;->mY:F

    iput p6, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iput p1, p0, Landroid/graphics/RadialGradient;->mFocalX:F

    iput p2, p0, Landroid/graphics/RadialGradient;->mFocalY:F

    iput p3, p0, Landroid/graphics/RadialGradient;->mFocalRadius:F

    iput-object p7, p0, Landroid/graphics/RadialGradient;->mColorLongs:[J

    if-eqz p8, :cond_2

    invoke-virtual {p8}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    iput-object p9, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ending radius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "starting/focal radius must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(FFFIILandroid/graphics/Shader$TileMode;)V
    .locals 9

    invoke-static {p4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v4

    invoke-static {p5}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFFJJLandroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public constructor whitelist <init>(FFFJJLandroid/graphics/Shader$TileMode;)V
    .locals 8

    const/4 v0, 0x2

    new-array v5, v0, [J

    const/4 v0, 0x0

    aput-wide p4, v5, v0

    const/4 v0, 0x1

    aput-wide p6, v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[J[FLandroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public constructor whitelist <init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 11

    invoke-static {p4}, Landroid/graphics/RadialGradient;->convertColors([I)[J

    move-result-object v7

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v10

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    return-void
.end method

.method public constructor whitelist <init>(FFF[J[FLandroid/graphics/Shader$TileMode;)V
    .locals 12

    invoke-virtual/range {p4 .. p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [J

    invoke-static/range {p4 .. p4}, Landroid/graphics/RadialGradient;->detectColorSpace([J)Landroid/graphics/ColorSpace;

    move-result-object v11

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFFFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    return-void
.end method

.method private static native blacklist nativeCreate(JFFFFFF[J[FIJ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .locals 14

    move-object v0, p0

    iget v3, v0, Landroid/graphics/RadialGradient;->mFocalX:F

    iget v4, v0, Landroid/graphics/RadialGradient;->mFocalY:F

    iget v5, v0, Landroid/graphics/RadialGradient;->mFocalRadius:F

    iget v6, v0, Landroid/graphics/RadialGradient;->mX:F

    iget v7, v0, Landroid/graphics/RadialGradient;->mY:F

    iget v8, v0, Landroid/graphics/RadialGradient;->mRadius:F

    iget-object v9, v0, Landroid/graphics/RadialGradient;->mColorLongs:[J

    iget-object v10, v0, Landroid/graphics/RadialGradient;->mPositions:[F

    iget-object v1, v0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v11, v1, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-virtual {p0}, Landroid/graphics/RadialGradient;->colorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v12

    move-wide v1, p1

    invoke-static/range {v1 .. v13}, Landroid/graphics/RadialGradient;->nativeCreate(JFFFFFF[J[FIJ)J

    move-result-wide v1

    return-wide v1
.end method
