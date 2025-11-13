.class final Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

.field final synthetic this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Landroidx/compose/ui/text/font/TypefaceRequest;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iput-object p2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    move-object/from16 v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v0, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iget-object v10, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iget-object v6, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    iget-object v9, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    iget-object v3, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->createDefaultTypeface:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    instance-of v4, v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    if-nez v4, :cond_0

    move v6, v2

    const/4 v0, 0x0

    goto/16 :goto_24

    :cond_0
    sget-object v4, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;

    check-cast v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    iget-object v0, v0, Landroidx/compose/ui/text/font/FontListFontFamily;->fonts:Ljava/util/List;

    iget-object v5, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget v7, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Landroidx/compose/ui/text/font/Font;

    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v12

    invoke-static {v12, v7}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/2addr v15, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v2

    if-eqz v11, :cond_3

    goto/16 :goto_15

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v15}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v15

    invoke-static {v15, v7}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v12, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v4

    :goto_2
    check-cast v0, Ljava/util/List;

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->W400:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v5, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v4, :cond_c

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    iget v15, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v13, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gez v13, :cond_8

    if-eqz v7, :cond_7

    iget v13, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v7, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-lez v13, :cond_a

    :cond_7
    move-object v7, v14

    goto :goto_4

    :cond_8
    iget v13, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-lez v13, :cond_b

    if-eqz v11, :cond_9

    iget v13, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gez v13, :cond_a

    :cond_9
    move-object v11, v14

    :cond_a
    :goto_4
    add-int/2addr v12, v2

    goto :goto_3

    :cond_b
    move-object v7, v14

    move-object v11, v7

    :cond_c
    if-nez v7, :cond_d

    move-object v7, v11

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_2c

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/2addr v11, v2

    goto :goto_5

    :cond_f
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->W500:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v5, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-lez v7, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v4, :cond_15

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_11

    if-eqz v7, :cond_10

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v7, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_13

    :cond_10
    move-object v7, v13

    goto :goto_7

    :cond_11
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_14

    if-eqz v11, :cond_12

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_13

    :cond_12
    move-object v11, v13

    :cond_13
    :goto_7
    add-int/2addr v12, v2

    goto :goto_6

    :cond_14
    move-object v7, v13

    move-object v11, v7

    :cond_15
    if-nez v11, :cond_16

    goto :goto_8

    :cond_16
    move-object v7, v11

    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v5, :cond_2c

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/2addr v11, v2

    goto :goto_9

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v7, :cond_1e

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    iget v15, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v2, v4, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gtz v2, :cond_1a

    iget v2, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gez v2, :cond_1b

    if-eqz v11, :cond_19

    iget v2, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-lez v2, :cond_1a

    :cond_19
    move-object v11, v14

    :cond_1a
    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    iget v2, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-lez v2, :cond_1d

    if-eqz v12, :cond_1c

    iget v2, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v12, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gez v2, :cond_1a

    :cond_1c
    move-object v12, v14

    goto :goto_b

    :cond_1d
    move-object v11, v14

    move-object v12, v11

    goto :goto_d

    :goto_c
    add-int/2addr v13, v2

    goto :goto_a

    :cond_1e
    :goto_d
    if-nez v12, :cond_1f

    goto :goto_e

    :cond_1f
    move-object v11, v12

    :goto_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v4, :cond_21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const/4 v12, 0x1

    add-int/2addr v7, v12

    goto :goto_f

    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->W500:Landroidx/compose/ui/text/font/FontWeight;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v4, :cond_28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    if-eqz v2, :cond_22

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v2, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-ltz v14, :cond_24

    :cond_22
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_25

    if-eqz v7, :cond_23

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v7, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_24

    :cond_23
    move-object v7, v13

    :cond_24
    :goto_11
    const/4 v13, 0x1

    goto :goto_12

    :cond_25
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_27

    if-eqz v11, :cond_26

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_24

    :cond_26
    move-object v11, v13

    goto :goto_11

    :goto_12
    add-int/2addr v12, v13

    goto :goto_10

    :cond_27
    move-object v7, v13

    move-object v11, v7

    :cond_28
    if-nez v11, :cond_29

    goto :goto_13

    :cond_29
    move-object v7, v11

    :goto_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_2b

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    const/4 v11, 0x1

    add-int/2addr v5, v11

    goto :goto_14

    :cond_2b
    move-object v4, v2

    :cond_2c
    :goto_15
    iget-object v2, v10, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_16
    if-ge v11, v5, :cond_3b

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->getLoadingStrategy-PKNRLFQ()I

    move-result v0

    sget-object v13, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v14

    if-eqz v14, :cond_30

    iget-object v3, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    invoke-interface {v9}, Landroidx/compose/ui/text/font/PlatformFontLoader;->getCacheKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12, v4}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    iget-object v4, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/caches/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    if-nez v4, :cond_2d

    iget-object v4, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_19

    :cond_2d
    :goto_17
    if-eqz v4, :cond_2e

    iget-object v0, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_18

    :cond_2e
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    :try_start_2
    invoke-interface {v9, v12}, Landroidx/compose/ui/text/font/PlatformFontLoader;->loadBlocking(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v2, v12, v9, v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->put$default(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;)V

    :goto_18
    if-eqz v0, :cond_2f

    iget v2, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    iget-object v3, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    invoke-static {v2, v0, v12, v3, v4}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load font "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to load font "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_19
    monitor-exit v3

    throw v0

    :cond_30
    sget v13, Landroidx/compose/ui/text/font/FontLoadingStrategy;->OptionalLocal:I

    invoke-static {v0, v13}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v13

    if-eqz v13, :cond_34

    iget-object v13, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v13

    :try_start_3
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    invoke-interface {v9}, Landroidx/compose/ui/text/font/PlatformFontLoader;->getCacheKey()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v12, v14}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    iget-object v14, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    invoke-virtual {v14, v0}, Landroidx/compose/ui/text/caches/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    if-nez v14, :cond_31

    iget-object v14, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    invoke-virtual {v14, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    goto :goto_1a

    :catchall_1
    move-exception v0

    goto :goto_1d

    :cond_31
    :goto_1a
    if-eqz v14, :cond_32

    iget-object v0, v14, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->result:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v13

    goto :goto_1c

    :cond_32
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v13

    :try_start_5
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {v9, v12}, Landroidx/compose/ui/text/font/PlatformFontLoader;->loadBlocking(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1b

    :catchall_2
    move-exception v0

    sget v13, Lkotlin/Result;->$r8$clinit:I

    new-instance v13, Lkotlin/Result$Failure;

    invoke-direct {v13, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v13

    :goto_1b
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-eqz v13, :cond_33

    const/4 v0, 0x0

    :cond_33
    invoke-static {v2, v12, v9, v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->put$default(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;)V

    :goto_1c
    if-eqz v0, :cond_36

    iget v2, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    iget-object v3, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    invoke-static {v2, v0, v12, v3, v4}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :goto_1d
    monitor-exit v13

    throw v0

    :cond_34
    sget v13, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Async:I

    invoke-static {v0, v13}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    invoke-interface {v9}, Landroidx/compose/ui/text/font/PlatformFontLoader;->getCacheKey()Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    iget-object v13, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v13

    :try_start_6
    iget-object v14, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    invoke-virtual {v14, v0}, Landroidx/compose/ui/text/caches/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    if-nez v14, :cond_35

    iget-object v14, v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    invoke-virtual {v14, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1e

    :catchall_3
    move-exception v0

    goto :goto_22

    :cond_35
    :goto_1e
    monitor-exit v13

    if-nez v14, :cond_38

    if-nez v7, :cond_37

    filled-new-array {v12}, [Landroidx/compose/ui/text/font/Font;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    :cond_36
    :goto_1f
    const/4 v12, 0x1

    goto :goto_21

    :cond_37
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_38
    iget-object v0, v14, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_39

    :goto_20
    goto :goto_1f

    :goto_21
    add-int/2addr v11, v12

    goto/16 :goto_16

    :cond_39
    iget v2, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    iget-object v3, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v6, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    invoke-static {v2, v0, v12, v3, v4}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    :goto_22
    monitor-exit v13

    throw v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown font type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    check-cast v3, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$createDefaultTypeface$1;

    invoke-virtual {v3, v6}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$createDefaultTypeface$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_23
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3c

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v5, v4, v3, v2}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x1

    goto :goto_24

    :cond_3c
    new-instance v0, Landroidx/compose/ui/text/font/AsyncFontListLoader;

    iget-object v7, v10, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroidx/compose/ui/text/font/AsyncFontListLoader;-><init>(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/PlatformFontLoader;)V

    iget-object v2, v10, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncLoadScope:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x1

    invoke-static {v2, v5, v3, v4, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Landroidx/compose/ui/text/font/TypefaceResult$Async;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/font/TypefaceResult$Async;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;)V

    move-object v0, v2

    :goto_24
    if-nez v0, :cond_42

    iget-object v0, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iget-object v0, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    iget-object v1, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v2, :cond_3d

    move v3, v6

    goto :goto_25

    :cond_3d
    instance-of v3, v2, Landroidx/compose/ui/text/font/DefaultFontFamily;

    :goto_25
    iget-object v0, v0, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;->platformTypefaceResolver:Landroidx/compose/ui/text/font/PlatformTypefacesApi28;

    iget v4, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    iget-object v1, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v3, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2, v1, v4}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_26

    :cond_3e
    instance-of v3, v2, Landroidx/compose/ui/text/font/GenericFontFamily;

    if-eqz v3, :cond_3f

    check-cast v2, Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_26
    new-instance v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v3, v2}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v1

    goto :goto_27

    :cond_3f
    instance-of v0, v2, Landroidx/compose/ui/text/font/LoadedFontFamily;

    if-nez v0, :cond_41

    const/4 v11, 0x0

    :goto_27
    if-eqz v11, :cond_40

    move-object v0, v11

    goto :goto_28

    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not load font"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    check-cast v2, Landroidx/compose/ui/text/font/LoadedFontFamily;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    throw v1

    :cond_42
    :goto_28
    return-object v0
.end method
