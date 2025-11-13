.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ConvolutionMatrixPresets;
.super Ljava/lang/Object;
.source "ConvolutionMatrixPresets.java"


# static fields
.field public static blacklist HIGHPASS_3_FILTER:[[D

.field public static blacklist HIGHPASS_5_FILTER:[[D

.field public static blacklist HIGHPASS_FILTER_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    filled-new-array {v1, v2, v0}, [[D

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ConvolutionMatrixPresets;->HIGHPASS_3_FILTER:[[D

    const/4 v0, 0x5

    new-array v1, v0, [D

    fill-array-data v1, :array_3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    new-array v3, v0, [D

    fill-array-data v3, :array_5

    new-array v4, v0, [D

    fill-array-data v4, :array_6

    new-array v0, v0, [D

    fill-array-data v0, :array_7

    filled-new-array {v1, v2, v3, v4, v0}, [[D

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ConvolutionMatrixPresets;->HIGHPASS_5_FILTER:[[D

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ConvolutionMatrixPresets;->HIGHPASS_FILTER_CACHE:Landroid/util/SparseArray;

    return-void

    :array_0
    .array-data 8
        -0x4040000000000000L    # -0.125
        -0x4040000000000000L    # -0.125
        -0x4040000000000000L    # -0.125
    .end array-data

    :array_1
    .array-data 8
        -0x4040000000000000L    # -0.125
        0x3ff0000000000000L    # 1.0
        -0x4040000000000000L    # -0.125
    .end array-data

    :array_2
    .array-data 8
        -0x4040000000000000L    # -0.125
        -0x4040000000000000L    # -0.125
        -0x4040000000000000L    # -0.125
    .end array-data

    :array_3
    .array-data 8
        0x0
        -0x405db6db6db6db6eL    # -0.03571428571428571
        -0x405db6db6db6db6eL    # -0.03571428571428571
        -0x405db6db6db6db6eL    # -0.03571428571428571
        0x0
    .end array-data

    :array_4
    .array-data 8
        -0x405db6db6db6db6eL    # -0.03571428571428571
        0x3fbb6db6db6db6dbL    # 0.10714285714285714
        -0x403db6db6db6db6eL    # -0.14285714285714285
        0x3fbb6db6db6db6dbL    # 0.10714285714285714
        -0x405db6db6db6db6eL    # -0.03571428571428571
    .end array-data

    :array_5
    .array-data 8
        -0x405db6db6db6db6eL    # -0.03571428571428571
        -0x403db6db6db6db6eL    # -0.14285714285714285
        0x3fe2492492492492L    # 0.5714285714285714
        -0x403db6db6db6db6eL    # -0.14285714285714285
        -0x405db6db6db6db6eL    # -0.03571428571428571
    .end array-data

    :array_6
    .array-data 8
        -0x405db6db6db6db6eL    # -0.03571428571428571
        0x3fbb6db6db6db6dbL    # 0.10714285714285714
        -0x403db6db6db6db6eL    # -0.14285714285714285
        0x3fbb6db6db6db6dbL    # 0.10714285714285714
        -0x405db6db6db6db6eL    # -0.03571428571428571
    .end array-data

    :array_7
    .array-data 8
        0x0
        -0x405db6db6db6db6eL    # -0.03571428571428571
        -0x405db6db6db6db6eL    # -0.03571428571428571
        -0x405db6db6db6db6eL    # -0.03571428571428571
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist highPassFilter(I)[[D
    .locals 26

    move/from16 v0, p0

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ConvolutionMatrixPresets;->HIGHPASS_FILTER_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    div-int/lit8 v2, v0, 0x2

    new-array v3, v0, [[D

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const v8, 0x3fb33333    # 1.4f

    mul-int v9, v2, v2

    mul-int/lit8 v9, v9, 0x2

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_3

    new-array v14, v0, [D

    aput-object v14, v3, v11

    sub-int v14, v11, v2

    int-to-double v14, v14

    const/16 v16, 0x0

    move/from16 v12, v16

    :goto_1
    if-ge v12, v0, :cond_2

    sub-int v13, v12, v2

    move-object/from16 v18, v1

    move/from16 v19, v2

    int-to-double v1, v13

    mul-double v20, v1, v1

    mul-double v22, v14, v14

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    div-double v20, v20, v9

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v24, v1

    float-to-double v1, v8

    div-double v22, v22, v1

    add-double v22, v20, v22

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v1

    float-to-double v1, v8

    mul-double v22, v22, v1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    aget-object v13, v3, v11

    aput-wide v1, v13, v12

    const-wide/16 v16, 0x0

    cmpg-double v13, v1, v16

    if-gez v13, :cond_1

    add-double/2addr v4, v1

    goto :goto_2

    :cond_1
    add-double/2addr v6, v1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    goto :goto_1

    :cond_2
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v18, v1

    move/from16 v19, v2

    div-double v1, v6, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v0, :cond_6

    aget-object v12, v3, v11

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v0, :cond_5

    aget-wide v14, v12, v13

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_4

    aget-wide v14, v12, v13

    mul-double/2addr v14, v1

    aput-wide v14, v12, v13

    :cond_4
    aget-wide v14, v12, v13

    div-double/2addr v14, v6

    aput-wide v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_5
    const-wide/16 v16, 0x0

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    sget-object v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ConvolutionMatrixPresets;->HIGHPASS_FILTER_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v11, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public blacklist setAll([[DD)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const/4 v3, 0x0

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aput-wide p2, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
