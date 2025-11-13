.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "CubicEasing.java"


# static fields
.field private static final blacklist ACCELERATE:[F

.field private static final blacklist ANTICIPATE:[F

.field private static final blacklist DECELERATE:[F

.field private static final blacklist D_ERROR:F = 1.0E-4f

.field private static final blacklist ERROR:F = 0.01f

.field private static final blacklist LINEAR:[F

.field private static final blacklist OVERSHOOT:[F

.field private static final blacklist STANDARD:[F


# instance fields
.field blacklist mType:F

.field blacklist mX1:F

.field blacklist mX2:F

.field blacklist mY1:F

.field blacklist mY2:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->STANDARD:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->ACCELERATE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->DECELERATE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->LINEAR:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->ANTICIPATE:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->OVERSHOOT:[F

    return-void

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3d4ccccd    # 0.05f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3e4ccccd    # 0.2f
        0x3f733333    # 0.95f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3eb851ec    # 0.36f
        0x0
        0x3f28f5c3    # 0.66f
        -0x40f0a3d7    # -0.56f
    .end array-data

    :array_5
    .array-data 4
        0x3eae147b    # 0.34f
        0x3fc7ae14    # 1.56f
        0x3f23d70a    # 0.64f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor blacklist <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mType:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup(FFFF)V

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mType:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    int-to-float v0, p1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mType:F

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->config(I)V

    return-void
.end method

.method private blacklist getDiffX(F)F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v1

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    sub-float/2addr v0, v4

    mul-float/2addr v2, v0

    add-float/2addr v3, v2

    return v3
.end method

.method private blacklist getDiffY(F)F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v1

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    sub-float/2addr v0, v4

    mul-float/2addr v2, v0

    add-float/2addr v3, v2

    return v3
.end method

.method private blacklist getX(F)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v2, v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float v3, p1, p1

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    return v4
.end method

.method private blacklist getY(F)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v2, v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float v3, p1, p1

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    return v4
.end method


# virtual methods
.method public blacklist config(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->OVERSHOOT:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->ANTICIPATE:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->LINEAR:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->DECELERATE:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->ACCELERATE:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->STANDARD:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    nop

    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mType:F

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist get(F)F
    .locals 8

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    cmpg-float v3, v2, p1

    if-gez v3, :cond_2

    add-float/2addr v0, v1

    goto :goto_1

    :cond_2
    sub-float/2addr v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    sub-float v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v2

    add-float v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v3

    sub-float v4, v0, v1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getY(F)F

    move-result v4

    add-float v5, v0, v1

    invoke-direct {p0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getY(F)F

    move-result v5

    sub-float v6, v5, v4

    sub-float v7, p1, v2

    mul-float/2addr v6, v7

    sub-float v7, v3, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    return v6
.end method

.method public blacklist getDiff(F)F
    .locals 8

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v2

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-float v1, v3

    cmpg-float v3, v2, p1

    if-gez v3, :cond_0

    add-float/2addr v0, v1

    goto :goto_1

    :cond_0
    sub-float/2addr v0, v1

    :goto_1
    goto :goto_0

    :cond_1
    sub-float v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v2

    add-float v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v3

    sub-float v4, v0, v1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getY(F)F

    move-result v4

    add-float v5, v0, v1

    invoke-direct {p0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getY(F)F

    move-result v5

    sub-float v6, v5, v4

    sub-float v7, v3, v2

    div-float/2addr v6, v7

    return v6
.end method

.method blacklist setup(FFFF)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    return-void
.end method

.method blacklist setup([F)V
    .locals 4

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup(FFFF)V

    return-void
.end method
