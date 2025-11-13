.class final Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/text/font/TypefaceResult;",
        "onAsyncCompletion",
        "Lkotlin/Function1;",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
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
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v0, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iget-object v9, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iget-object v5, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    iget-object v8, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/compose/ui/text/font/AndroidFontLoader;

    iget-object v2, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->createDefaultTypeface:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    instance-of v3, v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    const/4 v11, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1c

    :cond_0
    check-cast v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    iget-object v0, v0, Landroidx/compose/ui/text/font/FontListFontFamily;->fonts:Ljava/util/List;

    iget-object v3, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v10, v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    invoke-static {v10, v4}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v11

    if-eqz v10, :cond_3

    goto/16 :goto_13

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget v14, v14, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    invoke-static {v14, v4}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v6

    :goto_2
    check-cast v0, Ljava/util/List;

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->W400:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v4, :cond_c

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v13, v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_8

    if-eqz v6, :cond_7

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v6, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_a

    :cond_7
    move-object v6, v13

    goto :goto_4

    :cond_8
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_b

    if-eqz v10, :cond_9

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v10, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_a

    :cond_9
    move-object v10, v13

    :cond_a
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_b
    move-object v6, v13

    move-object v10, v6

    :cond_c
    if-nez v6, :cond_d

    move-object v6, v10

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v4, :cond_f

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v13, v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_f
    move-object v6, v3

    goto/16 :goto_13

    :cond_10
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->W500:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v4, :cond_16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v13, v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_12

    if-eqz v6, :cond_11

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v6, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_14

    :cond_11
    move-object v6, v13

    goto :goto_7

    :cond_12
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_15

    if-eqz v10, :cond_13

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v10, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_14

    :cond_13
    move-object v10, v13

    :cond_14
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_15
    move-object v6, v13

    move-object v10, v6

    :cond_16
    if-nez v10, :cond_17

    goto :goto_8

    :cond_17
    move-object v6, v10

    :goto_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v4, :cond_f

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v13, v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v6, :cond_1f

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v14, v14, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget v15, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v11, v4, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_1e

    iget v11, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gez v11, :cond_1b

    if-eqz v10, :cond_1a

    iget v11, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v10, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-lez v11, :cond_1e

    :cond_1a
    move-object v10, v14

    goto :goto_b

    :cond_1b
    iget v11, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-lez v11, :cond_1d

    if-eqz v12, :cond_1c

    iget v11, v14, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v12, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gez v11, :cond_1e

    :cond_1c
    move-object v12, v14

    goto :goto_b

    :cond_1d
    move-object v10, v14

    move-object v12, v10

    goto :goto_c

    :cond_1e
    :goto_b
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x1

    goto :goto_a

    :cond_1f
    :goto_c
    if-nez v12, :cond_20

    goto :goto_d

    :cond_20
    move-object v10, v12

    :goto_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v6, :cond_22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v13, v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->W500:Landroidx/compose/ui/text/font/FontWeight;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v6, :cond_29

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v13, v13, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v4, :cond_23

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v4, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-ltz v14, :cond_27

    :cond_23
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_25

    if-eqz v10, :cond_24

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v10, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_27

    :cond_24
    move-object v10, v13

    goto :goto_10

    :cond_25
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-lez v14, :cond_28

    if-eqz v11, :cond_26

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gez v14, :cond_27

    :cond_26
    move-object v11, v13

    :cond_27
    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_28
    move-object v10, v13

    move-object v11, v10

    :cond_29
    if-nez v11, :cond_2a

    goto :goto_11

    :cond_2a
    move-object v10, v11

    :goto_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v3, :cond_2c

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v12, v12, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_2c
    move-object v6, v4

    :goto_13
    iget-object v3, v9, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v13, 0x0

    :goto_14
    if-ge v13, v4, :cond_32

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v11

    :try_start_0
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v10}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;)V

    iget-object v12, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    invoke-virtual {v12, v0}, Landroidx/compose/ui/text/caches/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    if-nez v12, :cond_2d

    iget-object v12, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    invoke-virtual {v12, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    goto :goto_15

    :catchall_0
    move-exception v0

    goto :goto_1a

    :cond_2d
    :goto_15
    if-eqz v12, :cond_2e

    iget-object v0, v12, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    move/from16 p1, v4

    goto :goto_18

    :cond_2e
    monitor-exit v11

    :try_start_1
    invoke-virtual {v8, v10}, Landroidx/compose/ui/text/font/AndroidFontLoader;->loadBlocking(Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_16

    :catchall_1
    move-exception v0

    move-object v11, v0

    invoke-static {v11}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_16
    instance-of v11, v0, Lkotlin/Result$Failure;

    if-eqz v11, :cond_2f

    const/4 v0, 0x0

    :cond_2f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v11, v10}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;)V

    iget-object v12, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v12

    if-nez v0, :cond_30

    :try_start_2
    iget-object v14, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    new-instance v15, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    move/from16 p1, v4

    const/4 v4, 0x0

    invoke-direct {v15, v4}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v14, v11, v15}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->put(Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    goto :goto_17

    :catchall_2
    move-exception v0

    goto :goto_19

    :cond_30
    move/from16 p1, v4

    iget-object v4, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    new-instance v14, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    invoke-direct {v14, v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v11, v14}, Landroidx/compose/ui/text/caches/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_17
    monitor-exit v12

    :goto_18
    if-eqz v0, :cond_31

    iget v2, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    iget-object v3, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    invoke-static {v2, v0, v10, v3, v4}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_31
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, p1

    goto/16 :goto_14

    :goto_19
    monitor-exit v12

    throw v0

    :goto_1a
    monitor-exit v11

    throw v0

    :cond_32
    check-cast v2, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$createDefaultTypeface$1;

    invoke-virtual {v2, v5}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$createDefaultTypeface$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1b
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_33

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    const/4 v2, 0x1

    invoke-direct {v0, v4, v2}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    move-object v3, v0

    goto :goto_1c

    :cond_33
    new-instance v0, Landroidx/compose/ui/text/font/AsyncFontListLoader;

    iget-object v6, v9, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/text/font/AsyncFontListLoader;-><init>(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/AndroidFontLoader;)V

    iget-object v2, v9, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncLoadScope:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x1

    invoke-static {v2, v5, v3, v4, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance v3, Landroidx/compose/ui/text/font/TypefaceResult$Async;

    invoke-direct {v3, v0}, Landroidx/compose/ui/text/font/TypefaceResult$Async;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;)V

    :goto_1c
    if-nez v3, :cond_38

    iget-object v0, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iget-object v0, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    iget-object v1, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v2, :cond_34

    const/4 v3, 0x1

    goto :goto_1d

    :cond_34
    instance-of v3, v2, Landroidx/compose/ui/text/font/DefaultFontFamily;

    :goto_1d
    iget-object v0, v0, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;->platformTypefaceResolver:Landroidx/compose/ui/text/font/PlatformTypefacesApi28;

    iget v4, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    iget-object v1, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v3, :cond_35

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v3, v1, v4}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1e

    :cond_35
    const/4 v3, 0x0

    instance-of v5, v2, Landroidx/compose/ui/text/font/GenericFontFamily;

    if-eqz v5, :cond_36

    check-cast v2, Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_1e
    new-instance v10, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    const/4 v1, 0x1

    invoke-direct {v10, v0, v1}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1f

    :cond_36
    move-object v10, v3

    :goto_1f
    if-eqz v10, :cond_37

    move-object v3, v10

    goto :goto_20

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not load font"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    :goto_20
    return-object v3
.end method
