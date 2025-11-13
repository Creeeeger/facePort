.class public final Landroidx/compose/ui/platform/AndroidClipboardManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/platform/ClipboardManager;


# instance fields
.field public final clipboardManager:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->clipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method


# virtual methods
.method public final setText(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidClipboardManager;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStyles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroidx/compose/ui/platform/EncodeHelper;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iput-object v4, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStyles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_13

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    iget-object v9, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    iput-object v9, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v9

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_1

    invoke-virtual {v3, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v13

    iget-object v9, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {v9, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    :cond_1
    sget-wide v13, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    move-wide/from16 p0, v11

    iget-wide v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static {v10, v11, v13, v14}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v12

    const/4 v15, 0x2

    if-nez v12, :cond_2

    invoke-virtual {v3, v15}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    invoke-virtual {v3, v10, v11}, Landroidx/compose/ui/platform/EncodeHelper;->encode--R2X_6o(J)V

    :cond_2
    const/4 v10, 0x3

    iget-object v11, v8, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v11, :cond_3

    invoke-virtual {v3, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget v11, v11, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget-object v12, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget-object v11, v8, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-eqz v11, :cond_6

    const/4 v12, 0x4

    invoke-virtual {v3, v12}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget v11, v11, Landroidx/compose/ui/text/font/FontStyle;->value:I

    invoke-static {v11, v5}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    move v11, v5

    goto :goto_1

    :cond_5
    const/4 v9, 0x1

    invoke-static {v11, v9}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v3, v11}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    :cond_6
    iget-object v11, v8, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v11, :cond_b

    const/4 v12, 0x5

    invoke-virtual {v3, v12}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget v11, v11, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    invoke-static {v11, v5}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    move v10, v5

    goto :goto_2

    :cond_8
    const/4 v9, 0x1

    invoke-static {v11, v9}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v12

    if-eqz v12, :cond_9

    move v10, v9

    goto :goto_2

    :cond_9
    invoke-static {v11, v15}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_a

    move v10, v15

    goto :goto_2

    :cond_a
    invoke-static {v11, v10}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_7

    :goto_2
    invoke-virtual {v3, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    :cond_b
    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    if-eqz v9, :cond_c

    const/4 v10, 0x6

    invoke-virtual {v3, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget-object v10, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_c
    iget-wide v9, v8, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v11

    if-nez v11, :cond_d

    const/4 v11, 0x7

    invoke-virtual {v3, v11}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    invoke-virtual {v3, v9, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode--R2X_6o(J)V

    :cond_d
    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v9, :cond_e

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget v9, v9, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    invoke-virtual {v3, v9}, Landroidx/compose/ui/platform/EncodeHelper;->encode(F)V

    :cond_e
    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-eqz v9, :cond_f

    const/16 v10, 0x9

    invoke-virtual {v3, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget v10, v9, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    invoke-virtual {v3, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode(F)V

    iget v9, v9, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    invoke-virtual {v3, v9}, Landroidx/compose/ui/platform/EncodeHelper;->encode(F)V

    :cond_f
    iget-wide v9, v8, Landroidx/compose/ui/text/SpanStyle;->background:J

    move-wide/from16 v11, p0

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v11

    if-nez v11, :cond_10

    const/16 v11, 0xa

    invoke-virtual {v3, v11}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget-object v11, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {v11, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    :cond_10
    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    if-eqz v9, :cond_11

    const/16 v10, 0xb

    invoke-virtual {v3, v10}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget-object v10, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    iget v9, v9, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->writeInt(I)V

    :cond_11
    iget-object v8, v8, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-eqz v8, :cond_12

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Landroidx/compose/ui/platform/EncodeHelper;->encode(B)V

    iget-object v9, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    iget-wide v10, v8, Landroidx/compose/ui/graphics/Shadow;->color:J

    invoke-virtual {v9, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v8, Landroidx/compose/ui/graphics/Shadow;->offset:J

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    invoke-virtual {v3, v11}, Landroidx/compose/ui/platform/EncodeHelper;->encode(F)V

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    invoke-virtual {v3, v9}, Landroidx/compose/ui/platform/EncodeHelper;->encode(F)V

    iget v8, v8, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    invoke-virtual {v3, v8}, Landroidx/compose/ui/platform/EncodeHelper;->encode(F)V

    :cond_12
    new-instance v8, Landroid/text/Annotation;

    iget-object v9, v3, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v9

    invoke-static {v9, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    const-string v10, "androidx.compose.text.SpanStyle"

    invoke-direct {v8, v10, v9}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    const/16 v10, 0x21

    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-virtual {v2, v8, v7, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_13
    move-object v1, v2

    :goto_3
    const-string v2, "plain text"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
