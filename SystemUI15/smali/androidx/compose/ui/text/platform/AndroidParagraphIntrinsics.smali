.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range;",
            ">;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    move-object/from16 v4, p5

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    new-instance v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-interface/range {p6 .. p6}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;-><init>(IF)V

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;->access$getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    sget-object v5, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->INSTANCE:Landroidx/compose/ui/text/platform/EmojiCompatStatus;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/compose/ui/text/platform/DefaultImpl;

    iget-object v8, v5, Landroidx/compose/ui/text/platform/DefaultImpl;->loadState:Landroidx/compose/runtime/State;

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroidx/compose/ui/text/platform/DefaultImpl;->getFontLoadState()Landroidx/compose/runtime/State;

    move-result-object v8

    iput-object v8, v5, Landroidx/compose/ui/text/platform/DefaultImpl;->loadState:Landroidx/compose/runtime/State;

    goto :goto_0

    :cond_2
    sget-object v8, Landroidx/compose/ui/text/platform/EmojiCompatStatus_androidKt;->Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;

    :goto_0
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_1
    iput-boolean v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    iget-object v5, v1, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v8, v5, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    sget-object v10, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/text/style/TextDirection;->ContentOrLtr:I

    invoke-static {v8, v10}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    :goto_2
    const/4 v8, 0x2

    goto :goto_4

    :cond_4
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->ContentOrRtl:I

    invoke-static {v8, v10}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    const/4 v8, 0x3

    goto :goto_4

    :cond_6
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->Ltr:I

    invoke-static {v8, v10}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_7

    move v8, v7

    goto :goto_4

    :cond_7
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->Rtl:I

    invoke-static {v8, v10}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_8

    move v8, v6

    goto :goto_4

    :cond_8
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->Content:I

    invoke-static {v8, v10}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_9

    move v8, v6

    goto :goto_3

    :cond_9
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->Unspecified:I

    invoke-static {v8, v10}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v8

    :goto_3
    if-eqz v8, :cond_4e

    if-eqz v9, :cond_a

    iget-object v8, v9, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/intl/Locale;

    iget-object v8, v8, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    if-nez v8, :cond_b

    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-eqz v8, :cond_3

    if-eq v8, v6, :cond_5

    goto :goto_2

    :goto_4
    iput v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    new-instance v8, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;

    invoke-direct {v8, v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V

    iget-object v5, v5, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v5, :cond_c

    sget-object v5, Landroidx/compose/ui/text/style/TextMotion;->Companion:Landroidx/compose/ui/text/style/TextMotion$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    :cond_c
    iget-boolean v9, v5, Landroidx/compose/ui/text/style/TextMotion;->subpixelTextPositioning:Z

    if-eqz v9, :cond_d

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v9

    or-int/lit16 v9, v9, 0x80

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, -0x81

    :goto_5
    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setFlags(I)V

    sget-object v9, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Companion:Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Linear:I

    iget v5, v5, Landroidx/compose/ui/text/style/TextMotion;->linearity:I

    invoke-static {v5, v9}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x40

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setHinting(I)V

    goto :goto_6

    :cond_e
    sget v9, Landroidx/compose/ui/text/style/TextMotion$Linearity;->FontHinting:I

    invoke-static {v5, v9}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setHinting(I)V

    goto :goto_6

    :cond_f
    sget v9, Landroidx/compose/ui/text/style/TextMotion$Linearity;->None:I

    invoke-static {v5, v9}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setHinting(I)V

    goto :goto_6

    :cond_10
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    :goto_6
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    iget-wide v9, v1, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v9

    sget-object v5, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v5

    iget-wide v13, v1, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    if-eqz v5, :cond_11

    invoke-interface {v3, v13, v14}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_7

    :cond_11
    sget-wide v11, Landroidx/compose/ui/unit/TextUnitType;->Em:J

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v9

    mul-float/2addr v9, v5

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_12
    :goto_7
    iget-object v5, v1, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v10, v1, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v10, :cond_14

    if-nez v9, :cond_14

    if-eqz v5, :cond_13

    goto :goto_8

    :cond_13
    move v11, v7

    goto :goto_9

    :cond_14
    :goto_8
    move v11, v6

    :goto_9
    if-eqz v11, :cond_18

    if-nez v5, :cond_15

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_15
    if-eqz v9, :cond_16

    iget v9, v9, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_a

    :cond_16
    sget-object v9, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v9, v7

    :goto_a
    invoke-static {v9}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v9

    iget-object v11, v1, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v11, :cond_17

    iget v11, v11, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    goto :goto_b

    :cond_17
    sget-object v11, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Landroidx/compose/ui/text/font/FontSynthesis;->All:I

    :goto_b
    invoke-static {v11}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v11

    invoke-virtual {v8, v10, v5, v9, v11}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_18
    const/16 v5, 0xa

    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    if-eqz v9, :cond_1a

    sget-object v10, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-virtual {v10}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    sget-object v10, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, v9, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/text/intl/Locale;

    iget-object v11, v11, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    new-array v9, v7, [Ljava/util/Locale;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/util/Locale;

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/util/Locale;

    new-instance v10, Landroid/os/LocaleList;

    invoke-direct {v10, v9}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_1a
    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    if-eqz v9, :cond_1b

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1b
    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-eqz v9, :cond_1c

    sget-object v10, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    invoke-virtual {v9, v10}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v10

    iget v11, v9, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    mul-float/2addr v10, v11

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setTextScaleX(F)V

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v10

    iget v9, v9, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    add-float/2addr v10, v9

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_1c
    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v11, Landroidx/compose/ui/geometry/Size;->Unspecified:J

    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v9

    invoke-virtual {v4, v10, v11, v12, v9}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v4, v9}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v4, v9}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-virtual {v4, v9}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    iget-wide v9, v1, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v11

    sget-object v13, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1d

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v11

    cmpg-float v11, v11, v12

    if-nez v11, :cond_1e

    :cond_1d
    move-object/from16 p5, v8

    goto :goto_e

    :cond_1e
    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v11

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v15

    mul-float/2addr v15, v11

    invoke-interface {v3, v9, v10}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v3

    cmpg-float v11, v15, v12

    if-nez v11, :cond_1f

    :goto_d
    move-object/from16 p5, v8

    goto :goto_f

    :cond_1f
    div-float/2addr v3, v15

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_d

    :goto_e
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v7

    sget-wide v5, Landroidx/compose/ui/unit/TextUnitType;->Em:J

    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_20
    :goto_f
    if-eqz v2, :cond_22

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v4

    invoke-static {v4, v5, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v2

    cmpg-float v2, v2, v12

    if-nez v2, :cond_21

    goto :goto_10

    :cond_21
    const/4 v2, 0x1

    goto :goto_11

    :cond_22
    :goto_10
    const/4 v2, 0x0

    :goto_11
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    iget-wide v6, v1, Landroidx/compose/ui/text/SpanStyle;->background:J

    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_23

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->Transparent:J

    invoke-static {v6, v7, v13, v14}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_23

    const/4 v8, 0x1

    goto :goto_12

    :cond_23
    const/4 v8, 0x0

    :goto_12
    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v1, :cond_25

    sget-object v11, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v1, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_24

    goto :goto_13

    :cond_24
    const/4 v11, 0x1

    goto :goto_14

    :cond_25
    :goto_13
    const/4 v11, 0x0

    :goto_14
    const/4 v13, 0x0

    if-nez v2, :cond_26

    if-nez v8, :cond_26

    if-nez v11, :cond_26

    move-object v1, v13

    goto :goto_19

    :cond_26
    if-eqz v2, :cond_27

    :goto_15
    move-wide/from16 v24, v9

    goto :goto_16

    :cond_27
    sget-object v2, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_15

    :goto_16
    if-eqz v8, :cond_28

    move-wide/from16 v29, v6

    goto :goto_17

    :cond_28
    move-wide/from16 v29, v4

    :goto_17
    if-eqz v11, :cond_29

    move-object/from16 v26, v1

    goto :goto_18

    :cond_29
    move-object/from16 v26, v13

    :goto_18
    new-instance v1, Landroidx/compose/ui/text/SpanStyle;

    move-object v14, v1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v35, 0xf67f

    const/16 v36, 0x0

    invoke-direct/range {v14 .. v36}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_19
    if-eqz v1, :cond_2b

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v2, :cond_2c

    if-nez v5, :cond_2a

    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v1, v8, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    const/4 v3, 0x1

    goto :goto_1b

    :cond_2a
    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    const/4 v3, 0x1

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    :goto_1b
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v3

    goto :goto_1a

    :cond_2b
    iget-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    :cond_2c
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    iget-object v11, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v14, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    iget-object v15, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    iget-boolean v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    sget-object v6, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    if-eqz v5, :cond_30

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, v11, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v5, :cond_2d

    iget-object v5, v5, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v5, :cond_2d

    iget v5, v5, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    invoke-static {v5}, Landroidx/compose/ui/text/EmojiSupportMatch;->box-impl(I)Landroidx/compose/ui/text/EmojiSupportMatch;

    move-result-object v13

    :cond_2d
    sget-object v5, Landroidx/compose/ui/text/EmojiSupportMatch;->Companion:Landroidx/compose/ui/text/EmojiSupportMatch$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/text/EmojiSupportMatch;->All:I

    if-nez v13, :cond_2e

    const/4 v10, 0x0

    goto :goto_1d

    :cond_2e
    iget v6, v13, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    if-ne v6, v5, :cond_2f

    const/4 v5, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v5, 0x0

    :goto_1c
    move v10, v5

    :goto_1d
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const v9, 0x7fffffff

    const/4 v6, 0x0

    move-object v8, v1

    invoke-virtual/range {v5 .. v10}, Landroidx/emoji2/text/EmojiCompat;->process(IILjava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_30
    move-object v5, v1

    :goto_1e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_31

    iget-object v6, v11, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v6, v6, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    iget-object v6, v11, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-wide v6, v6, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v6

    if-eqz v6, :cond_31

    goto/16 :goto_30

    :cond_31
    instance-of v6, v5, Landroid/text/Spannable;

    if-eqz v6, :cond_32

    check-cast v5, Landroid/text/Spannable;

    goto :goto_1f

    :cond_32
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v5, v6

    :goto_1f
    iget-object v6, v11, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v6, v6, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    sget-object v7, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    sget-object v6, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_33
    iget-object v1, v11, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v1, :cond_34

    iget-object v1, v1, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v1, :cond_34

    iget-boolean v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    goto :goto_20

    :cond_34
    const/4 v1, 0x0

    :goto_20
    const/16 v6, 0x21

    iget-object v7, v11, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    if-eqz v1, :cond_35

    iget-object v1, v7, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_35

    iget-wide v8, v7, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v8, v9, v2, v15}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3c

    new-instance v8, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    invoke-direct {v8, v1}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_26

    :cond_35
    iget-object v1, v7, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_36

    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    :cond_36
    iget-wide v8, v7, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v8, v9, v2, v15}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3c

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_37

    goto :goto_21

    :cond_37
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_3b

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_38

    :goto_21
    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v8

    const/4 v3, 0x1

    add-int/2addr v8, v3

    :goto_22
    move/from16 v19, v8

    goto :goto_23

    :cond_38
    const/4 v3, 0x1

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v8

    goto :goto_22

    :goto_23
    new-instance v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v9, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    and-int/lit8 v10, v9, 0x1

    if-lez v10, :cond_39

    const/16 v20, 0x1

    goto :goto_24

    :cond_39
    const/16 v20, 0x0

    :goto_24
    and-int/lit8 v9, v9, 0x10

    if-lez v9, :cond_3a

    const/16 v21, 0x1

    goto :goto_25

    :cond_3a
    const/16 v21, 0x0

    :goto_25
    const/16 v18, 0x0

    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    move-object/from16 v16, v8

    move/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIIZZF)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_26

    :cond_3b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Char sequence is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_26
    iget-object v1, v7, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v1, :cond_43

    const/4 v7, 0x0

    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v8

    iget-wide v12, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    invoke-static {v12, v13, v8, v9}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v8

    iget-wide v9, v1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    move-object/from16 p6, v4

    if-eqz v8, :cond_3d

    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static {v9, v10, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_44

    :cond_3d
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto/16 :goto_2a

    :cond_3e
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v3

    sget-object v7, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v16

    if-eqz v16, :cond_3f

    invoke-interface {v15, v12, v13}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v3

    move-wide/from16 v17, v7

    goto :goto_27

    :cond_3f
    move-wide/from16 v17, v7

    sget-wide v6, Landroidx/compose/ui/unit/TextUnitType;->Em:J

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v3

    mul-float/2addr v3, v2

    goto :goto_27

    :cond_40
    const/4 v3, 0x0

    :goto_27
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v6

    move-wide/from16 v12, v17

    invoke-static {v6, v7, v12, v13}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v15, v9, v10}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v12

    goto :goto_28

    :cond_41
    sget-wide v12, Landroidx/compose/ui/unit/TextUnitType;->Em:J

    invoke-static {v6, v7, v12, v13}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v4

    mul-float v12, v4, v2

    goto :goto_28

    :cond_42
    const/4 v12, 0x0

    :goto_28
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    float-to-double v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v4, v6

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v6, 0x21

    invoke-interface {v5, v2, v4, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_29
    move-object/from16 v2, p5

    move-object/from16 v3, p6

    goto :goto_2b

    :cond_43
    move-object/from16 p6, v4

    :cond_44
    :goto_2a
    const/4 v4, 0x0

    goto :goto_29

    :goto_2b
    invoke-static {v5, v11, v3, v15, v2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpanStyles(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move v8, v4

    :goto_2c
    if-ge v8, v2, :cond_4d

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v6, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/text/Placeholder;

    const-class v7, Landroidx/emoji2/text/EmojiSpan;

    iget v9, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v10, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-interface {v5, v9, v10, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    array-length v11, v7

    move v3, v4

    :goto_2d
    if-ge v3, v11, :cond_45

    aget-object v12, v7, v3

    check-cast v12, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v5, v12}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/4 v1, 0x1

    add-int/lit8 v12, v3, 0x1

    move v3, v12

    goto :goto_2d

    :cond_45
    new-instance v1, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    iget-wide v11, v6, Landroidx/compose/ui/text/Placeholder;->width:J

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v18

    iget-wide v11, v6, Landroidx/compose/ui/text/Placeholder;->width:J

    invoke-static {v11, v12}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->getSpanUnit--R2X_6o(J)I

    move-result v19

    iget-wide v11, v6, Landroidx/compose/ui/text/Placeholder;->height:J

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v20

    invoke-static {v11, v12}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->getSpanUnit--R2X_6o(J)I

    move-result v21

    invoke-interface {v15}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v7

    invoke-interface {v15}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v11

    mul-float v22, v11, v7

    sget-object v7, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->Companion:Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->AboveBaseline:I

    iget v6, v6, Landroidx/compose/ui/text/Placeholder;->placeholderVerticalAlign:I

    invoke-static {v6, v7}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_46

    move/from16 v23, v4

    goto :goto_2f

    :cond_46
    sget v7, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->Top:I

    invoke-static {v6, v7}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_47

    const/16 v23, 0x1

    goto :goto_2f

    :cond_47
    sget v7, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->Bottom:I

    invoke-static {v6, v7}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_48

    const/16 v23, 0x2

    goto :goto_2f

    :cond_48
    sget v7, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->Center:I

    invoke-static {v6, v7}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_49

    const/16 v23, 0x3

    goto :goto_2f

    :cond_49
    sget v7, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->TextTop:I

    invoke-static {v6, v7}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/4 v6, 0x4

    :goto_2e
    move/from16 v23, v6

    goto :goto_2f

    :cond_4a
    sget v7, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->TextBottom:I

    invoke-static {v6, v7}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v6, 0x5

    goto :goto_2e

    :cond_4b
    sget v7, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->TextCenter:I

    invoke-static {v6, v7}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v6, 0x6

    goto :goto_2e

    :goto_2f
    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v23}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;-><init>(FIFIFI)V

    const/16 v6, 0x21

    invoke-interface {v5, v1, v9, v10, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v1, 0x1

    add-int/2addr v8, v1

    goto/16 :goto_2c

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid PlaceholderVerticalAlign"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    :goto_30
    iput-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    new-instance v1, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    invoke-direct {v1, v5, v2, v3}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    return-void

    :cond_4e
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
    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    if-nez v0, :cond_4

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;->access$getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->INSTANCE:Landroidx/compose/ui/text/platform/EmojiCompatStatus;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/compose/ui/text/platform/DefaultImpl;

    iget-object v0, p0, Landroidx/compose/ui/text/platform/DefaultImpl;->loadState:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/DefaultImpl;->getFontLoadState()Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/DefaultImpl;->loadState:Landroidx/compose/runtime/State;

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/compose/ui/text/platform/EmojiCompatStatus_androidKt;->Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;

    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
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

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v2, v3}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    new-instance v3, Ljava/util/PriorityQueue;

    new-instance v4, Landroidx/compose/ui/text/android/LayoutIntrinsics_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/16 v6, 0xa

    invoke-direct {v3, v6, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v4

    :goto_0
    move v9, v5

    move v5, v4

    move v4, v9

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v7

    if-ge v7, v6, :cond_1

    new-instance v7, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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

    sub-int v7, v5, v4

    if-ge v8, v7, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    new-instance v7, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v4

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
