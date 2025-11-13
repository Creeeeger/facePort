.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;,
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
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

    .line 70
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    .line 81
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    .line 92
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 95
    return-void
.end method

.method private blacklist addCommand([FCC[F)V
    .locals 22
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .line 664
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/4 v0, 0x2

    .line 665
    .local v0, "incr":I
    const/4 v12, 0x0

    aget v1, p1, v12

    .line 666
    .local v1, "currentX":F
    const/4 v13, 0x1

    aget v2, p1, v13

    .line 667
    .local v2, "currentY":F
    const/4 v14, 0x2

    aget v3, p1, v14

    .line 668
    .local v3, "ctrlPointX":F
    const/4 v15, 0x3

    aget v4, p1, v15

    .line 672
    .local v4, "ctrlPointY":F
    sparse-switch p3, :sswitch_data_0

    move/from16 v16, v0

    goto :goto_0

    .line 675
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    .line 676
    return-void

    .line 699
    :sswitch_1
    const/4 v0, 0x4

    .line 700
    move/from16 v16, v0

    goto :goto_0

    .line 683
    :sswitch_2
    const/4 v0, 0x2

    .line 684
    move/from16 v16, v0

    goto :goto_0

    .line 689
    :sswitch_3
    const/4 v0, 0x1

    .line 690
    move/from16 v16, v0

    goto :goto_0

    .line 693
    :sswitch_4
    const/4 v0, 0x6

    .line 694
    move/from16 v16, v0

    goto :goto_0

    .line 703
    :sswitch_5
    const/4 v0, 0x7

    move/from16 v16, v0

    .line 706
    .end local v0    # "incr":I
    .local v16, "incr":I
    :goto_0
    const/4 v0, 0x0

    move/from16 v9, p2

    move v8, v0

    move v7, v1

    move v6, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .end local v3    # "ctrlPointX":F
    .end local v4    # "ctrlPointY":F
    .end local p2    # "previousCmd":C
    .local v6, "currentY":F
    .local v7, "currentX":F
    .local v8, "k":I
    .local v9, "previousCmd":C
    .local v17, "ctrlPointX":F
    .local v18, "ctrlPointY":F
    :goto_1
    array-length v0, v11

    if-ge v8, v0, :cond_c

    .line 707
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

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .local v12, "currentX":F
    .local v13, "currentY":F
    .local v15, "previousCmd":C
    .local v21, "k":I
    goto/16 :goto_a

    .line 740
    .end local v12    # "currentX":F
    .end local v13    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    :sswitch_6
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v6, v0

    .line 741
    invoke-virtual {v10, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    .line 742
    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    .line 806
    :sswitch_7
    const/4 v1, 0x0

    .line 807
    .local v1, "reflectiveCtrlPointX":F
    const/4 v3, 0x0

    .line 808
    .local v3, "reflectiveCtrlPointY":F
    if-eq v9, v15, :cond_0

    if-eq v9, v4, :cond_0

    if-eq v9, v2, :cond_0

    if-ne v9, v0, :cond_1

    .line 809
    :cond_0
    sub-float v1, v7, v17

    .line 810
    sub-float v3, v6, v18

    .line 812
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

    .line 814
    add-float v0, v7, v1

    .line 815
    .end local v17    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-float v2, v6, v3

    .line 816
    .end local v18    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v4, v8, 0x0

    aget v4, v11, v4

    add-float/2addr v7, v4

    .line 817
    add-int/lit8 v4, v8, 0x1

    aget v4, v11, v4

    add-float/2addr v6, v4

    .line 818
    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    .line 764
    .end local v0    # "ctrlPointX":F
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "reflectiveCtrlPointY":F
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_8
    const/4 v0, 0x0

    .line 765
    .local v0, "reflectiveCtrlPointX":F
    const/4 v2, 0x0

    .line 766
    .local v2, "reflectiveCtrlPointY":F
    if-eq v9, v14, :cond_3

    if-eq v9, v5, :cond_3

    if-eq v9, v3, :cond_3

    if-ne v9, v1, :cond_2

    goto :goto_2

    :cond_2
    move v14, v0

    move v15, v2

    goto :goto_3

    .line 767
    :cond_3
    :goto_2
    sub-float v0, v7, v17

    .line 768
    sub-float v2, v6, v18

    move v14, v0

    move v15, v2

    .line 770
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .local v14, "reflectiveCtrlPointX":F
    .local v15, "reflectiveCtrlPointY":F
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

    .end local v6    # "currentY":F
    .restart local v13    # "currentY":F
    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    .line 773
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 774
    .end local v17    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v13, v1

    .line 775
    .end local v18    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 776
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float/2addr v1, v13

    .line 777
    .end local v13    # "currentY":F
    .local v1, "currentY":F
    move/from16 v17, v0

    move/from16 v18, v6

    move/from16 v21, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_a

    .line 792
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .end local v14    # "reflectiveCtrlPointX":F
    .end local v15    # "reflectiveCtrlPointY":F
    .local v6, "currentY":F
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_9
    move v13, v6

    .end local v6    # "currentY":F
    .restart local v13    # "currentY":F
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

    .line 793
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 794
    .end local v17    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v13, v1

    .line 795
    .end local v18    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 796
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float/2addr v1, v13

    .line 797
    .end local v13    # "currentY":F
    .restart local v1    # "currentY":F
    move/from16 v17, v0

    move/from16 v18, v6

    move/from16 v21, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_a

    .line 709
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .local v6, "currentY":F
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_a
    move v13, v6

    .end local v6    # "currentY":F
    .restart local v13    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 710
    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v6, v13, v0

    .line 712
    .end local v13    # "currentY":F
    .restart local v6    # "currentY":F
    invoke-virtual {v10, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    .line 713
    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    .line 721
    :sswitch_b
    move v13, v6

    .end local v6    # "currentY":F
    .restart local v13    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 722
    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v6, v13, v0

    .line 723
    .end local v13    # "currentY":F
    .restart local v6    # "currentY":F
    invoke-virtual {v10, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    .line 724
    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    .line 732
    :sswitch_c
    move v13, v6

    .end local v6    # "currentY":F
    .restart local v13    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 733
    invoke-virtual {v10, v7, v13}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    .line 734
    move/from16 v21, v8

    move v15, v9

    goto/16 :goto_a

    .line 748
    .end local v13    # "currentY":F
    .restart local v6    # "currentY":F
    :sswitch_d
    move v13, v6

    .end local v6    # "currentY":F
    .restart local v13    # "currentY":F
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

    .line 750
    add-int/lit8 v0, v8, 0x2

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 751
    .end local v17    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float v6, v13, v1

    .line 752
    .end local v18    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x4

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 753
    add-int/lit8 v1, v8, 0x5

    aget v1, v11, v1

    add-float/2addr v1, v13

    .line 755
    .end local v13    # "currentY":F
    .restart local v1    # "currentY":F
    move/from16 v17, v0

    move/from16 v18, v6

    move/from16 v21, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_a

    .line 834
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .local v6, "currentY":F
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_e
    move v13, v6

    .end local v6    # "currentY":F
    .restart local v13    # "currentY":F
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

    .end local v7    # "currentX":F
    .restart local v12    # "currentX":F
    move v7, v14

    move/from16 v21, v8

    .end local v8    # "k":I
    .restart local v21    # "k":I
    move v8, v15

    move v14, v9

    .end local v9    # "previousCmd":C
    .local v14, "previousCmd":C
    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    .line 836
    add-int/lit8 v8, v21, 0x5

    aget v0, v11, v8

    add-float v7, v12, v0

    .line 837
    .end local v12    # "currentX":F
    .restart local v7    # "currentX":F
    add-int/lit8 v8, v21, 0x6

    aget v0, v11, v8

    add-float v6, v13, v0

    .line 838
    .end local v13    # "currentY":F
    .restart local v6    # "currentY":F
    move v0, v7

    .line 839
    .end local v17    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    move v1, v6

    .line 840
    .end local v18    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    move/from16 v17, v0

    move/from16 v18, v1

    move v15, v14

    goto/16 :goto_a

    .line 744
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_f
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v14, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v21    # "k":I
    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    .line 745
    .end local v13    # "currentY":F
    .local v0, "currentY":F
    invoke-virtual {v10, v12, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    .line 746
    move v6, v0

    move v15, v14

    goto/16 :goto_a

    .line 820
    .end local v0    # "currentY":F
    .end local v12    # "currentX":F
    .end local v14    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    :sswitch_10
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v14, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v21    # "k":I
    move v1, v12

    .line 821
    .local v1, "reflectiveCtrlPointX":F
    move v3, v13

    .line 822
    .restart local v3    # "reflectiveCtrlPointY":F
    if-eq v14, v15, :cond_6

    if-eq v14, v4, :cond_6

    if-eq v14, v2, :cond_6

    if-ne v14, v0, :cond_7

    .line 823
    :cond_6
    mul-float v7, v12, v19

    sub-float v1, v7, v17

    .line 824
    mul-float v6, v13, v19

    sub-float v3, v6, v18

    .line 826
    :cond_7
    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v2, v11, v8

    invoke-virtual {v10, v1, v3, v0, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    .line 827
    move v0, v1

    .line 828
    .end local v17    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    move v2, v3

    .line 829
    .end local v18    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v8, v21, 0x0

    aget v4, v11, v8

    .line 830
    .end local v12    # "currentX":F
    .local v4, "currentX":F
    add-int/lit8 v8, v21, 0x1

    aget v5, v11, v8

    .line 831
    .end local v13    # "currentY":F
    .local v5, "currentY":F
    move/from16 v17, v0

    move/from16 v18, v2

    move v7, v4

    move v6, v5

    move v15, v14

    goto/16 :goto_a

    .line 779
    .end local v0    # "ctrlPointX":F
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "reflectiveCtrlPointY":F
    .end local v4    # "currentX":F
    .end local v5    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_11
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .local v15, "previousCmd":C
    .restart local v21    # "k":I
    move v0, v12

    .line 780
    .local v0, "reflectiveCtrlPointX":F
    move v2, v13

    .line 781
    .local v2, "reflectiveCtrlPointY":F
    if-eq v15, v14, :cond_9

    if-eq v15, v5, :cond_9

    if-eq v15, v3, :cond_9

    if-ne v15, v1, :cond_8

    goto :goto_6

    :cond_8
    move v7, v0

    move v8, v2

    goto :goto_7

    .line 782
    :cond_9
    :goto_6
    mul-float v7, v12, v19

    sub-float v0, v7, v17

    .line 783
    mul-float v6, v13, v19

    sub-float v2, v6, v18

    move v7, v0

    move v8, v2

    .line 785
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .local v7, "reflectiveCtrlPointX":F
    .local v8, "reflectiveCtrlPointY":F
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

    .line 786
    add-int/lit8 v0, v21, 0x0

    aget v0, v11, v0

    .line 787
    .end local v17    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v21, 0x1

    aget v1, v11, v1

    .line 788
    .end local v18    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v2, v21, 0x2

    aget v2, v11, v2

    .line 789
    .end local v12    # "currentX":F
    .local v2, "currentX":F
    add-int/lit8 v3, v21, 0x3

    aget v3, v11, v3

    .line 790
    .end local v13    # "currentY":F
    .local v3, "currentY":F
    move/from16 v17, v0

    move/from16 v18, v1

    move v7, v2

    move v6, v3

    goto/16 :goto_a

    .line 799
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v2    # "currentX":F
    .end local v3    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .local v7, "currentX":F
    .local v8, "k":I
    .restart local v9    # "previousCmd":C
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_12
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v21    # "k":I
    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v21, 0x1

    aget v1, v11, v8

    add-int/lit8 v8, v21, 0x2

    aget v2, v11, v8

    add-int/lit8 v8, v21, 0x3

    aget v3, v11, v8

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    .line 800
    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    .line 801
    .end local v17    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v8, v21, 0x1

    aget v1, v11, v8

    .line 802
    .end local v18    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    add-int/lit8 v8, v21, 0x2

    aget v2, v11, v8

    .line 803
    .end local v12    # "currentX":F
    .restart local v2    # "currentX":F
    add-int/lit8 v8, v21, 0x3

    aget v3, v11, v8

    .line 804
    .end local v13    # "currentY":F
    .restart local v3    # "currentY":F
    move/from16 v17, v0

    move/from16 v18, v1

    move v7, v2

    move v6, v3

    goto/16 :goto_a

    .line 715
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v2    # "currentX":F
    .end local v3    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_13
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v21    # "k":I
    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    .line 716
    .end local v12    # "currentX":F
    .local v0, "currentX":F
    add-int/lit8 v8, v21, 0x1

    aget v1, v11, v8

    .line 718
    .end local v13    # "currentY":F
    .local v1, "currentY":F
    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    .line 719
    move v7, v0

    move v6, v1

    goto/16 :goto_a

    .line 726
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    :sswitch_14
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v21    # "k":I
    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    .line 727
    .end local v12    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v21, 0x1

    aget v1, v11, v8

    .line 728
    .end local v13    # "currentY":F
    .restart local v1    # "currentY":F
    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    .line 729
    move v7, v0

    move v6, v1

    goto/16 :goto_a

    .line 736
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    :sswitch_15
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v21    # "k":I
    add-int/lit8 v8, v21, 0x0

    aget v0, v11, v8

    .line 737
    .end local v12    # "currentX":F
    .restart local v0    # "currentX":F
    invoke-virtual {v10, v0, v13}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    .line 738
    move v7, v0

    goto/16 :goto_a

    .line 757
    .end local v0    # "currentX":F
    .end local v13    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    :sswitch_16
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v21    # "k":I
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

    .line 758
    add-int/lit8 v8, v21, 0x4

    aget v0, v11, v8

    .line 759
    .end local v12    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v21, 0x5

    aget v1, v11, v8

    .line 760
    .end local v13    # "currentY":F
    .restart local v1    # "currentY":F
    add-int/lit8 v8, v21, 0x2

    aget v2, v11, v8

    .line 761
    .end local v17    # "ctrlPointX":F
    .local v2, "ctrlPointX":F
    add-int/lit8 v8, v21, 0x3

    aget v3, v11, v8

    .line 762
    .end local v18    # "ctrlPointY":F
    .local v3, "ctrlPointY":F
    move v7, v0

    move v6, v1

    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_a

    .line 842
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "ctrlPointX":F
    .end local v3    # "ctrlPointY":F
    .end local v15    # "previousCmd":C
    .end local v21    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    .restart local v17    # "ctrlPointX":F
    .restart local v18    # "ctrlPointY":F
    :sswitch_17
    move v13, v6

    move v12, v7

    move/from16 v21, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v21    # "k":I
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

    .line 844
    add-int/lit8 v8, v21, 0x5

    aget v0, v11, v8

    .line 845
    .end local v12    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v21, 0x6

    aget v1, v11, v8

    .line 846
    .end local v13    # "currentY":F
    .restart local v1    # "currentY":F
    move v2, v0

    .line 847
    .end local v17    # "ctrlPointX":F
    .restart local v2    # "ctrlPointX":F
    move v3, v1

    move v7, v0

    move v6, v1

    move/from16 v17, v2

    move/from16 v18, v3

    .line 850
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "ctrlPointX":F
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v17    # "ctrlPointX":F
    :goto_a
    move/from16 v9, p3

    .line 706
    .end local v15    # "previousCmd":C
    .restart local v9    # "previousCmd":C
    add-int v8, v21, v16

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x3

    .end local v21    # "k":I
    .restart local v8    # "k":I
    goto/16 :goto_1

    :cond_c
    move v13, v6

    move v12, v7

    .line 852
    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .restart local v12    # "currentX":F
    .restart local v13    # "currentY":F
    const/4 v0, 0x0

    aput v12, p1, v0

    .line 853
    const/4 v0, 0x1

    aput v13, p1, v0

    .line 854
    const/4 v0, 0x2

    aput v17, p1, v0

    .line 855
    const/4 v0, 0x3

    aput v18, p1, v0

    .line 856
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
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .line 954
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

    .line 956
    .local v4, "numSegments":I
    move-wide/from16 v5, p15

    .line 957
    .local v5, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 958
    .local v7, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 959
    .local v9, "sinTheta":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 960
    .local v11, "cosEta1":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 961
    .local v13, "sinEta1":D
    neg-double v2, v0

    mul-double/2addr v2, v7

    mul-double/2addr v2, v13

    mul-double v17, p7, v9

    mul-double v17, v17, v11

    sub-double v2, v2, v17

    .line 962
    .local v2, "ep1x":D
    move-wide/from16 v17, v2

    .end local v2    # "ep1x":D
    .local v17, "ep1x":D
    neg-double v2, v0

    mul-double/2addr v2, v9

    mul-double/2addr v2, v13

    mul-double v19, p7, v7

    mul-double v19, v19, v11

    add-double v2, v2, v19

    .line 964
    .local v2, "ep1y":D
    move-wide/from16 v19, v2

    .end local v2    # "ep1y":D
    .local v19, "ep1y":D
    int-to-double v2, v4

    div-double v2, p17, v2

    .line 965
    .local v2, "anglePerSegment":D
    const/16 v21, 0x0

    move-wide/from16 v23, v5

    move/from16 v15, v21

    move-wide/from16 v5, p9

    move-wide/from16 v21, v17

    move-wide/from16 v17, p11

    .end local p9    # "e1x":D
    .end local p11    # "e1y":D
    .local v5, "e1x":D
    .local v15, "i":I
    .local v17, "e1y":D
    .local v21, "ep1x":D
    .local v23, "eta1":D
    :goto_0
    if-ge v15, v4, :cond_0

    .line 966
    add-double v27, v23, v2

    .line 967
    .local v27, "eta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    .line 968
    .local v29, "sinEta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 969
    .local v31, "cosEta2":D
    mul-double v33, v0, v7

    mul-double v33, v33, v31

    add-double v33, p1, v33

    mul-double v35, p7, v9

    mul-double v35, v35, v29

    move-wide/from16 v37, v2

    .end local v2    # "anglePerSegment":D
    .local v37, "anglePerSegment":D
    sub-double v2, v33, v35

    .line 970
    .local v2, "e2x":D
    mul-double v33, v0, v9

    mul-double v33, v33, v31

    add-double v33, p3, v33

    mul-double v35, p7, v7

    mul-double v35, v35, v29

    move-wide/from16 v39, v11

    .end local v11    # "cosEta1":D
    .local v39, "cosEta1":D
    add-double v11, v33, v35

    .line 971
    .local v11, "e2y":D
    move-wide/from16 v33, v13

    .end local v13    # "sinEta1":D
    .local v33, "sinEta1":D
    neg-double v13, v0

    mul-double/2addr v13, v7

    mul-double v13, v13, v29

    mul-double v35, p7, v9

    mul-double v35, v35, v31

    sub-double v13, v13, v35

    .line 972
    .local v13, "ep2x":D
    move-wide/from16 p9, v11

    .end local v11    # "e2y":D
    .local p9, "e2y":D
    neg-double v11, v0

    mul-double/2addr v11, v9

    mul-double v11, v11, v29

    mul-double v35, p7, v7

    mul-double v35, v35, v31

    add-double v11, v11, v35

    .line 973
    .local v11, "ep2y":D
    sub-double v35, v27, v23

    const-wide/high16 v41, 0x4000000000000000L    # 2.0

    div-double v35, v35, v41

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    .line 974
    .local v35, "tanDiff2":D
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

    .line 975
    .local v41, "alpha":D
    mul-double v43, v41, v21

    add-double v0, v5, v43

    .line 976
    .local v0, "q1x":D
    mul-double v43, v41, v19

    move/from16 v16, v4

    move-wide/from16 p11, v5

    .end local v4    # "numSegments":I
    .end local v5    # "e1x":D
    .local v16, "numSegments":I
    .local p11, "e1x":D
    add-double v4, v17, v43

    .line 977
    .local v4, "q1y":D
    mul-double v43, v41, v13

    move-wide/from16 v45, v7

    .end local v7    # "cosTheta":D
    .local v45, "cosTheta":D
    sub-double v6, v2, v43

    .line 978
    .local v6, "q2x":D
    mul-double v43, v41, v11

    move-wide/from16 v47, v9

    move-wide/from16 v8, p9

    move-wide/from16 p9, v11

    .end local v9    # "sinTheta":D
    .end local v11    # "ep2y":D
    .local v8, "e2y":D
    .local v47, "sinTheta":D
    .local p9, "ep2y":D
    sub-double v10, v8, v43

    .line 980
    .local v10, "q2y":D
    double-to-float v12, v0

    move-wide/from16 v43, v0

    .end local v0    # "q1x":D
    .local v43, "q1x":D
    double-to-float v0, v4

    double-to-float v1, v6

    move-wide/from16 v56, v4

    .end local v4    # "q1y":D
    .local v56, "q1y":D
    double-to-float v4, v10

    double-to-float v5, v2

    move-wide/from16 v58, v6

    .end local v6    # "q2x":D
    .local v58, "q2x":D
    double-to-float v6, v8

    move-object/from16 v49, p0

    move/from16 v50, v12

    move/from16 v51, v0

    move/from16 v52, v1

    move/from16 v53, v4

    move/from16 v54, v5

    move/from16 v55, v6

    invoke-virtual/range {v49 .. v55}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    .line 981
    move-wide/from16 v23, v27

    .line 982
    move-wide v5, v2

    .line 983
    .end local p11    # "e1x":D
    .restart local v5    # "e1x":D
    move-wide/from16 v17, v8

    .line 984
    move-wide/from16 v21, v13

    .line 985
    move-wide/from16 v19, p9

    .line 965
    .end local v2    # "e2x":D
    .end local v8    # "e2y":D
    .end local v10    # "q2y":D
    .end local v13    # "ep2x":D
    .end local v27    # "eta2":D
    .end local v29    # "sinEta2":D
    .end local v31    # "cosEta2":D
    .end local v35    # "tanDiff2":D
    .end local v41    # "alpha":D
    .end local v43    # "q1x":D
    .end local v56    # "q1y":D
    .end local v58    # "q2x":D
    .end local p9    # "ep2y":D
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, p5

    move/from16 v4, v16

    move-wide/from16 v13, v33

    move-wide/from16 v2, v37

    move-wide/from16 v11, v39

    move-wide/from16 v7, v45

    move-wide/from16 v9, v47

    goto/16 :goto_0

    .line 987
    .end local v15    # "i":I
    .end local v16    # "numSegments":I
    .end local v33    # "sinEta1":D
    .end local v37    # "anglePerSegment":D
    .end local v39    # "cosEta1":D
    .end local v45    # "cosTheta":D
    .end local v47    # "sinTheta":D
    .local v2, "anglePerSegment":D
    .local v4, "numSegments":I
    .restart local v7    # "cosTheta":D
    .restart local v9    # "sinTheta":D
    .local v11, "cosEta1":D
    .local v13, "sinEta1":D
    :cond_0
    return-void
.end method

.method private blacklist createNodesFromPathData(Ljava/lang/String;)V
    .locals 8
    .param p1, "pathData"    # Ljava/lang/String;

    .line 532
    if-nez p1, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    .line 536
    .local v0, "start":I
    const/4 v1, 0x1

    .line 538
    .local v1, "end":I
    const/16 v2, 0x6d

    .line 539
    .local v2, "previousCmd":C
    const/4 v3, 0x4

    new-array v3, v3, [F

    .line 541
    .local v3, "current":[F
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_2

    .line 542
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->nextStart(Ljava/lang/String;I)I

    move-result v1

    .line 543
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 545
    invoke-direct {p0, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->getFloats(Ljava/lang/String;)[F

    move-result-object v6

    .line 546
    .local v6, "val":[F
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v3, v2, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    .line 547
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 550
    .end local v6    # "val":[F
    :cond_1
    move v0, v1

    .line 551
    nop

    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 552
    goto :goto_0

    .line 553
    :cond_2
    sub-int v4, v1, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-array v5, v5, [F

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    .line 556
    :cond_3
    return-void
.end method

.method private blacklist drawArc(FFFFFFFZZ)V
    .locals 73
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .line 862
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

    .line 864
    .local v35, "thetaD":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    .line 865
    .local v37, "cosTheta":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    .line 868
    .local v39, "sinTheta":D
    float-to-double v0, v10

    mul-double v0, v0, v37

    float-to-double v2, v11

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v41, v0, v2

    .line 869
    .local v41, "x0p":D
    neg-float v0, v10

    float-to-double v0, v0

    mul-double v0, v0, v39

    float-to-double v2, v11

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v43, v0, v2

    .line 870
    .local v43, "y0p":D
    float-to-double v0, v12

    mul-double v0, v0, v37

    float-to-double v2, v13

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v45, v0, v2

    .line 871
    .local v45, "x1p":D
    neg-float v0, v12

    float-to-double v0, v0

    mul-double v0, v0, v39

    float-to-double v2, v13

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v47, v0, v2

    .line 874
    .local v47, "y1p":D
    sub-double v49, v41, v45

    .line 875
    .local v49, "dx":D
    sub-double v51, v43, v47

    .line 876
    .local v51, "dy":D
    add-double v0, v41, v45

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v53, v0, v2

    .line 877
    .local v53, "xm":D
    add-double v0, v43, v47

    div-double v55, v0, v2

    .line 879
    .local v55, "ym":D
    mul-double v0, v49, v49

    mul-double v2, v51, v51

    add-double v57, v0, v2

    .line 880
    .local v57, "dsq":D
    const-wide/16 v0, 0x0

    cmpl-double v2, v57, v0

    if-nez v2, :cond_0

    .line 881
    return-void

    .line 883
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, v57

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    sub-double v59, v2, v4

    .line 884
    .local v59, "disc":D
    cmpg-double v2, v59, v0

    if-gez v2, :cond_1

    .line 885
    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v7, v0

    .line 886
    .local v7, "adjust":F
    mul-float v5, v14, v7

    mul-float v6, v15, v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v16, v7

    .end local v7    # "adjust":F
    .local v16, "adjust":F
    move/from16 v7, p7

    move/from16 v8, p8

    move v12, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    .line 887
    return-void

    .line 889
    .end local v16    # "adjust":F
    :cond_1
    move v12, v9

    invoke-static/range {v59 .. v60}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 890
    .local v2, "s":D
    mul-double v4, v2, v49

    .line 891
    .local v4, "sdx":D
    mul-double v6, v2, v51

    .line 894
    .local v6, "sdy":D
    move/from16 v8, p8

    if-ne v8, v12, :cond_2

    .line 895
    sub-double v16, v53, v6

    .line 896
    .local v16, "cx":D
    add-double v18, v55, v4

    .local v18, "cy":D
    goto :goto_0

    .line 898
    .end local v16    # "cx":D
    .end local v18    # "cy":D
    :cond_2
    add-double v16, v53, v6

    .line 899
    .restart local v16    # "cx":D
    sub-double v18, v55, v4

    .line 902
    .restart local v18    # "cy":D
    :goto_0
    sub-double v0, v43, v18

    move-wide/from16 v61, v2

    .end local v2    # "s":D
    .local v61, "s":D
    sub-double v2, v41, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 904
    .local v0, "eta0":D
    sub-double v2, v47, v18

    move-wide/from16 v63, v4

    .end local v4    # "sdx":D
    .local v63, "sdx":D
    sub-double v4, v45, v16

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 906
    .local v2, "eta1":D
    sub-double v4, v2, v0

    .line 907
    .local v4, "sweep":D
    const-wide/16 v20, 0x0

    cmpl-double v9, v4, v20

    if-ltz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v12, v9, :cond_5

    .line 908
    cmpl-double v9, v4, v20

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v9, :cond_4

    .line 909
    sub-double v4, v4, v20

    goto :goto_2

    .line 911
    :cond_4
    add-double v4, v4, v20

    .line 915
    :cond_5
    :goto_2
    move-wide/from16 v65, v2

    .end local v2    # "eta1":D
    .local v65, "eta1":D
    float-to-double v2, v14

    mul-double v16, v16, v2

    .line 916
    float-to-double v2, v15

    mul-double v2, v2, v18

    .line 917
    .end local v18    # "cy":D
    .local v2, "cy":D
    move-wide/from16 v67, v16

    .line 918
    .local v67, "tcx":D
    mul-double v18, v16, v37

    mul-double v20, v2, v39

    sub-double v69, v18, v20

    .end local v16    # "cx":D
    .local v69, "cx":D
    move-wide/from16 v17, v69

    .line 919
    mul-double v19, v67, v39

    mul-double v21, v2, v37

    add-double v2, v19, v21

    move-wide/from16 v19, v2

    .line 921
    move-wide/from16 v71, v2

    .end local v2    # "cy":D
    .local v71, "cy":D
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

    .line 922
    return-void
.end method

.method private blacklist drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V
    .locals 11
    .param p1, "p"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    .line 205
    iget-byte v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 223
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

    .line 224
    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v6, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v7, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v8, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget v9, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v10, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 216
    goto :goto_0

    .line 219
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 220
    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    goto :goto_0

    .line 207
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    nop

    .line 230
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
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "result"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;

    .line 636
    move v0, p2

    .line 637
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 638
    .local v1, "foundSeparator":Z
    const/4 v2, 0x0

    iput-boolean v2, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    .line 639
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 640
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 641
    .local v2, "currentChar":C
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 647
    :sswitch_0
    if-eq v0, p2, :cond_0

    .line 648
    const/4 v1, 0x1

    .line 649
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    goto :goto_1

    .line 644
    :sswitch_1
    const/4 v1, 0x1

    .line 645
    nop

    .line 653
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 654
    goto :goto_2

    .line 639
    .end local v2    # "currentChar":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_2
    :goto_2
    iput v0, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    .line 660
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
    .param p1, "s"    # Ljava/lang/String;

    .line 587
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

    .line 591
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    .line 592
    .local v0, "results":[F
    const/4 v1, 0x0

    .line 593
    .local v1, "count":I
    const/4 v2, 0x1

    .line 594
    .local v2, "startPosition":I
    const/4 v3, 0x0

    .line 596
    .local v3, "endPosition":I
    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;-><init>(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult-IA;)V

    .line 597
    .local v4, "result":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 602
    .local v5, "totalLength":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 603
    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    .line 604
    iget v6, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    move v3, v6

    .line 606
    if-ge v2, v3, :cond_1

    .line 607
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v0, v1

    move v1, v6

    .line 610
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_1
    iget-boolean v6, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v6, :cond_2

    .line 612
    move v2, v3

    goto :goto_0

    .line 614
    :cond_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 617
    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 618
    .end local v0    # "results":[F
    .end local v1    # "count":I
    .end local v2    # "startPosition":I
    .end local v3    # "endPosition":I
    .end local v4    # "result":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;
    .end local v5    # "totalLength":I
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/NumberFormatException;
    throw v0

    .line 588
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_1
    new-array v0, v0, [F

    return-object v0
.end method

.method private blacklist nextStart(Ljava/lang/String;I)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "end"    # I

    .line 561
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 562
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 563
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_1

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_0

    goto :goto_1

    .line 566
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 564
    :cond_1
    :goto_1
    return p2

    .line 568
    .end local v0    # "c":C
    :cond_2
    return p2
.end method


# virtual methods
.method public blacklist arcTo(FFFFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 166
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 167
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 168
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 169
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 170
    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    .line 171
    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    .line 172
    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    .line 173
    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    .line 175
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 180
    return-void
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 503
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    .line 505
    .local v0, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 508
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

    .line 509
    .local v2, "path":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v2    # "path":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    goto :goto_0

    .line 513
    :cond_0
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 515
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist close()V
    .locals 2

    .line 183
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 184
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 186
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 191
    return-void
.end method

.method public blacklist cubicTo(FFFFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 149
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 150
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 151
    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 152
    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 153
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    .line 154
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    .line 155
    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    .line 156
    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    .line 158
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 163
    return-void
.end method

.method public blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 3
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "alpha"    # F

    .line 991
    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 993
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->alpha:F

    mul-float/2addr v0, p5

    .line 995
    .local v0, "curAlpha":F
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 996
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    .line 999
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->setShadowLayer()V

    .line 1000
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleFill:Z

    if-eqz v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1003
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleStroke:Z

    if-eqz v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1006
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clearShadowLayer()V

    .line 1008
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 1009
    return-void
.end method

.method public blacklist drawPath()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 199
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

    .line 200
    .local v1, "p":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    invoke-direct {p0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 201
    .end local v1    # "p":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    goto :goto_0

    .line 202
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

    .line 100
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    :cond_0
    return-void
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 19
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    move-object/from16 v7, p0

    const/4 v0, 0x0

    .local v0, "x1":F
    const/4 v1, 0x0

    .local v1, "y1":F
    const/4 v2, 0x0

    .local v2, "x2":F
    const/4 v3, 0x0

    .line 235
    .local v3, "y2":F
    const/4 v4, 0x0

    .local v4, "lastX":F
    const/4 v5, 0x0

    .line 236
    .local v5, "lastY":F
    const/4 v6, 0x0

    .local v6, "startAngle":F
    const/4 v8, 0x0

    .line 238
    .local v8, "endAngle":F
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v10

    move v11, v6

    move v12, v8

    move v13, v9

    move v8, v4

    move v9, v5

    .end local v4    # "lastX":F
    .end local v5    # "lastY":F
    .end local v6    # "startAngle":F
    .local v8, "lastX":F
    .local v9, "lastY":F
    .local v10, "n":I
    .local v11, "startAngle":F
    .local v12, "endAngle":F
    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_0

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v14

    .line 240
    .local v14, "type":B
    packed-switch v14, :pswitch_data_0

    .line 289
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsupported command type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    .line 287
    goto/16 :goto_1

    .line 275
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v15

    .line 276
    .end local v0    # "x1":F
    .local v15, "x1":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v16

    .line 277
    .end local v1    # "y1":F
    .local v16, "y1":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v17, v0, v15

    .line 278
    .end local v2    # "x2":F
    .local v17, "x2":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v18, v0, v16

    .line 279
    .end local v3    # "y2":F
    .local v18, "y2":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v11

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    .line 282
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcTo(FFFFFF)V

    .line 283
    move v0, v15

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_1

    .line 254
    .end local v15    # "x1":F
    .end local v16    # "y1":F
    .end local v17    # "x2":F
    .end local v18    # "y2":F
    .restart local v0    # "x1":F
    .restart local v1    # "y1":F
    .restart local v2    # "x2":F
    .restart local v3    # "y2":F
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v15

    .line 255
    .end local v0    # "x1":F
    .restart local v15    # "x1":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v16

    .line 256
    .end local v1    # "y1":F
    .restart local v16    # "y1":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v17

    .line 257
    .end local v2    # "x2":F
    .restart local v17    # "x2":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    .line 258
    .end local v3    # "y2":F
    .restart local v18    # "y2":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v8

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v9

    .line 261
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v8

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    .line 262
    move v0, v15

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_1

    .line 265
    .end local v15    # "x1":F
    .end local v16    # "y1":F
    .end local v17    # "x2":F
    .end local v18    # "y2":F
    .restart local v0    # "x1":F
    .restart local v1    # "y1":F
    .restart local v2    # "x2":F
    .restart local v3    # "y2":F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v4

    .line 268
    .end local v8    # "lastX":F
    .restart local v4    # "lastX":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v5

    .line 270
    .end local v9    # "lastY":F
    .restart local v5    # "lastY":F
    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    .line 271
    move v8, v4

    move v9, v5

    goto :goto_1

    .line 248
    .end local v4    # "lastX":F
    .end local v5    # "lastY":F
    .restart local v8    # "lastX":F
    .restart local v9    # "lastY":F
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    .line 250
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    .line 251
    goto :goto_1

    .line 242
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    .line 244
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    .line 245
    nop

    .line 238
    .end local v14    # "type":B
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 293
    .end local v10    # "n":I
    .end local v13    # "i":I
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 294
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

.method public blacklist fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_22

    .line 385
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "value":Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_e

    .line 390
    :cond_0
    const-string/jumbo v4, "strokeWidth"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>()V

    .line 392
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 393
    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 394
    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 396
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;
    goto/16 :goto_e

    :cond_2
    const-string/jumbo v4, "strokeOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    const/16 v6, 0x23

    const v7, 0xffffff

    if-eqz v4, :cond_6

    .line 398
    const/4 v4, 0x0

    .line 399
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
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

    .line 400
    .local v9, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v10, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v10, v6, :cond_3

    .line 401
    move-object v4, v9

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    .line 402
    goto :goto_2

    .line 404
    .end local v9    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    :cond_3
    goto :goto_1

    .line 405
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 406
    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object v4, v6

    .line 407
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 411
    .local v5, "opacity":I
    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    and-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x18

    or-int/2addr v6, v7

    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    .line 412
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    .end local v5    # "opacity":I
    goto/16 :goto_e

    :cond_6
    const-string/jumbo v4, "strokeColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v8, 0x10

    const/high16 v9, -0x10000

    const-string v10, "#"

    const/4 v11, 0x1

    if-eqz v4, :cond_b

    .line 413
    const/4 v4, 0x0

    .line 414
    .restart local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
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

    .line 415
    .local v12, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v13, v12, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v13, v6, :cond_7

    .line 416
    move-object v4, v12

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    .line 417
    goto :goto_4

    .line 419
    .end local v12    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    :cond_7
    goto :goto_3

    .line 420
    :cond_8
    :goto_4
    if-nez v4, :cond_9

    .line 421
    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object v4, v5

    .line 422
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_9
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 426
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto :goto_5

    .line 428
    :cond_a
    iput v9, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    .line 431
    :goto_5
    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    and-int/2addr v6, v7

    not-int v6, v6

    or-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    .line 432
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    goto/16 :goto_e

    :cond_b
    const-string v4, "fillColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x20

    if-eqz v4, :cond_10

    .line 433
    const/4 v4, 0x0

    .line 434
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
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

    .line 435
    .local v7, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v12, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v12, v6, :cond_c

    .line 436
    move-object v4, v7

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .line 437
    goto :goto_7

    .line 439
    .end local v7    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    :cond_c
    goto :goto_6

    .line 440
    :cond_d
    :goto_7
    if-nez v4, :cond_e

    .line 441
    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object v4, v5

    .line 442
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_e
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 446
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto :goto_8

    .line 448
    :cond_f
    iput v9, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    .line 450
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :goto_8
    goto/16 :goto_e

    :cond_10
    const-string v4, "fillOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 451
    const/4 v4, 0x0

    .line 452
    .restart local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
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

    .line 453
    .restart local v9    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v10, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v10, v6, :cond_11

    .line 454
    move-object v4, v9

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .line 455
    goto :goto_a

    .line 457
    .end local v9    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    :cond_11
    goto :goto_9

    .line 458
    :cond_12
    :goto_a
    if-nez v4, :cond_13

    .line 459
    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object v4, v6

    .line 460
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_13
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 464
    .restart local v5    # "opacity":I
    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    and-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x18

    or-int/2addr v6, v7

    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    .line 465
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    .end local v5    # "opacity":I
    goto/16 :goto_e

    :cond_14
    const-string/jumbo v4, "pathData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 466
    invoke-direct {p0, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->createNodesFromPathData(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 467
    :cond_15
    const-string/jumbo v4, "trimPathStart"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto/16 :goto_e

    .line 469
    :cond_16
    const-string/jumbo v4, "trimPathEnd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_e

    .line 471
    :cond_17
    const-string/jumbo v4, "trimPathOffset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_e

    .line 473
    :cond_18
    const-string/jumbo v4, "strokeLineCap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "round"

    if-eqz v4, :cond_1c

    .line 474
    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>()V

    .line 475
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;
    const-string v6, "butt"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 476
    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_b

    .line 477
    :cond_19
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 478
    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_ROUND:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_b

    .line 479
    :cond_1a
    const-string/jumbo v5, "square"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 480
    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_SQUARE:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    .line 482
    :cond_1b
    :goto_b
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;
    goto :goto_e

    :cond_1c
    const-string/jumbo v4, "strokeLineJoin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 484
    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>()V

    .line 485
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;
    const-string v6, "miter"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 486
    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_c

    .line 487
    :cond_1d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 488
    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_ROUND:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_c

    .line 489
    :cond_1e
    const-string v5, "bevel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 490
    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_BEVEL:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    .line 492
    :cond_1f
    :goto_c
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;
    goto :goto_d

    .line 493
    :cond_20
    const-string/jumbo v4, "strokeMiterLimit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 494
    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>()V

    .line 495
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    .line 496
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 493
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;
    :cond_21
    :goto_d
    nop

    .line 384
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 499
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_22
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 4

    .line 348
    const/4 v0, 0x4

    .line 350
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 351
    return v0

    .line 354
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 356
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

    .line 357
    .local v2, "pathInfo":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    iget-byte v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 372
    :pswitch_0
    add-int/lit8 v0, v0, 0x18

    .line 373
    goto :goto_1

    .line 364
    :pswitch_1
    add-int/lit8 v0, v0, 0x18

    .line 365
    goto :goto_1

    .line 368
    :pswitch_2
    add-int/lit8 v0, v0, 0x10

    .line 369
    goto :goto_1

    .line 360
    :pswitch_3
    add-int/lit8 v0, v0, 0x8

    .line 361
    nop

    .line 378
    .end local v2    # "pathInfo":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    :goto_1
    goto :goto_0

    .line 380
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

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTotalSegmentCount()I
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    return v0

    .line 523
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist lineTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 121
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 122
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 123
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 124
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 126
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 131
    return-void
.end method

.method public blacklist moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 108
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 109
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 110
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 111
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 113
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 118
    return-void
.end method

.method public blacklist quadTo(FFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 134
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 135
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 136
    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 137
    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 138
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    .line 139
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    .line 141
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 146
    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 300
    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 304
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

    .line 305
    .local v1, "pathInfo":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 306
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 330
    :pswitch_0
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 331
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 332
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 333
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 334
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 335
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 336
    goto :goto_1

    .line 314
    :pswitch_1
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 315
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 316
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 317
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 318
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 319
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 320
    goto :goto_1

    .line 323
    :pswitch_2
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 324
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 325
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 326
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 327
    goto :goto_1

    .line 309
    :pswitch_3
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 310
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 311
    nop

    .line 341
    .end local v1    # "pathInfo":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    :goto_1
    goto :goto_0

    .line 343
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 344
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
