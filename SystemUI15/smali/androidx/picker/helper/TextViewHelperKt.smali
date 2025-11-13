.class public abstract Landroidx/picker/helper/TextViewHelperKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final setHighLightText(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/util/StringTokenizer;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v1

    move v7, v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v8, v6, v9}, Landroidx/reflect/text/SeslTextUtilsReflector;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    array-length v10, v8

    if-nez v10, :cond_3

    move v10, v9

    goto :goto_1

    :cond_3
    move v10, v5

    :goto_1
    xor-int/2addr v10, v9

    if-eqz v10, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-interface {v4, v10}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v11, v8

    move v12, v5

    move v13, v12

    :goto_2
    if-ge v12, v11, :cond_5

    aget-char v14, v8, v12

    add-int/2addr v13, v9

    if-le v13, v9, :cond_4

    const-string v15, ", "

    invoke-interface {v4, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_4
    invoke-interface {v4, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v4, v10}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/picker/features/search/InitialSearchUtils;->getMatchedStringOffset(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_3

    :cond_7
    const/4 v8, 0x6

    invoke-static {v6, v4, v5, v5, v8}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v8

    :goto_3
    if-gez v8, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v8, v7

    add-int/2addr v7, v10

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v11

    if-le v7, v11, :cond_9

    goto :goto_4

    :cond_9
    move v11, v7

    :goto_4
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    move/from16 v13, p2

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v14, 0x11

    invoke-virtual {v2, v12, v8, v11, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v12, Landroid/text/style/StyleSpan;

    invoke-direct {v12, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v2, v12, v8, v11, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v10, v8, :cond_a

    move v10, v8

    :cond_a
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_2

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
