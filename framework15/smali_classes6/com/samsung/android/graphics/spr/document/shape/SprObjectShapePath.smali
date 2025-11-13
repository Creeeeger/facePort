.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;,
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;
    }
.end annotation


# static fields
.field public static final blacklist TYPE_BEZIER_CURVETO:B = 0x4t

.field public static final blacklist TYPE_CLOSE:B = 0x6t

.field public static final blacklist TYPE_ELLIPTICAL_ARC:B = 0x5t

.field public static final blacklist TYPE_LINETO:B = 0x2t

.field public static final blacklist TYPE_MOVETO:B = 0x1t

.field public static final blacklist TYPE_NONE:B = 0x0t

.field public static final blacklist TYPE_QUADRATIC_CURVETO:B = 0x3t


# instance fields
.field public final blacklist mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

.field public blacklist mPathInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist path:Landroid/graphics/Path;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private blacklist addCommand([FCC[F)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/4 v0, 0x2

    const/4 v12, 0x0

    aget v1, p1, v12

    const/4 v13, 0x1

    aget v2, p1, v13

    const/4 v14, 0x2

    aget v3, p1, v14

    const/4 v15, 0x3

    aget v4, p1, v15

    sparse-switch p3, :sswitch_data_0

    move/from16 v16, v0

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    return-void

    :sswitch_1
    const/4 v0, 0x4

    move/from16 v16, v0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    move/from16 v16, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x6

    move/from16 v16, v0

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x7

    move/from16 v16, v0

    :goto_0
    const/4 v0, 0x0

    move/from16 v9, p2

    move v8, v0

    move v7, v1

    move v6, v2

    move/from16 v17, v3

    move/from16 v18, v4

    :goto_1
    array-length v0, v11

    if-ge v8, v0, :cond_c

    const/16 v0, 0x54

    const/16 v1, 0x53

    const/16 v2, 0x51

    const/16 v3, 0x43

    const/16 v4, 0x74

    const/16 v5, 0x73

    const/16 v15, 0x71

    const/16 v14, 0x63

    const/high16 v19, 0x40000000    # 2.0f

    const/16 v20, 0x0

    sparse-switch p3, :sswitch_data_1

    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    :sswitch_6
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v6, v0

    invoke-virtual {v10, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    :sswitch_7
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eq v9, v15, :cond_0

    if-eq v9, v4, :cond_0

    if-eq v9, v2, :cond_0

    if-ne v9, v0, :cond_1

    :cond_0
    sub-float v1, v7, v17

    sub-float v3, v6, v18

    :cond_1
    add-float v0, v7, v1

    add-float v2, v6, v3

    add-int/lit8 v4, v8, 0x0

    aget v4, v11, v4

    add-float/2addr v4, v7

    add-int/lit8 v5, v8, 0x1

    aget v5, v11, v5

    add-float/2addr v5, v6

    invoke-virtual {v10, v0, v2, v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-float v0, v7, v1

    add-float v2, v6, v3

    add-int/lit8 v4, v8, 0x0

    aget v4, v11, v4

    add-float/2addr v7, v4

    add-int/lit8 v4, v8, 0x1

    aget v4, v11, v4

    add-float/2addr v6, v4

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    :sswitch_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eq v9, v14, :cond_3

    if-eq v9, v5, :cond_3

    if-eq v9, v3, :cond_3

    if-ne v9, v1, :cond_2

    goto :goto_2

    :cond_2
    move v14, v0

    move v15, v2

    goto :goto_3

    :cond_3
    :goto_2
    sub-float v0, v7, v17

    sub-float v2, v6, v18

    move v14, v0

    move v15, v2

    :goto_3
    add-float v1, v7, v14

    add-float v2, v6, v15

    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float v3, v7, v0

    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v4, v6, v0

    add-int/lit8 v0, v8, 0x2

    aget v0, v11, v0

    add-float v5, v7, v0

    add-int/lit8 v0, v8, 0x3

    aget v0, v11, v0

    add-float v19, v6, v0

    move-object/from16 v0, p0

    move v13, v6

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v13, v1

    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v7, v1

    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float/2addr v1, v13

    move/from16 v17, v0

    move/from16 v18, v6

    move/from16 v21, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_a

    :sswitch_9
    move v13, v6

    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v13, v1

    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v1, v7

    add-int/lit8 v2, v8, 0x3

    aget v2, v11, v2

    add-float/2addr v2, v13

    invoke-virtual {v10, v0, v6, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v13, v1

    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v7, v1

    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float/2addr v1, v13

    move/from16 v17, v0

    move/from16 v18, v6

    move/from16 v21, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_a

    :sswitch_a
    move v13, v6

    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v6, v13, v0

    invoke-virtual {v10, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    :sswitch_b
    move v13, v6

    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v6, v13, v0

    invoke-virtual {v10, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    :sswitch_c
    move v13, v6

    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    invoke-virtual {v10, v7, v13}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    :sswitch_d
    move v13, v6

    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float v1, v7, v0

    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v2, v13, v0

    add-int/lit8 v0, v8, 0x2

    aget v0, v11, v0

    add-float v3, v7, v0

    add-int/lit8 v0, v8, 0x3

    aget v0, v11, v0

    add-float v4, v13, v0

    add-int/lit8 v0, v8, 0x4

    aget v0, v11, v0

    add-float v5, v7, v0

    add-int/lit8 v0, v8, 0x5

    aget v0, v11, v0

    add-float v6, v13, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v0, v8, 0x2

    aget v0, v11, v0

    add-float/2addr v0, v7

    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float v6, v13, v1

    add-int/lit8 v1, v8, 0x4

    aget v1, v11, v1

    add-float/2addr v7, v1

    add-int/lit8 v1, v8, 0x5

    aget v1, v11, v1

    add-float/2addr v1, v13

    move/from16 v17, v0

    move/from16 v18, v6

    move/from16 v21, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_a

    :sswitch_e
    move v13, v6

    add-int/lit8 v0, v8, 0x5

    aget v0, v11, v0

    add-float v3, v0, v7

    add-int/lit8 v0, v8, 0x6

    aget v0, v11, v0

    add-float v4, v0, v13

    add-int/lit8 v0, v8, 0x0

    aget v5, v11, v0

    add-int/lit8 v0, v8, 0x1

    aget v6, v11, v0

    add-int/lit8 v0, v8, 0x2

    aget v14, v11, v0

    add-int/lit8 v0, v8, 0x3

    aget v0, v11, v0

    cmpl-float v0, v0, v20

    if-eqz v0, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    move v15, v12

    :goto_4
    add-int/lit8 v0, v8, 0x4

    aget v0, v11, v0

    cmpl-float v0, v0, v20

    if-eqz v0, :cond_5

    const/16 v19, 0x1

    goto :goto_5

    :cond_5
    move/from16 v19, v12

    :goto_5
    move-object/from16 v0, p0

    move v1, v7

    move v2, v13

    move v12, v7

    move v7, v14

    move/from16 v21, v8

    move v8, v15

    move v14, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    add-int/lit8 v8, v21, 0x5

    aget v0, v11, v8

    add-float v7, v12, v0

    add-int/lit8 v8, v21, 0x6

    aget v0, v11, v8

    add-float v6, v13, v0

    move v0, v7

    move v1, v6

    move/from16 v17, v0

    move/from16 v18, v1

    move v15, v14

    goto/16 :goto_a

    :sswitch_f
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v14, v9

    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    invoke-virtual {v10, v12, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    move v6, v0

    move v15, v14

    goto/16 :goto_a

    :sswitch_10
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v14, v9

    move v1, v12

    move v3, v13

    if-eq v14, v15, :cond_6

    if-eq v14, v4, :cond_6

    if-eq v14, v2, :cond_6

    if-ne v14, v0, :cond_7

    :cond_6
    mul-float v7, v12, v19

    sub-float v1, v7, v17

    mul-float v6, v13, v19

    sub-float v3, v6, v18

    :cond_7
    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v2, v11, v8

    invoke-virtual {v10, v1, v3, v0, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    move v0, v1

    move v2, v3

    add-int/lit8 v8, v21, 0x0

    aget v4, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v5, v11, v8

    move/from16 v17, v0

    move/from16 v18, v2

    move v7, v4

    move v6, v5

    move v15, v14

    goto/16 :goto_a

    :sswitch_11
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    move v0, v12

    move v2, v13

    if-eq v15, v14, :cond_9

    if-eq v15, v5, :cond_9

    if-eq v15, v3, :cond_9

    if-ne v15, v1, :cond_8

    goto :goto_6

    :cond_8
    move v7, v0

    move v8, v2

    goto :goto_7

    :cond_9
    :goto_6
    mul-float v7, v12, v19

    sub-float v0, v7, v17

    mul-float v6, v13, v19

    sub-float v2, v6, v18

    move v7, v0

    move v8, v2

    :goto_7
    add-int/lit8 v0, v21, 0x0

    aget v3, v11, v0

    add-int/lit8 v0, v21, 0x1

    aget v4, v11, v0

    add-int/lit8 v0, v21, 0x2

    aget v5, v11, v0

    add-int/lit8 v0, v21, 0x3

    aget v6, v11, v0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v0, v21, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v21, 0x1

    aget v1, v11, v1

    add-int/lit8 v2, v21, 0x2

    aget v2, v11, v2

    add-int/lit8 v3, v21, 0x3

    aget v3, v11, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move v7, v2

    move v6, v3

    goto/16 :goto_a

    :sswitch_12
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v1, v11, v8

    add-int/lit8 v8, v21, 0x2

    aget v2, v11, v8

    add-int/lit8 v8, v21, 0x3

    aget v3, v11, v8

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v1, v11, v8

    add-int/lit8 v8, v21, 0x2

    aget v2, v11, v8

    add-int/lit8 v8, v21, 0x3

    aget v3, v11, v8

    move/from16 v17, v0

    move/from16 v18, v1

    move v7, v2

    move v6, v3

    goto/16 :goto_a

    :sswitch_13
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v1, v11, v8

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    move v7, v0

    move v6, v1

    goto/16 :goto_a

    :sswitch_14
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v1, v11, v8

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    move v7, v0

    move v6, v1

    goto/16 :goto_a

    :sswitch_15
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    invoke-virtual {v10, v0, v13}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    move v7, v0

    goto/16 :goto_a

    :sswitch_16
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    add-int/lit8 v8, v21, 0x0

    aget v1, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v2, v11, v8

    add-int/lit8 v8, v21, 0x2

    aget v3, v11, v8

    add-int/lit8 v8, v21, 0x3

    aget v4, v11, v8

    add-int/lit8 v8, v21, 0x4

    aget v5, v11, v8

    add-int/lit8 v8, v21, 0x5

    aget v6, v11, v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v8, v21, 0x4

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x5

    aget v1, v11, v8

    add-int/lit8 v8, v21, 0x2

    aget v2, v11, v8

    add-int/lit8 v8, v21, 0x3

    aget v3, v11, v8

    move v7, v0

    move v6, v1

    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_a

    :sswitch_17
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    add-int/lit8 v8, v21, 0x5

    aget v3, v11, v8

    add-int/lit8 v8, v21, 0x6

    aget v4, v11, v8

    add-int/lit8 v8, v21, 0x0

    aget v5, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v6, v11, v8

    add-int/lit8 v8, v21, 0x2

    aget v7, v11, v8

    add-int/lit8 v8, v21, 0x3

    aget v0, v11, v8

    cmpl-float v0, v0, v20

    if-eqz v0, :cond_a

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v0, v21, 0x4

    aget v0, v11, v0

    cmpl-float v0, v0, v20

    if-eqz v0, :cond_b

    const/4 v9, 0x1

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    add-int/lit8 v8, v21, 0x5

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x6

    aget v1, v11, v8

    move v2, v0

    move v3, v1

    move v7, v0

    move v6, v1

    move/from16 v17, v2

    move/from16 v18, v3

    :goto_a
    move/from16 v9, p3

    add-int v8, v21, v16

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto/16 :goto_1

    :cond_c
    move v13, v6

    move v12, v7

    const/4 v0, 0x0

    aput v12, p1, v0

    const/4 v0, 0x1

    aput v13, p1, v0

    const/4 v0, 0x2

    aput v17, p1, v0

    const/4 v0, 0x3

    aput v18, p1, v0

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x56 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
        0x76 -> :sswitch_3
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_16
        0x48 -> :sswitch_15
        0x4c -> :sswitch_14
        0x4d -> :sswitch_13
        0x51 -> :sswitch_12
        0x53 -> :sswitch_11
        0x54 -> :sswitch_10
        0x56 -> :sswitch_f
        0x61 -> :sswitch_e
        0x63 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method private blacklist arcToBezier(DDDDDDDDD)V
    .locals 60

    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-wide/from16 v5, p15

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    neg-double v2, v0

    mul-double/2addr v2, v7

    mul-double/2addr v2, v13

    mul-double v17, p7, v9

    mul-double v17, v17, v11

    sub-double v2, v2, v17

    move-wide/from16 v17, v2

    neg-double v2, v0

    mul-double/2addr v2, v9

    mul-double/2addr v2, v13

    mul-double v19, p7, v7

    mul-double v19, v19, v11

    add-double v2, v2, v19

    move-wide/from16 v19, v2

    int-to-double v2, v4

    div-double v2, p17, v2

    const/16 v21, 0x0

    move-wide/from16 v23, v5

    move/from16 v15, v21

    move-wide/from16 v5, p9

    move-wide/from16 v21, v17

    move-wide/from16 v17, p11

    :goto_0
    if-ge v15, v4, :cond_0

    add-double v27, v23, v2

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    mul-double v33, v0, v7

    mul-double v33, v33, v31

    add-double v33, p1, v33

    mul-double v35, p7, v9

    mul-double v35, v35, v29

    move-wide/from16 v37, v2

    sub-double v2, v33, v35

    mul-double v33, v0, v9

    mul-double v33, v33, v31

    add-double v33, p3, v33

    mul-double v35, p7, v7

    mul-double v35, v35, v29

    move-wide/from16 v39, v11

    add-double v11, v33, v35

    move-wide/from16 v33, v13

    neg-double v13, v0

    mul-double/2addr v13, v7

    mul-double v13, v13, v29

    mul-double v35, p7, v9

    mul-double v35, v35, v31

    sub-double v13, v13, v35

    move-wide/from16 p9, v11

    neg-double v11, v0

    mul-double/2addr v11, v9

    mul-double v11, v11, v29

    mul-double v35, p7, v7

    mul-double v35, v35, v31

    add-double v11, v11, v35

    sub-double v35, v27, v23

    const-wide/high16 v41, 0x4000000000000000L    # 2.0

    div-double v35, v35, v41

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    sub-double v41, v27, v23

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sin(D)D

    move-result-wide v41

    const-wide/high16 v43, 0x4008000000000000L    # 3.0

    mul-double v45, v35, v43

    mul-double v45, v45, v35

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    add-double v45, v45, v25

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    sub-double v45, v45, v47

    mul-double v41, v41, v45

    div-double v41, v41, v43

    mul-double v43, v41, v21

    add-double v0, v5, v43

    mul-double v43, v41, v19

    move/from16 v16, v4

    move-wide/from16 p11, v5

    add-double v4, v17, v43

    mul-double v43, v41, v13

    move-wide/from16 v45, v7

    sub-double v6, v2, v43

    mul-double v43, v41, v11

    move-wide/from16 v47, v9

    move-wide/from16 v8, p9

    move-wide/from16 p9, v11

    sub-double v10, v8, v43

    double-to-float v12, v0

    move-wide/from16 v43, v0

    double-to-float v0, v4

    double-to-float v1, v6

    move-wide/from16 v56, v4

    double-to-float v4, v10

    double-to-float v5, v2

    move-wide/from16 v58, v6

    double-to-float v6, v8

    move-object/from16 v49, p0

    move/from16 v50, v12

    move/from16 v51, v0

    move/from16 v52, v1

    move/from16 v53, v4

    move/from16 v54, v5

    move/from16 v55, v6

    invoke-virtual/range {v49 .. v55}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    move-wide/from16 v23, v27

    move-wide v5, v2

    move-wide/from16 v17, v8

    move-wide/from16 v21, v13

    move-wide/from16 v19, p9

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, p5

    move/from16 v4, v16

    move-wide/from16 v13, v33

    move-wide/from16 v2, v37

    move-wide/from16 v11, v39

    move-wide/from16 v7, v45

    move-wide/from16 v9, v47

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private blacklist createNodesFromPathData(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x6d

    const/4 v3, 0x4

    new-array v3, v3, [F

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->nextStart(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->getFloats(Ljava/lang/String;)[F

    move-result-object v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v3, v2, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_1
    move v0, v1

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int v4, v1, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-array v5, v5, [F

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    :cond_3
    return-void
.end method

.method private blacklist drawArc(FFFFFFFZZ)V
    .locals 73

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p9

    move/from16 v8, p7

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    float-to-double v0, v10

    mul-double v0, v0, v37

    float-to-double v2, v11

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v41, v0, v2

    neg-float v0, v10

    float-to-double v0, v0

    mul-double v0, v0, v39

    float-to-double v2, v11

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v43, v0, v2

    float-to-double v0, v12

    mul-double v0, v0, v37

    float-to-double v2, v13

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v45, v0, v2

    neg-float v0, v12

    float-to-double v0, v0

    mul-double v0, v0, v39

    float-to-double v2, v13

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v47, v0, v2

    sub-double v49, v41, v45

    sub-double v51, v43, v47

    add-double v0, v41, v45

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v53, v0, v2

    add-double v0, v43, v47

    div-double v55, v0, v2

    mul-double v0, v49, v49

    mul-double v2, v51, v51

    add-double v57, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v2, v57, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, v57

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    sub-double v59, v2, v4

    cmpg-double v2, v59, v0

    if-gez v2, :cond_1

    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v7, v0

    mul-float v5, v14, v7

    mul-float v6, v15, v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v16, v7

    move/from16 v7, p7

    move/from16 v8, p8

    move v12, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    return-void

    :cond_1
    move v12, v9

    invoke-static/range {v59 .. v60}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v4, v2, v49

    mul-double v6, v2, v51

    move/from16 v8, p8

    if-ne v8, v12, :cond_2

    sub-double v16, v53, v6

    add-double v18, v55, v4

    goto :goto_0

    :cond_2
    add-double v16, v53, v6

    sub-double v18, v55, v4

    :goto_0
    sub-double v0, v43, v18

    move-wide/from16 v61, v2

    sub-double v2, v41, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v2, v47, v18

    move-wide/from16 v63, v4

    sub-double v4, v45, v16

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double v4, v2, v0

    const-wide/16 v20, 0x0

    cmpl-double v9, v4, v20

    if-ltz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v12, v9, :cond_5

    cmpl-double v9, v4, v20

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v9, :cond_4

    sub-double v4, v4, v20

    goto :goto_2

    :cond_4
    add-double v4, v4, v20

    :cond_5
    :goto_2
    move-wide/from16 v65, v2

    float-to-double v2, v14

    mul-double v16, v16, v2

    float-to-double v2, v15

    mul-double v2, v2, v18

    move-wide/from16 v67, v16

    mul-double v18, v16, v37

    mul-double v20, v2, v39

    sub-double v69, v18, v20

    move-wide/from16 v17, v69

    mul-double v19, v67, v39

    mul-double v21, v2, v37

    add-double v2, v19, v21

    move-wide/from16 v19, v2

    move-wide/from16 v71, v2

    float-to-double v2, v14

    move-wide/from16 v21, v2

    float-to-double v2, v15

    move-wide/from16 v23, v2

    float-to-double v2, v10

    move-wide/from16 v25, v2

    float-to-double v2, v11

    move-wide/from16 v27, v2

    move-object/from16 v16, p0

    move-wide/from16 v29, v35

    move-wide/from16 v31, v0

    move-wide/from16 v33, v4

    invoke-direct/range {v16 .. v34}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcToBezier(DDDDDDDDD)V

    return-void
.end method

.method private blacklist drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V
    .locals 11

    iget-byte v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v6, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v7, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v8, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget v9, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v10, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    nop

    :goto_0
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

.method private blacklist extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V
    .locals 4

    move v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-eq v0, p2, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x1

    nop

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iput v0, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x2c -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getFloats(Ljava/lang/String;)[F
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;-><init>(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult-IA;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    if-ge v2, v5, :cond_3

    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    move v3, v6

    if-ge v2, v3, :cond_1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v0, v1

    move v1, v6

    :cond_1
    iget-boolean v6, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v6, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    throw v0

    :cond_4
    :goto_1
    new-array v0, v0, [F

    return-object v0
.end method

.method private blacklist nextStart(Ljava/lang/String;I)I
    .locals 3

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_1

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p2

    :cond_2
    return p2
.end method


# virtual methods
.method public blacklist arcTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist close()V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist cubicTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 3

    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->alpha:F

    mul-float/2addr v0, p5

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->setShadowLayer()V

    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleFill:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleStroke:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public blacklist drawPath()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v10

    move v11, v6

    move v12, v8

    move v13, v9

    move v8, v4

    move v9, v5

    :goto_0
    if-ge v13, v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v14

    packed-switch v14, :pswitch_data_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported command type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v17, v0, v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v18, v0, v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcTo(FFFFFF)V

    move v0, v15

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v9

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v8

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    move v0, v15

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v5

    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    move v8, v4

    move v9, v5

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    nop

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void

    nop

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

.method public blacklist fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_22

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_e

    :cond_0
    const-string v4, "strokeWidth"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_2
    const-string v4, "strokeOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    const/16 v6, 0x23

    const v7, 0xffffff

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v10, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v10, v6, :cond_3

    move-object v4, v9

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object v4, v6

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    and-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x18

    or-int/2addr v6, v7

    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto/16 :goto_e

    :cond_6
    const-string v4, "strokeColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v8, 0x10

    const/high16 v9, -0x10000

    const-string v10, "#"

    const/4 v11, 0x1

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v13, v12, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v13, v6, :cond_7

    move-object v4, v12

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    goto :goto_4

    :cond_7
    goto :goto_3

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object v4, v5

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto :goto_5

    :cond_a
    iput v9, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    :goto_5
    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    and-int/2addr v6, v7

    not-int v6, v6

    or-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto/16 :goto_e

    :cond_b
    const-string v4, "fillColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x20

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v12, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v12, v6, :cond_c

    move-object v4, v7

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    goto :goto_7

    :cond_c
    goto :goto_6

    :cond_d
    :goto_7
    if-nez v4, :cond_e

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object v4, v5

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto :goto_8

    :cond_f
    iput v9, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    :goto_8
    goto/16 :goto_e

    :cond_10
    const-string v4, "fillOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v10, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v10, v6, :cond_11

    move-object v4, v9

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    goto :goto_a

    :cond_11
    goto :goto_9

    :cond_12
    :goto_a
    if-nez v4, :cond_13

    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object v4, v6

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    and-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x18

    or-int/2addr v6, v7

    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto/16 :goto_e

    :cond_14
    const-string v4, "pathData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-direct {p0, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->createNodesFromPathData(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_15
    const-string v4, "trimPathStart"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto/16 :goto_e

    :cond_16
    const-string v4, "trimPathEnd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_e

    :cond_17
    const-string v4, "trimPathOffset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_e

    :cond_18
    const-string v4, "strokeLineCap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "round"

    if-eqz v4, :cond_1c

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>()V

    const-string v6, "butt"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_b

    :cond_19
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_ROUND:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_b

    :cond_1a
    const-string v5, "square"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_SQUARE:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    :cond_1b
    :goto_b
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    const-string v4, "strokeLineJoin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>()V

    const-string v6, "miter"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_c

    :cond_1d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_ROUND:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_c

    :cond_1e
    const-string v5, "bevel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_BEVEL:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    :cond_1f
    :goto_c
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_20
    const-string v4, "strokeMiterLimit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_21
    :goto_d
    nop

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_22
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x18

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x18

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    :pswitch_3
    add-int/lit8 v0, v0, 0x8

    nop

    :goto_1
    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getTotalElementCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTotalSegmentCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist lineTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist moveTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist quadTo(FFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :pswitch_1
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :pswitch_2
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :pswitch_3
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    nop

    :goto_1
    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
