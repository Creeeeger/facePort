.class public abstract Landroidx/compose/ui/text/ParagraphStyleKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final DefaultLineHeight:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    sput-wide v0, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    return-void
.end method

.method public static final fastMerge-j5T8yCg(Landroidx/compose/ui/text/ParagraphStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    sget-object v9, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/text/style/TextAlign;->Unspecified:I

    invoke-static {v1, v9}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_1

    iget v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    invoke-static {v1, v10}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p3

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    iget-wide v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    move-wide/from16 v12, p3

    invoke-static {v12, v13, v10, v11}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_1

    :cond_2
    move-wide/from16 v12, p3

    :goto_1
    if-eqz v3, :cond_3

    iget-object v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    invoke-virtual {v3, v10}, Landroidx/compose/ui/text/style/TextIndent;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_3
    sget-object v10, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/text/style/TextDirection;->Unspecified:I

    invoke-static {v2, v10}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-static {v2, v10}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_4
    if-eqz v4, :cond_5

    iget-object v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    invoke-virtual {v4, v10}, Landroidx/compose/ui/text/PlatformParagraphStyle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_5
    if-eqz v5, :cond_6

    iget-object v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    invoke-virtual {v5, v10}, Landroidx/compose/ui/text/style/LineHeightStyle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_6
    sget-object v10, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    iget v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    if-ne v6, v10, :cond_a

    :goto_2
    sget-object v10, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/text/style/Hyphens;->Unspecified:I

    invoke-static {v7, v10}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_8

    iget v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-static {v7, v10}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_8
    if-eqz v8, :cond_9

    iget-object v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    invoke-virtual {v8, v10}, Landroidx/compose/ui/text/style/TextMotion;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_3

    :cond_9
    return-object v0

    :cond_a
    :goto_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-wide v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    move-wide v15, v10

    goto :goto_4

    :cond_b
    move-wide v15, v12

    :goto_4
    if-nez v3, :cond_c

    iget-object v3, v0, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    :cond_c
    move-object/from16 v17, v3

    invoke-static {v1, v9}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_d

    :goto_5
    move v13, v1

    goto :goto_6

    :cond_d
    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    goto :goto_5

    :goto_6
    sget-object v1, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/TextDirection;->Unspecified:I

    invoke-static {v2, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_e

    move v14, v2

    goto :goto_7

    :cond_e
    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    move v14, v1

    :goto_7
    iget-object v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-nez v1, :cond_10

    :cond_f
    move-object/from16 v18, v4

    goto :goto_8

    :cond_10
    if-nez v4, :cond_f

    move-object/from16 v18, v1

    :goto_8
    if-nez v5, :cond_11

    iget-object v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    move-object/from16 v19, v1

    goto :goto_9

    :cond_11
    move-object/from16 v19, v5

    :goto_9
    sget-object v1, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v6, :cond_12

    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    move/from16 v20, v1

    goto :goto_a

    :cond_12
    move/from16 v20, v6

    :goto_a
    sget-object v1, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/Hyphens;->Unspecified:I

    invoke-static {v7, v1}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_13

    move/from16 v21, v7

    goto :goto_b

    :cond_13
    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    move/from16 v21, v1

    :goto_b
    if-nez v8, :cond_14

    iget-object v0, v0, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    move-object/from16 v22, v0

    goto :goto_c

    :cond_14
    move-object/from16 v22, v8

    :goto_c
    new-instance v0, Landroidx/compose/ui/text/ParagraphStyle;

    const/16 v23, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
