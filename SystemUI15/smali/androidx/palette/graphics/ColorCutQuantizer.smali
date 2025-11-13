.class public final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;


# instance fields
.field public final mColors:[I

.field public final mFilters:[Landroidx/palette/graphics/Palette$Filter;

.field public final mHistogram:[I

.field public final mQuantizedColors:Ljava/util/List;

.field public final mTempHsl:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/palette/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroidx/palette/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;

    return-void
.end method

.method public constructor <init>([II[Landroidx/palette/graphics/Palette$Filter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [F

    iput-object v5, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    move-object/from16 v5, p3

    iput-object v5, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    const v5, 0x8000

    new-array v6, v5, [I

    iput-object v6, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    array-length v9, v1

    const/16 v10, 0x8

    if-ge v8, v9, :cond_0

    aget v9, v1, v8

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v11, v10, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v11

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v12, v10, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v12

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v9, v10, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v9

    shl-int/lit8 v10, v11, 0xa

    shl-int/lit8 v11, v12, 0x5

    or-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v1, v8

    aget v10, v6, v9

    add-int/2addr v10, v4

    aput v10, v6, v9

    add-int/2addr v8, v4

    goto :goto_0

    :cond_0
    move v1, v7

    move v8, v1

    :goto_1
    if-ge v1, v5, :cond_3

    aget v9, v6, v1

    if-lez v9, :cond_1

    shr-int/lit8 v9, v1, 0xa

    and-int/lit8 v9, v9, 0x1f

    shr-int/lit8 v11, v1, 0x5

    and-int/lit8 v11, v11, 0x1f

    and-int/lit8 v12, v1, 0x1f

    invoke-static {v9, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v9

    invoke-static {v11, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v11

    invoke-static {v12, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v12

    invoke-static {v9, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    iget-object v11, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    sget-object v12, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v12, v13, v9, v11}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    invoke-virtual {v0, v11}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    move-result v9

    if-eqz v9, :cond_1

    aput v7, v6, v1

    :cond_1
    aget v9, v6, v1

    if-lez v9, :cond_2

    add-int/2addr v8, v4

    :cond_2
    add-int/2addr v1, v4

    goto :goto_1

    :cond_3
    new-array v1, v8, [I

    iput-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    move v9, v7

    move v11, v9

    :goto_2
    if-ge v9, v5, :cond_5

    aget v12, v6, v9

    if-lez v12, :cond_4

    add-int/lit8 v12, v11, 0x1

    aput v9, v1, v11

    move v11, v12

    :cond_4
    add-int/2addr v9, v4

    goto :goto_2

    :cond_5
    if-gt v8, v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    :goto_3
    if-ge v7, v8, :cond_10

    aget v2, v1, v7

    iget-object v5, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v9, Landroidx/palette/graphics/Palette$Swatch;

    shr-int/lit8 v11, v2, 0xa

    and-int/lit8 v11, v11, 0x1f

    shr-int/lit8 v12, v2, 0x5

    and-int/lit8 v12, v12, 0x1f

    and-int/lit8 v13, v2, 0x1f

    invoke-static {v11, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v11

    invoke-static {v12, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v12

    invoke-static {v13, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    aget v2, v6, v2

    invoke-direct {v9, v11, v2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v4

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/util/PriorityQueue;

    sget-object v5, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;

    invoke-direct {v1, v2, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget-object v6, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    invoke-direct {v5, v0, v7, v6}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-ge v5, v2, :cond_c

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    if-eqz v5, :cond_c

    iget v6, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v8, v6, 0x1

    iget v9, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v8, v9

    if-le v8, v4, :cond_c

    add-int/lit8 v8, v6, 0x1

    sub-int/2addr v8, v9

    if-le v8, v4, :cond_b

    iget v8, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v11, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v8, v11

    iget v11, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v12, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v11, v12

    iget v12, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v13, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v12, v13

    if-lt v8, v11, :cond_7

    if-lt v8, v12, :cond_7

    const/4 v8, -0x3

    goto :goto_5

    :cond_7
    if-lt v11, v8, :cond_8

    if-lt v11, v12, :cond_8

    const/4 v8, -0x2

    goto :goto_5

    :cond_8
    const/4 v8, -0x1

    :goto_5
    iget-object v11, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    iget-object v12, v11, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    invoke-static {v8, v9, v6, v12}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet(III[I)V

    iget v6, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/2addr v6, v4

    invoke-static {v12, v9, v6}, Ljava/util/Arrays;->sort([III)V

    iget v6, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v8, v9, v6, v12}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet(III[I)V

    iget v6, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v6, v6, 0x2

    move v13, v7

    move v8, v9

    :goto_6
    iget v14, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v8, v14, :cond_a

    aget v15, v12, v8

    iget-object v7, v11, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    aget v7, v7, v15

    add-int/2addr v13, v7

    if-lt v13, v6, :cond_9

    sub-int/2addr v14, v4

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_7

    :cond_9
    add-int/2addr v8, v4

    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    :goto_7
    new-instance v6, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    add-int/lit8 v7, v9, 0x1

    iget v8, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v6, v11, v7, v8}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    iput v9, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-virtual {v5}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    invoke-virtual {v1, v6}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget-object v6, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    iget-object v7, v6, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    iget v8, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    iget v14, v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v8, v14, :cond_e

    aget v14, v7, v8

    iget-object v15, v6, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    aget v15, v15, v14

    add-int/2addr v11, v15

    shr-int/lit8 v16, v14, 0xa

    and-int/lit8 v16, v16, 0x1f

    mul-int v16, v16, v15

    add-int v9, v16, v9

    shr-int/lit8 v16, v14, 0x5

    and-int/lit8 v16, v16, 0x1f

    mul-int v16, v16, v15

    add-int v12, v16, v12

    and-int/lit8 v14, v14, 0x1f

    mul-int/2addr v15, v14

    add-int/2addr v13, v15

    add-int/2addr v8, v4

    goto :goto_9

    :cond_e
    int-to-float v5, v9

    int-to-float v6, v11

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v7, v12

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v8, v13

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-instance v8, Landroidx/palette/graphics/Palette$Swatch;

    invoke-static {v5, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v5

    invoke-static {v7, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v7

    invoke-static {v6, v3, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v6

    invoke-static {v5, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v8, v5, v11}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    invoke-virtual {v8}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    :cond_10
    return-void
.end method

.method public static modifySignificantOctet(III[I)V
    .locals 2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_2

    aget p0, p3, p1

    and-int/lit8 v0, p0, 0x1f

    shl-int/lit8 v0, v0, 0xa

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    aput p0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_2

    aget p0, p3, p1

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0xa

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    aput p0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static modifyWordWidth(III)I
    .locals 0

    if-le p2, p1, :cond_0

    sub-int p1, p2, p1

    shl-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    shr-int/2addr p0, p1

    :goto_0
    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public final shouldIgnoreColor([F)Z
    .locals 6

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    if-eqz p0, :cond_3

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    check-cast v3, Landroidx/palette/graphics/Palette$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    aget v3, p1, v3

    const v4, 0x3f733333    # 0.95f

    cmpl-float v4, v3, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    aget v3, p1, v0

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    const/high16 v4, 0x42140000    # 37.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    aget v3, p1, v5

    const v4, 0x3f51eb85    # 0.82f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    :goto_1
    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
