.class public final Landroidx/window/embedding/SplitRuleParser;
.super Ljava/lang/Object;
.source "SplitRuleParser.kt"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;
    .locals 9

    if-eqz p2, :cond_4

    .line 291
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_4

    .line 294
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 295
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v8, 0x2e

    if-ne p2, v8, :cond_1

    .line 297
    new-instance p2, Landroid/content/ComponentName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    .line 301
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_2

    .line 303
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr p2, v0

    .line 304
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const-string p2, "*"

    .line 306
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_3

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    new-instance p0, Landroid/content/ComponentName;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 312
    :cond_3
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 292
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity name must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final parseActivityFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityFilter;
    .locals 3

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 275
    check-cast p2, Landroid/util/AttributeSet;

    .line 276
    sget-object v1, Landroidx/window/R$styleable;->ActivityFilter:[I

    const/4 v2, 0x0

    .line 274
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 280
    sget v0, Landroidx/window/R$styleable;->ActivityFilter_activityName:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    sget v1, Landroidx/window/R$styleable;->ActivityFilter_activityAction:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 284
    new-instance v1, Landroidx/window/embedding/ActivityFilter;

    const-string v2, "packageName"

    .line 285
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/SplitRuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p0

    .line 284
    invoke-direct {v1, p0, p2}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v1
.end method

.method private final parseSplitActivityRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityRule;
    .locals 1

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 258
    check-cast p2, Landroid/util/AttributeSet;

    .line 259
    sget-object p1, Landroidx/window/R$styleable;->ActivityRule:[I

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 263
    sget p1, Landroidx/window/R$styleable;->ActivityRule_alwaysExpand:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    .line 265
    new-instance p1, Landroidx/window/embedding/ActivityRule;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroidx/window/embedding/ActivityRule;-><init>(Ljava/util/Set;Z)V

    return-object p1
.end method

.method private final parseSplitPairFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairFilter;
    .locals 3

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 229
    check-cast p2, Landroid/util/AttributeSet;

    .line 230
    sget-object v1, Landroidx/window/R$styleable;->SplitPairFilter:[I

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 234
    sget v0, Landroidx/window/R$styleable;->SplitPairFilter_primaryActivityName:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    sget v1, Landroidx/window/R$styleable;->SplitPairFilter_secondaryActivityName:I

    .line 235
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    sget v2, Landroidx/window/R$styleable;->SplitPairFilter_secondaryActivityAction:I

    .line 238
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "packageName"

    .line 243
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/SplitRuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object v0

    .line 244
    invoke-direct {p0, p1, v1}, Landroidx/window/embedding/SplitRuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p0

    .line 245
    new-instance p1, Landroidx/window/embedding/SplitPairFilter;

    invoke-direct {p1, v0, p0, p2}, Landroidx/window/embedding/SplitPairFilter;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p1
.end method

.method private final parseSplitPairRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairRule;
    .locals 10

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 136
    check-cast p2, Landroid/util/AttributeSet;

    .line 137
    sget-object p1, Landroidx/window/R$styleable;->SplitPairRule:[I

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 141
    sget p1, Landroidx/window/R$styleable;->SplitPairRule_splitRatio:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 142
    sget p1, Landroidx/window/R$styleable;->SplitPairRule_splitMinWidth:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int v6, p1

    .line 143
    sget p1, Landroidx/window/R$styleable;->SplitPairRule_splitMinSmallestWidth:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int v7, p1

    .line 146
    sget p1, Landroidx/window/R$styleable;->SplitPairRule_splitLayoutDirection:I

    const/4 p2, 0x3

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 150
    sget p1, Landroidx/window/R$styleable;->SplitPairRule_finishPrimaryWithSecondary:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 152
    sget p1, Landroidx/window/R$styleable;->SplitPairRule_finishSecondaryWithPrimary:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 154
    sget p1, Landroidx/window/R$styleable;->SplitPairRule_clearTop:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 156
    new-instance p0, Landroidx/window/embedding/SplitPairRule;

    .line 157
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    move-object v1, p0

    .line 156
    invoke-direct/range {v1 .. v9}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    return-object p0
.end method

.method private final parseSplitPlaceholderRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPlaceholderRule;
    .locals 12

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 180
    check-cast p2, Landroid/util/AttributeSet;

    .line 181
    sget-object v1, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 186
    sget v0, Landroidx/window/R$styleable;->SplitPlaceholderRule_placeholderActivityName:I

    .line 185
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_stickyPlaceholder:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 191
    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_finishPrimaryWithSecondary:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 192
    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitRatio:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 193
    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMinWidth:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v8, v1

    .line 195
    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMinSmallestWidth:I

    .line 194
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v9, v1

    .line 199
    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitLayoutDirection:I

    const/4 v2, 0x3

    .line 198
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "packageName"

    .line 205
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/SplitRuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p0

    .line 209
    new-instance p1, Landroidx/window/embedding/SplitPlaceholderRule;

    .line 210
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 211
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const-string p0, "Intent().setComponent(pl\u2026eholderActivityClassName)"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    .line 209
    invoke-direct/range {v3 .. v11}, Landroidx/window/embedding/SplitPlaceholderRule;-><init>(Ljava/util/Set;Landroid/content/Intent;ZIIIFI)V

    return-object p1
.end method

.method private final parseSplitXml(Landroid/content/Context;I)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const-string v0, "resources.getXml(splitResourceId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 56
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_d

    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    .line 61
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_d

    .line 63
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_c

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "split-config"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_6

    .line 67
    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v7, "SplitPlaceholderRule"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 76
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitPlaceholderRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPlaceholderRule;

    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    move-object v5, v4

    :goto_1
    move-object v6, v3

    goto/16 :goto_5

    :sswitch_1
    const-string v7, "ActivityRule"

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_5

    .line 94
    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitActivityRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityRule;

    move-result-object v3

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v5, v1

    move-object v6, v5

    :goto_2
    move-object v4, v3

    goto/16 :goto_5

    :sswitch_2
    const-string v7, "SplitPairFilter"

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v5, :cond_5

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitPairFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairFilter;

    move-result-object v3

    .line 89
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v5, v3}, Landroidx/window/embedding/SplitPairRule;->plus$window_release(Landroidx/window/embedding/SplitPairFilter;)Landroidx/window/embedding/SplitPairRule;

    move-result-object v3

    .line 91
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 84
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found orphaned SplitPairFilter outside of SplitPairRule"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_3
    const-string v7, "SplitPairRule"

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 69
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitPairRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairRule;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    move-object v6, v4

    :goto_3
    move-object v5, v3

    goto :goto_5

    :sswitch_4
    const-string v7, "ActivityFilter"

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    if-nez v4, :cond_9

    if-eqz v6, :cond_8

    goto :goto_4

    .line 102
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found orphaned ActivityFilter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_9
    :goto_4
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseActivityFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityFilter;

    move-result-object v3

    if-eqz v4, :cond_a

    .line 108
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v4, v3}, Landroidx/window/embedding/ActivityRule;->plus$window_release(Landroidx/window/embedding/ActivityFilter;)Landroidx/window/embedding/ActivityRule;

    move-result-object v3

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_b

    .line 112
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v6, v3}, Landroidx/window/embedding/SplitPlaceholderRule;->plus$window_release(Landroidx/window/embedding/ActivityFilter;)Landroidx/window/embedding/SplitPlaceholderRule;

    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 118
    :cond_b
    :goto_5
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 64
    :cond_c
    :goto_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_d
    return-object v0

    :catch_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e7baf87 -> :sswitch_4
        0x1f056610 -> :sswitch_3
        0x5e21258c -> :sswitch_2
        0x6ae032cb -> :sswitch_1
        0x7a3f98b5 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final parseSplitRules$window_release(Landroid/content/Context;I)Ljava/util/Set;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitXml(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
