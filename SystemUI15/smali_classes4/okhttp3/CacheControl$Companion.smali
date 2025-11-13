.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v4, 0x1

    move v7, v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v6, v1, :cond_18

    invoke-virtual {v0, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "Cache-Control"

    invoke-static {v5, v2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v8, :cond_0

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    move-object v8, v3

    goto :goto_2

    :cond_1
    const-string v2, "Pragma"

    invoke-static {v5, v2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_1

    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    :goto_4
    if-ge v4, v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v23, v1

    const-string v1, "=,;"

    invoke-static {v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    goto :goto_4

    :cond_3
    move/from16 v23, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_5
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v4, v1, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_5
    const/4 v1, 0x1

    add-int/2addr v4, v1

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :goto_6
    if-ge v4, v1, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_6

    const/16 v5, 0x9

    if-eq v2, v5, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x1

    add-int/2addr v4, v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_8

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x22

    if-ne v1, v5, :cond_8

    add-int/2addr v4, v2

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v3, v5, v4, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/2addr v1, v5

    move v2, v1

    goto :goto_b

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v4

    :goto_8
    if-ge v5, v1, :cond_a

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v1

    const-string v1, ",;"

    invoke-static {v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x1

    add-int/2addr v5, v1

    move/from16 v1, v24

    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    :goto_9
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v5

    goto :goto_b

    :goto_a
    add-int/2addr v4, v1

    move v2, v4

    const/4 v4, 0x0

    :goto_b
    const-string v1, "no-cache"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, -0x1

    const/4 v9, 0x1

    goto/16 :goto_c

    :cond_b
    const-string v1, "no-store"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    const/4 v10, 0x1

    goto/16 :goto_c

    :cond_c
    const-string v1, "max-age"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, -0x1

    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(ILjava/lang/String;)I

    move-result v0

    move v11, v0

    goto/16 :goto_c

    :cond_d
    const/4 v1, -0x1

    const-string v5, "s-maxage"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(ILjava/lang/String;)I

    move-result v0

    move v12, v0

    goto/16 :goto_c

    :cond_e
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, -0x1

    const/4 v13, 0x1

    goto :goto_c

    :cond_f
    const-string v1, "public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, -0x1

    const/4 v14, 0x1

    goto :goto_c

    :cond_10
    const-string v1, "must-revalidate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, -0x1

    const/4 v15, 0x1

    goto :goto_c

    :cond_11
    const-string v1, "max-stale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v0, 0x7fffffff

    invoke-static {v0, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(ILjava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const/4 v1, -0x1

    goto :goto_c

    :cond_12
    const-string v1, "min-fresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, -0x1

    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(ILjava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    goto :goto_c

    :cond_13
    const/4 v1, -0x1

    const-string v4, "only-if-cached"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v18, 0x1

    goto :goto_c

    :cond_14
    const-string v4, "no-transform"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/16 v19, 0x1

    goto :goto_c

    :cond_15
    const-string v4, "immutable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v20, 0x1

    :cond_16
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v23

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_17
    move/from16 v23, v1

    const/4 v1, -0x1

    move v0, v4

    add-int/2addr v6, v0

    move v4, v0

    move/from16 v1, v23

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_18
    if-nez v7, :cond_19

    const/16 v21, 0x0

    goto :goto_d

    :cond_19
    move-object/from16 v21, v8

    :goto_d
    new-instance v0, Lokhttp3/CacheControl;

    const/16 v22, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v22}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
