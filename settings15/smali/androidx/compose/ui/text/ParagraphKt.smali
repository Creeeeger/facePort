.class public abstract Landroidx/compose/ui/text/ParagraphKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static Paragraph-UdtVg6A$default(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;II)Landroidx/compose/ui/text/AndroidParagraph;
    .locals 12

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p6

    :goto_0
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    new-instance v0, Landroidx/compose/ui/text/AndroidParagraph;

    new-instance v8, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    const/4 v9, 0x0

    move-object v6, v0

    move-object v7, v8

    move/from16 v8, p7

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V

    return-object v0
.end method
