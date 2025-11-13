.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# instance fields
.field public final charSequence:Ljava/lang/CharSequence;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final emojiCompatProcessed:Z

.field public final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

.field public final placeholders:Ljava/util/List;

.field public resolvedTypefaces:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

.field public final spanStyles:Ljava/util/List;

.field public final style:Landroidx/compose/ui/text/TextStyle;

.field public final text:Ljava/lang/String;

.field public final textDirectionHeuristic:I

.field public final textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const/4 v4, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p1

    iput-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    move-object/from16 v5, p4

    iput-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    new-instance v5, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-interface/range {p6 .. p6}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v6

    invoke-direct {v5, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput v6, v5, Landroid/text/TextPaint;->density:F

    sget-object v6, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    iput-object v6, v5, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    const/4 v6, 0x3

    iput v6, v5, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    sget-object v7, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    iput-object v7, v5, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    iput-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;->access$getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    iget-object v8, v1, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v9, v8, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v10, v1, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    const/4 v11, 0x4

    invoke-static {v9, v11}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    move v9, v12

    goto :goto_2

    :cond_1
    const/4 v11, 0x5

    invoke-static {v9, v11}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move v9, v6

    goto :goto_2

    :cond_3
    invoke-static {v9, v4}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v11

    if-eqz v11, :cond_4

    move v9, v7

    goto :goto_2

    :cond_4
    invoke-static {v9, v12}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v11

    if-eqz v11, :cond_5

    move v9, v4

    goto :goto_2

    :cond_5
    invoke-static {v9, v6}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v11

    if-eqz v11, :cond_6

    move v9, v4

    goto :goto_1

    :cond_6
    const/high16 v11, -0x80000000

    invoke-static {v9, v11}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v9

    :goto_1
    if-eqz v9, :cond_43

    if-eqz v10, :cond_7

    iget-object v9, v10, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/text/intl/Locale;

    iget-object v9, v9, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    if-nez v9, :cond_8

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v9

    if-eqz v9, :cond_0

    if-eq v9, v4, :cond_2

    goto :goto_0

    :goto_2
    iput v9, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    new-instance v9, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;

    invoke-direct {v9, v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V

    iget-object v8, v8, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v8, :cond_9

    sget-object v8, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    :cond_9
    iget-boolean v10, v8, Landroidx/compose/ui/text/style/TextMotion;->subpixelTextPositioning:Z

    if-eqz v10, :cond_a

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFlags()I

    move-result v10

    or-int/lit16 v10, v10, 0x80

    goto :goto_3

    :cond_a
    invoke-virtual {v5}, Landroid/text/TextPaint;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, -0x81

    :goto_3
    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setFlags(I)V

    iget v8, v8, Landroidx/compose/ui/text/style/TextMotion;->linearity:I

    if-ne v8, v4, :cond_b

    move v10, v4

    goto :goto_4

    :cond_b
    move v10, v7

    :goto_4
    if-eqz v10, :cond_c

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x40

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setHinting(I)V

    goto :goto_7

    :cond_c
    if-ne v8, v12, :cond_d

    move v10, v4

    goto :goto_5

    :cond_d
    move v10, v7

    :goto_5
    if-eqz v10, :cond_e

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFlags()I

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHinting(I)V

    goto :goto_7

    :cond_e
    if-ne v8, v6, :cond_f

    move v6, v4

    goto :goto_6

    :cond_f
    move v6, v7

    :goto_6
    if-eqz v6, :cond_10

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFlags()I

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setHinting(I)V

    goto :goto_7

    :cond_10
    invoke-virtual {v5}, Landroid/text/TextPaint;->getFlags()I

    :goto_7
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    iget-wide v10, v1, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v10

    const-wide v12, 0x100000000L

    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v6

    const-wide v14, 0x200000000L

    iget-wide v12, v1, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    if-eqz v6, :cond_11

    invoke-interface {v3, v12, v13}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_8

    :cond_11
    invoke-static {v10, v11, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_12
    :goto_8
    iget-object v6, v1, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v10, v1, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v10, :cond_14

    if-nez v8, :cond_14

    if-eqz v6, :cond_13

    goto :goto_9

    :cond_13
    move v11, v7

    goto :goto_a

    :cond_14
    :goto_9
    move v11, v4

    :goto_a
    if-eqz v11, :cond_19

    if-nez v6, :cond_15

    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_15
    if-eqz v8, :cond_16

    iget v8, v8, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_b

    :cond_16
    move v8, v7

    :goto_b
    iget-object v11, v1, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v11, :cond_17

    iget v11, v11, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    goto :goto_c

    :cond_17
    move v11, v4

    :goto_c
    iget-object v12, v9, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v12, v12, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    check-cast v12, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    invoke-virtual {v12, v10, v6, v8, v11}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult;

    move-result-object v6

    instance-of v8, v6, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    const-string v10, "null cannot be cast to non-null type android.graphics.Typeface"

    if-nez v8, :cond_18

    new-instance v8, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    iget-object v11, v9, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v11, v11, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    invoke-direct {v8, v6, v11}, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;-><init>(Landroidx/compose/ui/text/font/TypefaceResult;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;)V

    iget-object v6, v9, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iput-object v8, v6, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    iget-object v6, v8, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->initial:Ljava/lang/Object;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/graphics/Typeface;

    goto :goto_d

    :cond_18
    check-cast v6, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    iget-object v6, v6, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/graphics/Typeface;

    :goto_d
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_19
    const/16 v6, 0xa

    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    if-eqz v8, :cond_1b

    sget-object v10, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    sget-object v10, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-virtual {v10}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, v8, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/text/intl/Locale;

    iget-object v11, v11, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1a
    new-array v8, v7, [Ljava/util/Locale;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/util/Locale;

    array-length v10, v8

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/util/Locale;

    new-instance v10, Landroid/os/LocaleList;

    invoke-direct {v10, v8}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_1b
    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    if-eqz v8, :cond_1c

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1c
    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-eqz v8, :cond_1d

    sget-object v10, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    invoke-virtual {v8, v10}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v10

    iget v11, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    mul-float/2addr v10, v11

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setTextScaleX(F)V

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v10

    iget v8, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    add-float/2addr v10, v8

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_1d
    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v10

    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v8

    const-wide v11, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-virtual {v5, v10, v11, v12, v8}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v5, v8}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v5, v8}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-virtual {v5, v8}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    iget-wide v10, v1, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v12

    const-wide v6, 0x100000000L

    invoke-static {v12, v13, v6, v7}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v8

    const/4 v6, 0x0

    if-eqz v8, :cond_20

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v7

    cmpg-float v7, v7, v6

    if-nez v7, :cond_1e

    goto :goto_f

    :cond_1e
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v8

    mul-float/2addr v8, v7

    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v3

    cmpg-float v7, v8, v6

    if-nez v7, :cond_1f

    goto :goto_10

    :cond_1f
    div-float/2addr v3, v8

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_10

    :cond_20
    :goto_f
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v7

    invoke-static {v7, v8, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_21
    :goto_10
    if-eqz v2, :cond_23

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v2

    const-wide v7, 0x100000000L

    invoke-static {v2, v3, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v2

    cmpg-float v2, v2, v6

    if-nez v2, :cond_22

    goto :goto_11

    :cond_22
    move v2, v4

    goto :goto_12

    :cond_23
    :goto_11
    const/4 v2, 0x0

    :goto_12
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    iget-wide v12, v1, Landroidx/compose/ui/text/SpanStyle;->background:J

    invoke-static {v12, v13, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_24

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Transparent:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_24

    move v3, v4

    goto :goto_13

    :cond_24
    const/4 v3, 0x0

    :goto_13
    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v1, :cond_26

    iget v5, v1, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_25

    goto :goto_14

    :cond_25
    move v5, v4

    goto :goto_15

    :cond_26
    :goto_14
    const/4 v5, 0x0

    :goto_15
    if-nez v2, :cond_27

    if-nez v3, :cond_27

    if-nez v5, :cond_27

    const/4 v1, 0x0

    goto :goto_1a

    :cond_27
    if-eqz v2, :cond_28

    :goto_16
    move-wide/from16 v26, v10

    goto :goto_17

    :cond_28
    sget-wide v10, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_16

    :goto_17
    if-eqz v3, :cond_29

    move-wide/from16 v31, v12

    goto :goto_18

    :cond_29
    move-wide/from16 v31, v7

    :goto_18
    if-eqz v5, :cond_2a

    move-object/from16 v28, v1

    goto :goto_19

    :cond_2a
    const/16 v28, 0x0

    :goto_19
    new-instance v1, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v16, v1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v35, 0xf67f

    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    :goto_1a
    if-eqz v1, :cond_2c

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v2, :cond_2d

    if-nez v5, :cond_2b

    new-instance v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x0

    invoke-direct {v7, v10, v8, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    goto :goto_1c

    :cond_2b
    iget-object v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    :goto_1c
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v4

    goto :goto_1b

    :cond_2c
    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    :cond_2d
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    iget-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    iget-object v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    sget-object v10, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2e

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2e

    iget-object v10, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v10, v10, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    sget-object v11, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    iget-object v10, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-wide v10, v10, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v10

    if-eqz v10, :cond_2e

    goto/16 :goto_2c

    :cond_2e
    instance-of v10, v1, Landroid/text/Spannable;

    if-eqz v10, :cond_2f

    move-object v10, v1

    check-cast v10, Landroid/text/Spannable;

    goto :goto_1d

    :cond_2f
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_1d
    iget-object v11, v5, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v11, v11, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    sget-object v12, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    sget-object v11, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12, v1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_30
    iget-object v1, v5, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v1, :cond_31

    iget-object v1, v1, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v1, :cond_31

    iget-boolean v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    goto :goto_1e

    :cond_31
    const/4 v1, 0x0

    :goto_1e
    const/16 v11, 0x21

    iget-object v12, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    if-eqz v1, :cond_33

    iget-object v1, v12, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_33

    iget-wide v14, v12, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v14, v15, v2, v8}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_32

    new-instance v13, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    invoke-direct {v13, v1}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v14, 0x0

    invoke-interface {v10, v13, v14, v1, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_32
    const/4 v14, 0x0

    goto :goto_24

    :cond_33
    iget-object v1, v12, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_34

    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    :cond_34
    iget-wide v13, v12, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v13, v14, v2, v8}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_32

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_35

    goto :goto_1f

    :cond_35
    invoke-static {v10}, Lkotlin/text/StringsKt___StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_36

    :goto_1f
    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v13

    add-int/2addr v13, v4

    :goto_20
    move/from16 v18, v13

    goto :goto_21

    :cond_36
    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v13

    goto :goto_20

    :goto_21
    new-instance v13, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v14, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    and-int/lit8 v15, v14, 0x1

    if-lez v15, :cond_37

    move/from16 v19, v4

    goto :goto_22

    :cond_37
    const/16 v19, 0x0

    :goto_22
    and-int/lit8 v14, v14, 0x10

    if-lez v14, :cond_38

    move/from16 v20, v4

    goto :goto_23

    :cond_38
    const/16 v20, 0x0

    :goto_23
    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    move-object/from16 v16, v13

    move/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIZZF)V

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v14, 0x0

    invoke-interface {v10, v13, v14, v1, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_24
    iget-object v1, v12, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v1, :cond_40

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v12

    move-object v15, v7

    iget-wide v6, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    invoke-static {v6, v7, v12, v13}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v12

    move-object/from16 v16, v5

    iget-wide v4, v1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    if-eqz v12, :cond_3a

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_26

    :cond_39
    :goto_25
    const/4 v4, 0x0

    goto/16 :goto_29

    :cond_3a
    :goto_26
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_25

    :cond_3b
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v11

    const-wide v13, 0x100000000L

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v17

    if-eqz v17, :cond_3c

    invoke-interface {v8, v6, v7}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v6

    const-wide v13, 0x200000000L

    goto :goto_27

    :cond_3c
    const-wide v13, 0x200000000L

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v11

    if-eqz v11, :cond_3d

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v6

    mul-float/2addr v6, v2

    goto :goto_27

    :cond_3d
    const/4 v6, 0x0

    :goto_27
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v11

    move v7, v2

    const-wide v1, 0x100000000L

    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v8, v4, v5}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v1

    goto :goto_28

    :cond_3e
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    mul-float/2addr v1, v7

    goto :goto_28

    :cond_3f
    const/4 v1, 0x0

    :goto_28
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v1, v5

    float-to-int v1, v1

    invoke-direct {v2, v4, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-interface {v10, v2, v4, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_29
    move-object/from16 v1, v16

    goto :goto_2a

    :cond_40
    move-object v15, v7

    move v4, v14

    move-object v1, v5

    :goto_2a
    invoke-static {v10, v1, v3, v8, v9}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpanStyles(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    move-object v1, v15

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const-class v1, Landroidx/emoji2/text/EmojiSpan;

    iget v2, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-interface {v10, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    move v7, v4

    :goto_2b
    if-ge v7, v1, :cond_41

    aget-object v2, v0, v7

    invoke-static {v2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/4 v3, 0x1

    add-int/2addr v7, v3

    goto :goto_2b

    :cond_41
    const/4 v2, 0x0

    new-instance v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    throw v2

    :cond_42
    move-object v1, v10

    :goto_2c
    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    new-instance v2, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    invoke-direct {v2, v1, v3, v4}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    return-void

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid TextDirection."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getHasStaleResolvedFonts()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->isStaleResolvedFont()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;->access$getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result p0

    return p0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 10

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v3, v4, v0}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    new-instance v3, Ljava/util/PriorityQueue;

    new-instance v4, Landroidx/compose/ui/text/android/LayoutIntrinsics_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/16 v5, 0xa

    invoke-direct {v3, v5, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v7

    if-ge v7, v5, :cond_1

    new-instance v7, Lkotlin/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    sub-int/2addr v8, v7

    sub-int v7, v4, v6

    if-ge v8, v7, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    new-instance v7, Lkotlin/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v6

    move v9, v6

    move v6, v4

    move v4, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v0, v5, v4, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_2

    :cond_4
    iput v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    move p0, v3

    :goto_3
    return p0
.end method
