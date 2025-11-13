.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# static fields
.field public static final whitelist FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final whitelist FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final whitelist FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final greylist-max-o TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final whitelist TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final whitelist TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    .line 292
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    .line 295
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 296
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 297
    .local v2, "next":I
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 298
    .local v3, "style":[Landroid/text/style/ParagraphStyle;
    const-string v4, " "

    .line 299
    .local v4, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    .line 301
    .local v5, "needDiv":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 302
    aget-object v7, v3, v6

    instance-of v7, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v7, :cond_2

    .line 303
    aget-object v7, v3, v6

    check-cast v7, Landroid/text/style/AlignmentSpan;

    .line 304
    invoke-interface {v7}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v7

    .line 305
    .local v7, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 306
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_0

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 308
    :cond_0
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_1

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 311
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 315
    .end local v6    # "j":I
    :cond_3
    if-eqz v5, :cond_4

    .line 316
    const-string v6, "<div "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_4
    invoke-static {p0, p1, v1, v2, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 321
    if-eqz v5, :cond_5

    .line 322
    const-string v6, "</div>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .end local v3    # "style":[Landroid/text/style/ParagraphStyle;
    .end local v4    # "elements":Ljava/lang/String;
    .end local v5    # "needDiv":Z
    :cond_5
    move v1, v2

    goto/16 :goto_0

    .line 325
    .end local v1    # "i":I
    .end local v2    # "next":I
    :cond_6
    return-void
.end method

.method public static whitelist escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    .line 233
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 235
    .local v0, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->-$$Nest$sfgetschema()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 244
    new-instance v7, Landroid/text/HtmlToSpannedConverter;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    .line 246
    .local v1, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v1}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v2

    return-object v2

    .line 239
    .end local v1    # "converter":Landroid/text/HtmlToSpannedConverter;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 236
    .end local v1    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_1
    move-exception v1

    .line 238
    .local v1, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static whitelist fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 347
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sub-int v1, p2, p1

    invoke-interface {v0, p0, p1, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string v0, " dir=\"rtl\""

    return-object v0

    .line 350
    :cond_0
    const-string v0, " dir=\"ltr\""

    return-object v0
.end method

.method private static greylist-max-o getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "forceNoVerticalMargin"    # Z
    .param p4, "includeTextAlign"    # Z

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "margin":Ljava/lang/String;
    const/4 v1, 0x0

    .line 359
    .local v1, "textAlign":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 360
    const-string/jumbo v0, "margin-top:0; margin-bottom:0;"

    .line 362
    :cond_0
    if-eqz p4, :cond_4

    .line 363
    const-class v2, Landroid/text/style/AlignmentSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    .line 366
    .local v2, "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 367
    aget-object v4, v2, v3

    .line 368
    .local v4, "s":Landroid/text/style/AlignmentSpan;
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x33

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    .line 369
    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 370
    .local v5, "alignment":Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_1

    .line 371
    const-string/jumbo v1, "text-align:start;"

    goto :goto_1

    .line 372
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_2

    .line 373
    const-string/jumbo v1, "text-align:center;"

    goto :goto_1

    .line 374
    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_4

    .line 375
    const-string/jumbo v1, "text-align:end;"

    goto :goto_1

    .line 366
    .end local v4    # "s":Landroid/text/style/AlignmentSpan;
    .end local v5    # "alignment":Landroid/text/Layout$Alignment;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 382
    .end local v2    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .end local v3    # "i":I
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 383
    const-string v2, ""

    return-object v2

    .line 386
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " style=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .local v2, "style":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 388
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 389
    :cond_6
    if-eqz v0, :cond_7

    .line 390
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 391
    :cond_7
    if-eqz v1, :cond_8

    .line 392
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_8
    :goto_2
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "option"    # I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .line 400
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    .line 401
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 405
    :goto_0
    return-void
.end method

.method private static greylist-max-o withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 474
    const-string v0, "<p"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    move v1, p2

    .local v1, "i":I
    :goto_0
    const-string v3, "</p>\n"

    if-ge v1, p3, :cond_5

    .line 478
    const/16 v4, 0xa

    invoke-static {p1, v4, v1, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    .line 479
    .local v5, "next":I
    if-gez v5, :cond_0

    .line 480
    move v5, p3

    .line 483
    :cond_0
    const/4 v6, 0x0

    .line 485
    .local v6, "nl":I
    :goto_1
    if-ge v5, p3, :cond_1

    invoke-interface {p1, v5}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_1

    .line 486
    add-int/lit8 v6, v6, 0x1

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 490
    :cond_1
    sub-int v4, v5, v6

    invoke-static {p0, p1, v1, v4}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 492
    const/4 v4, 0x1

    if-ne v6, v4, :cond_2

    .line 493
    const-string v3, "<br>\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 495
    :cond_2
    const/4 v4, 0x2

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 496
    const-string v7, "<br>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 498
    .end local v4    # "j":I
    :cond_3
    if-eq v5, p3, :cond_4

    .line 500
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .end local v6    # "nl":I
    :cond_4
    :goto_3
    move v1, v5

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    .end local v5    # "next":I
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    return-void
.end method

.method private static greylist-max-o withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 16
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 411
    .local v3, "isInList":Z
    move/from16 v4, p2

    .local v4, "i":I
    :goto_0
    if-gt v4, v2, :cond_9

    .line 412
    const/16 v5, 0xa

    invoke-static {v1, v5, v4, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    .line 413
    .local v5, "next":I
    if-gez v5, :cond_0

    .line 414
    move/from16 v5, p3

    .line 417
    :cond_0
    const-string v6, "</ul>\n"

    if-ne v5, v4, :cond_2

    .line 418
    if-eqz v3, :cond_1

    .line 420
    const/4 v3, 0x0

    .line 421
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_1
    const-string v6, "<br>\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 425
    :cond_2
    const/4 v7, 0x0

    .line 426
    .local v7, "isListItem":Z
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {v1, v4, v5, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ParagraphStyle;

    .line 427
    .local v8, "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    if-ge v11, v9, :cond_4

    aget-object v12, v8, v11

    .line 428
    .local v12, "paragraphStyle":Landroid/text/style/ParagraphStyle;
    invoke-interface {v1, v12}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    .line 429
    .local v13, "spanFlags":I
    and-int/lit8 v14, v13, 0x33

    const/16 v15, 0x33

    if-ne v14, v15, :cond_3

    instance-of v14, v12, Landroid/text/style/BulletSpan;

    if-eqz v14, :cond_3

    .line 431
    const/4 v7, 0x1

    .line 432
    goto :goto_2

    .line 427
    .end local v12    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .end local v13    # "spanFlags":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 436
    :cond_4
    :goto_2
    const-string v9, ">\n"

    const/4 v11, 0x1

    if-eqz v7, :cond_5

    if-nez v3, :cond_5

    .line 438
    const/4 v3, 0x1

    .line 439
    const-string v12, "<ul"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 440
    invoke-static {v1, v4, v5, v11, v10}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 441
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_5
    if-eqz v3, :cond_6

    if-nez v7, :cond_6

    .line 446
    const/4 v3, 0x0

    .line 447
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_6
    if-eqz v7, :cond_7

    const-string/jumbo v10, "li"

    goto :goto_3

    :cond_7
    const-string/jumbo v10, "p"

    .line 451
    .local v10, "tagType":Ljava/lang/String;
    :goto_3
    const-string v12, "<"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 452
    invoke-static {v1, v4, v5}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    xor-int/lit8 v13, v7, 0x1

    .line 453
    invoke-static {v1, v4, v5, v13, v11}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 454
    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-static {v0, v1, v4, v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 458
    const-string v11, "</"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    if-ne v5, v2, :cond_8

    if-eqz v3, :cond_8

    .line 463
    const/4 v3, 0x0

    .line 464
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .end local v7    # "isListItem":Z
    .end local v8    # "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    .end local v10    # "tagType":Ljava/lang/String;
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 411
    move v4, v5

    goto/16 :goto_0

    .line 470
    .end local v4    # "i":I
    .end local v5    # "next":I
    :cond_9
    return-void
.end method

.method private static greylist-max-o withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .line 330
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 331
    const-class v1, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 332
    .local v1, "next":I
    const-class v2, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    .line 334
    .local v2, "quotes":[Landroid/text/style/QuoteSpan;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 335
    .local v6, "quote":Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .end local v6    # "quote":Landroid/text/style/QuoteSpan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 338
    :cond_0
    invoke-static {p0, p1, v0, v1, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 340
    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 341
    .local v5, "quote":Landroid/text/style/QuoteSpan;
    const-string v6, "</blockquote>\n"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 330
    .end local v2    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_1
    move v0, v1

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    .end local v1    # "next":I
    :cond_2
    return-void
.end method

.method private static greylist-max-o withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 2
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    .line 283
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 284
    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 285
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 289
    return-void
.end method

.method private static greylist-max-o withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 511
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1c

    .line 512
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 513
    .local v1, "next":I
    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 515
    .local v2, "style":[Landroid/text/style/CharacterStyle;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    const-string/jumbo v5, "monospace"

    const/4 v6, 0x1

    if-ge v3, v4, :cond_e

    .line 516
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/StyleSpan;

    if-eqz v4, :cond_1

    .line 517
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 519
    .local v4, "s":I
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_0

    .line 520
    const-string v7, "<b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_0
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_1

    .line 523
    const-string v7, "<i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .end local v4    # "s":I
    :cond_1
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/TypefaceSpan;

    if-eqz v4, :cond_2

    .line 527
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v4}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 530
    const-string v5, "<tt>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/SuperscriptSpan;

    if-eqz v4, :cond_3

    .line 534
    const-string v4, "<sup>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_3
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/SubscriptSpan;

    if-eqz v4, :cond_4

    .line 537
    const-string v4, "<sub>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_4
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/UnderlineSpan;

    if-eqz v4, :cond_5

    .line 540
    const-string v4, "<u>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_5
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/StrikethroughSpan;

    if-eqz v4, :cond_6

    .line 543
    const-string v4, "<span style=\"text-decoration:line-through;\">"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_6
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/URLSpan;

    const-string v5, "\">"

    if-eqz v4, :cond_7

    .line 546
    const-string v4, "<a href=\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/URLSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_7
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/ImageSpan;

    if-eqz v4, :cond_8

    .line 551
    const-string v4, "<img src=\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/ImageSpan;

    invoke-virtual {v4}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    move v0, v1

    .line 558
    :cond_8
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 559
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/AbsoluteSizeSpan;

    .line 560
    .local v4, "s":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v4}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    .line 561
    .local v7, "sizeDip":F
    invoke-virtual {v4}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v8

    if-nez v8, :cond_9

    .line 562
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v8

    .line 563
    .local v8, "application":Landroid/app/Application;
    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v9

    .line 567
    .end local v8    # "application":Landroid/app/Application;
    :cond_9
    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "<span style=\"font-size:%.0fpx\";>"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .end local v4    # "s":Landroid/text/style/AbsoluteSizeSpan;
    .end local v7    # "sizeDip":F
    :cond_a
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/RelativeSizeSpan;

    if-eqz v4, :cond_b

    .line 570
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v4}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v4

    .line 571
    .local v4, "sizeEm":F
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "<span style=\"font-size:%.2fem;\">"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .end local v4    # "sizeEm":F
    :cond_b
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/ForegroundColorSpan;

    const v7, 0xffffff

    if-eqz v4, :cond_c

    .line 574
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v4

    .line 575
    .local v4, "color":I
    new-array v8, v6, [Ljava/lang/Object;

    and-int v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "<span style=\"color:#%06X;\">"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .end local v4    # "color":I
    :cond_c
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/BackgroundColorSpan;

    if-eqz v4, :cond_d

    .line 578
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v4}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v4

    .line 579
    .restart local v4    # "color":I
    new-array v6, v6, [Ljava/lang/Object;

    and-int/2addr v7, v4

    .line 580
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 579
    const-string v5, "<span style=\"background-color:#%06X;\">"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .end local v4    # "color":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 584
    .end local v3    # "j":I
    :cond_e
    invoke-static {p0, p1, v0, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 586
    array-length v3, v2

    sub-int/2addr v3, v6

    .restart local v3    # "j":I
    :goto_2
    if-ltz v3, :cond_1b

    .line 587
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/BackgroundColorSpan;

    const-string v6, "</span>"

    if-eqz v4, :cond_f

    .line 588
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_f
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/ForegroundColorSpan;

    if-eqz v4, :cond_10

    .line 591
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_10
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/RelativeSizeSpan;

    if-eqz v4, :cond_11

    .line 594
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_11
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v4, :cond_12

    .line 597
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_12
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/URLSpan;

    if-eqz v4, :cond_13

    .line 600
    const-string v4, "</a>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_13
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/StrikethroughSpan;

    if-eqz v4, :cond_14

    .line 603
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :cond_14
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/UnderlineSpan;

    if-eqz v4, :cond_15

    .line 606
    const-string v4, "</u>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_15
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/SubscriptSpan;

    if-eqz v4, :cond_16

    .line 609
    const-string v4, "</sub>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_16
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/SuperscriptSpan;

    if-eqz v4, :cond_17

    .line 612
    const-string v4, "</sup>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_17
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/TypefaceSpan;

    if-eqz v4, :cond_18

    .line 615
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v4}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v4

    .line 617
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 618
    const-string v6, "</tt>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .end local v4    # "s":Ljava/lang/String;
    :cond_18
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/StyleSpan;

    if-eqz v4, :cond_1a

    .line 622
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 624
    .local v4, "s":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_19

    .line 625
    const-string v6, "</b>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_19
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1a

    .line 628
    const-string v6, "</i>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .end local v4    # "s":I
    :cond_1a
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 511
    .end local v2    # "style":[Landroid/text/style/CharacterStyle;
    .end local v3    # "j":I
    :cond_1b
    move v0, v1

    goto/16 :goto_0

    .line 633
    .end local v0    # "i":I
    .end local v1    # "next":I
    :cond_1c
    return-void
.end method

.method private static greylist-max-r withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 638
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_a

    .line 639
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 641
    .local v1, "c":C
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    .line 642
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 643
    :cond_0
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 644
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 645
    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    .line 646
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 647
    :cond_2
    const-string v2, ";"

    const-string v3, "&#"

    const v4, 0xd800

    if-lt v1, v4, :cond_4

    const v5, 0xdfff

    if-gt v1, v5, :cond_4

    .line 648
    const v6, 0xdc00

    if-ge v1, v6, :cond_9

    add-int/lit8 v7, v0, 0x1

    if-ge v7, p3, :cond_9

    .line 649
    add-int/lit8 v7, v0, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 650
    .local v7, "d":C
    if-lt v7, v6, :cond_3

    if-gt v7, v5, :cond_3

    .line 651
    add-int/lit8 v0, v0, 0x1

    .line 652
    const/high16 v5, 0x10000

    sub-int v4, v1, v4

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v4, v5

    sub-int v5, v7, v6

    or-int/2addr v4, v5

    .line 653
    .local v4, "codepoint":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .end local v4    # "codepoint":I
    .end local v7    # "d":C
    :cond_3
    goto :goto_3

    .line 656
    :cond_4
    const/16 v4, 0x7e

    if-gt v1, v4, :cond_8

    const/16 v4, 0x20

    if-ge v1, v4, :cond_5

    goto :goto_2

    .line 658
    :cond_5
    if-ne v1, v4, :cond_7

    .line 659
    :goto_1
    add-int/lit8 v2, v0, 0x1

    if-ge v2, p3, :cond_6

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_6

    .line 660
    const-string v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 664
    :cond_6
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 666
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 657
    :cond_8
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .end local v1    # "c":C
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 669
    .end local v0    # "i":I
    :cond_a
    return-void
.end method
