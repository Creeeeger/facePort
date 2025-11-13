.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$StringWithRemovedChars;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;,
        Landroid/text/TextUtils$SafeStringFlags;
    }
.end annotation


# static fields
.field public static final greylist-max-o ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final greylist-max-o ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final blacklist ACCESSIBILITY_REPLACEMENT_SPAN:I = 0x1d

.field public static final greylist-max-o ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final greylist-max-o ALIGNMENT_SPAN:I = 0x1

.field public static final greylist-max-o ANNOTATION:I = 0x12

.field public static final greylist-max-o BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final greylist-max-o BULLET_SPAN:I = 0x8

.field public static final whitelist CAP_MODE_CHARACTERS:I = 0x1000

.field public static final whitelist CAP_MODE_SENTENCES:I = 0x4000

.field public static final whitelist CAP_MODE_WORDS:I = 0x2000

.field public static final whitelist CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EASY_EDIT_SPAN:I = 0x16

.field static final greylist-max-o ELLIPSIS_FILLER:C = '\ufeff'

.field private static final greylist-max-o ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final greylist-max-o ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final greylist-max-o FIRST_SPAN:I = 0x1

.field public static final greylist-max-o FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final greylist-max-o LAST_SPAN:I = 0x1d

.field public static final greylist-max-o LEADING_MARGIN_SPAN:I = 0xa

.field public static final blacklist LINE_BACKGROUND_SPAN:I = 0x1b

.field private static final blacklist LINE_FEED_CODE_POINT:I = 0xa

.field public static final blacklist LINE_HEIGHT_SPAN:I = 0x1c

.field public static final greylist-max-o LOCALE_SPAN:I = 0x17

.field private static final blacklist NBSP_CODE_POINT:I = 0xa0

.field private static final greylist-max-o PARCEL_SAFE_TEXT_LENGTH:I = 0x186a0

.field public static final greylist-max-o QUOTE_SPAN:I = 0x9

.field public static final greylist-max-o RELATIVE_SIZE_SPAN:I = 0x3

.field public static final whitelist SAFE_STRING_FLAG_FIRST_LINE:I = 0x4

.field public static final whitelist SAFE_STRING_FLAG_SINGLE_LINE:I = 0x2

.field public static final whitelist SAFE_STRING_FLAG_TRIM:I = 0x1

.field public static final greylist-max-o SCALE_X_SPAN:I = 0x4

.field public static final greylist-max-o SPELL_CHECK_SPAN:I = 0x14

.field public static final greylist-max-o STRIKETHROUGH_SPAN:I = 0x5

.field public static final greylist-max-o STYLE_SPAN:I = 0x7

.field public static final greylist-max-o SUBSCRIPT_SPAN:I = 0xf

.field public static final greylist-max-o SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final greylist-max-o SUGGESTION_SPAN:I = 0x13

.field public static final greylist-max-o SUPERSCRIPT_SPAN:I = 0xe

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TextUtils"

.field public static final greylist-max-o TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final greylist-max-o TTS_SPAN:I = 0x18

.field public static final greylist-max-o TYPEFACE_SPAN:I = 0xd

.field public static final greylist-max-o UNDERLINE_SPAN:I = 0x6

.field public static final greylist-max-o URL_SPAN:I = 0xb

.field private static greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sTemp:[C


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 848
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2565
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 2567
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 2569
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1569
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 22
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 1581
    .local v8, "mt":Landroid/text/MeasuredParagraph;
    const/4 v9, 0x0

    .line 1583
    .local v9, "tempMt":Landroid/text/MeasuredParagraph;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1584
    .local v0, "len":I
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v4, v0

    move-object/from16 v5, p5

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v1

    move-object v8, v1

    .line 1585
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1586
    .local v1, "width":F
    cmpg-float v2, v1, p2

    if-gtz v2, :cond_2

    .line 1587
    nop

    .line 1639
    if-eqz v8, :cond_0

    .line 1640
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1642
    :cond_0
    if-eqz v9, :cond_1

    .line 1643
    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1587
    :cond_1
    return-object v7

    .line 1590
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v2

    .line 1592
    .local v2, "buf":[C
    const/4 v3, 0x0

    .line 1593
    .local v3, "commaCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x2c

    if-ge v4, v0, :cond_4

    .line 1594
    aget-char v6, v2, v4

    if-ne v6, v5, :cond_3

    .line 1595
    add-int/lit8 v3, v3, 0x1

    .line 1593
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1599
    .end local v4    # "i":I
    :cond_4
    add-int/lit8 v4, v3, 0x1

    .line 1601
    .local v4, "remaining":I
    const/4 v6, 0x0

    .line 1602
    .local v6, "ok":I
    const-string v10, ""

    .line 1604
    .local v10, "okFormat":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1605
    .local v11, "w":I
    const/4 v12, 0x0

    .line 1606
    .local v12, "count":I
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getWidths()Landroid/text/AutoGrowArray$FloatArray;

    move-result-object v13

    invoke-virtual {v13}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v13

    .line 1608
    .local v13, "widths":[F
    const/4 v14, 0x0

    move v15, v14

    .local v15, "i":I
    :goto_1
    if-ge v15, v0, :cond_8

    .line 1609
    int-to-float v14, v11

    aget v17, v13, v15

    add-float v14, v14, v17

    float-to-int v11, v14

    .line 1611
    aget-char v14, v2, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v14, v5, :cond_6

    .line 1612
    add-int/lit8 v12, v12, 0x1

    .line 1617
    add-int/lit8 v4, v4, -0x1

    const-string v14, " "

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1618
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v20, v1

    move-object/from16 v1, p4

    .local v5, "format":Ljava/lang/String;
    goto :goto_2

    .line 1639
    .end local v0    # "len":I
    .end local v1    # "width":F
    .end local v2    # "buf":[C
    .end local v3    # "commaCount":I
    .end local v4    # "remaining":I
    .end local v5    # "format":Ljava/lang/String;
    .end local v6    # "ok":I
    .end local v10    # "okFormat":Ljava/lang/String;
    .end local v11    # "w":I
    .end local v12    # "count":I
    .end local v13    # "widths":[F
    .end local v15    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v14, p3

    goto/16 :goto_4

    .line 1620
    .restart local v0    # "len":I
    .restart local v1    # "width":F
    .restart local v2    # "buf":[C
    .restart local v3    # "commaCount":I
    .restart local v4    # "remaining":I
    .restart local v6    # "ok":I
    .restart local v10    # "okFormat":Ljava/lang/String;
    .restart local v11    # "w":I
    .restart local v12    # "count":I
    .restart local v13    # "widths":[F
    .restart local v15    # "i":I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v20, v1

    move-object/from16 v1, p4

    .end local v1    # "width":F
    .local v20, "width":F
    :try_start_4
    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1624
    .restart local v5    # "format":Ljava/lang/String;
    :goto_2
    const/16 v16, 0x0

    .line 1625
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    .line 1624
    move-object/from16 v14, p1

    move/from16 v21, v15

    .end local v15    # "i":I
    .local v21, "i":I
    move-object v15, v5

    move-object/from16 v18, p5

    move-object/from16 v19, v9

    invoke-static/range {v14 .. v19}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v14

    move-object v9, v14

    .line 1626
    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v14

    .line 1628
    .local v14, "moreWid":F
    int-to-float v15, v11

    add-float/2addr v15, v14

    cmpg-float v15, v15, p2

    if-gtz v15, :cond_7

    .line 1629
    add-int/lit8 v15, v21, 0x1

    .line 1630
    .end local v6    # "ok":I
    .local v15, "ok":I
    move-object v6, v5

    move-object v10, v6

    move v6, v15

    .end local v10    # "okFormat":Ljava/lang/String;
    .local v6, "okFormat":Ljava/lang/String;
    goto :goto_3

    .line 1611
    .end local v5    # "format":Ljava/lang/String;
    .end local v14    # "moreWid":F
    .end local v20    # "width":F
    .end local v21    # "i":I
    .restart local v1    # "width":F
    .local v6, "ok":I
    .restart local v10    # "okFormat":Ljava/lang/String;
    .local v15, "i":I
    :cond_6
    move/from16 v20, v1

    move/from16 v21, v15

    move-object/from16 v1, p4

    .line 1608
    .end local v1    # "width":F
    .end local v15    # "i":I
    .restart local v20    # "width":F
    .restart local v21    # "i":I
    :cond_7
    :goto_3
    add-int/lit8 v15, v21, 0x1

    move/from16 v1, v20

    const/16 v5, 0x2c

    .end local v21    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    .end local v20    # "width":F
    .restart local v1    # "width":F
    :cond_8
    move/from16 v20, v1

    move/from16 v21, v15

    move-object/from16 v1, p4

    .line 1635
    .end local v1    # "width":F
    .end local v15    # "i":I
    .restart local v20    # "width":F
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1636
    .local v5, "out":Landroid/text/SpannableStringBuilder;
    const/4 v14, 0x0

    invoke-virtual {v5, v14, v7, v14, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1637
    nop

    .line 1639
    if-eqz v8, :cond_9

    .line 1640
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1642
    :cond_9
    if-eqz v9, :cond_a

    .line 1643
    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1637
    :cond_a
    return-object v5

    .line 1639
    .end local v0    # "len":I
    .end local v2    # "buf":[C
    .end local v3    # "commaCount":I
    .end local v4    # "remaining":I
    .end local v5    # "out":Landroid/text/SpannableStringBuilder;
    .end local v6    # "ok":I
    .end local v10    # "okFormat":Ljava/lang/String;
    .end local v11    # "w":I
    .end local v12    # "count":I
    .end local v13    # "widths":[F
    .end local v20    # "width":F
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    :goto_4
    move-object/from16 v1, p4

    :goto_5
    if-eqz v8, :cond_b

    .line 1640
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1642
    :cond_b
    if-eqz v9, :cond_c

    .line 1643
    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1645
    :cond_c
    throw v0
.end method

.method public static varargs whitelist concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # [Ljava/lang/CharSequence;

    .line 1757
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1758
    const-string v0, ""

    return-object v0

    .line 1761
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1762
    aget-object v0, p0, v1

    return-object v0

    .line 1765
    :cond_1
    const/4 v0, 0x0

    .line 1766
    .local v0, "spanned":Z
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 1767
    .local v4, "piece":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    .line 1768
    const/4 v0, 0x1

    .line 1769
    goto :goto_1

    .line 1766
    .end local v4    # "piece":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1773
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 1774
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1775
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    array-length v3, p0

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v4, p0, v1

    .line 1779
    .restart local v4    # "piece":Ljava/lang/CharSequence;
    if-nez v4, :cond_4

    const-string/jumbo v5, "null"

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1775
    .end local v4    # "piece":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1781
    :cond_5
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 1783
    .end local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1784
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, p0, v1

    .line 1785
    .restart local v4    # "piece":Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1784
    .end local v4    # "piece":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1787
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    .line 1210
    if-nez p3, :cond_0

    .line 1211
    const-class p3, Ljava/lang/Object;

    .line 1214
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1216
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1217
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1218
    .local v2, "st":I
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1219
    .local v3, "en":I
    aget-object v4, v0, v1

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 1221
    .local v4, "fl":I
    if-ge v2, p1, :cond_1

    .line 1222
    move v2, p1

    .line 1223
    :cond_1
    if-le v3, p2, :cond_2

    .line 1224
    move v3, p2

    .line 1226
    :cond_2
    aget-object v5, v0, v1

    sub-int v6, v2, p1

    add-int/2addr v6, p5

    sub-int v7, v3, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1216
    .end local v2    # "st":I
    .end local v3    # "en":I
    .end local v4    # "fl":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1229
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method static greylist-max-o couldAffectRtl(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1655
    const/16 v0, 0x590

    if-gt v0, p0, :cond_0

    const/16 v0, 0x8ff

    if-le p0, v0, :cond_6

    :cond_0
    const/16 v0, 0x200e

    if-eq p0, v0, :cond_6

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_6

    const/16 v0, 0x202a

    if-gt v0, p0, :cond_1

    const/16 v0, 0x202e

    if-le p0, v0, :cond_6

    :cond_1
    const/16 v0, 0x2066

    if-gt v0, p0, :cond_2

    const/16 v0, 0x2069

    if-le p0, v0, :cond_6

    :cond_2
    const v0, 0xd800

    if-gt v0, p0, :cond_3

    const v0, 0xdfff

    if-le p0, v0, :cond_6

    :cond_3
    const v0, 0xfb1d

    if-gt v0, p0, :cond_4

    const v0, 0xfdff

    if-le p0, v0, :cond_6

    :cond_4
    const v0, 0xfe70

    if-gt v0, p0, :cond_5

    const v0, 0xfefe

    if-gt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .line 2006
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2009
    :cond_0
    const/4 v0, -0x1

    .line 2010
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2011
    .local v2, "length":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 2012
    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_1

    .line 2013
    goto :goto_0

    .line 2015
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 2016
    .local v3, "expectedDelimiterPos":I
    const/4 v4, 0x1

    if-ne v3, v2, :cond_2

    .line 2018
    return v4

    .line 2020
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    .line 2021
    return v4

    .line 2023
    .end local v3    # "expectedDelimiterPos":I
    :cond_3
    goto :goto_0

    .line 2024
    :cond_4
    return v1

    .line 2007
    .end local v0    # "pos":I
    .end local v2    # "length":I
    :cond_5
    :goto_1
    return v1
.end method

.method static greylist-max-o doesNotNeedBidi([CII)Z
    .locals 3
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .line 1671
    add-int v0, p1, p2

    .line 1672
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1673
    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1674
    const/4 v2, 0x0

    return v2

    .line 1672
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1677
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1011
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 1012
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 1013
    .local v0, "sp":Landroid/text/Spanned;
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1015
    .local v1, "os":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1016
    aget-object v3, v1, v2

    .line 1017
    .local v3, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1018
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1017
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1019
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1020
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1021
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1022
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1015
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "os":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 1025
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": (no spans)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1027
    :goto_1
    return-void
.end method

.method public static whitelist ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    .line 1338
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    .line 1358
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 1360
    invoke-static {p3}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v7

    .line 1358
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 25
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    .line 1383
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 1385
    .local v11, "len":I
    const/4 v12, 0x0

    .line 1387
    .local v12, "mt":Landroid/text/MeasuredParagraph;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v5, p6

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0

    move-object v12, v0

    .line 1388
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v0

    .line 1390
    .local v0, "width":F
    cmpg-float v1, v0, p2

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    .line 1391
    if-eqz v9, :cond_0

    .line 1392
    invoke-interface {v9, v2, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1395
    :cond_0
    nop

    .line 1461
    if-eqz v12, :cond_1

    .line 1462
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1395
    :cond_1
    return-object v7

    .line 1400
    :cond_2
    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual {v13, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v14, v1

    .line 1401
    .local v14, "ellipsiswid":F
    sub-float v1, p2, v14

    .line 1403
    .end local p2    # "avail":F
    .local v1, "avail":F
    const/4 v3, 0x0

    .line 1404
    .local v3, "left":I
    move v4, v11

    .line 1405
    .local v4, "right":I
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    move v15, v1

    move v6, v4

    goto :goto_1

    .line 1407
    :cond_3
    :try_start_2
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v5, :cond_4

    .line 1408
    invoke-virtual {v12, v11, v2, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    sub-int v4, v11, v5

    move v15, v1

    move v6, v4

    goto :goto_1

    .line 1409
    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v6, 0x1

    if-eq v8, v5, :cond_6

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v5, :cond_5

    goto :goto_0

    .line 1412
    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    invoke-virtual {v12, v11, v2, v5}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    sub-int v4, v11, v5

    .line 1413
    invoke-virtual {v12, v4, v11}, Landroid/text/MeasuredParagraph;->measure(II)F

    move-result v5

    sub-float/2addr v1, v5

    .line 1414
    invoke-virtual {v12, v4, v6, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    move v3, v5

    move v15, v1

    move v6, v4

    goto :goto_1

    .line 1410
    :cond_6
    :goto_0
    invoke-virtual {v12, v11, v6, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v3, v5

    move v15, v1

    move v6, v4

    .line 1417
    .end local v1    # "avail":F
    .end local v4    # "right":I
    .local v6, "right":I
    .local v15, "avail":F
    :goto_1
    if-eqz v9, :cond_7

    .line 1418
    :try_start_3
    invoke-interface {v9, v3, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1421
    :cond_7
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v1

    move-object v5, v1

    .line 1422
    .local v5, "buf":[C
    instance-of v1, v7, Landroid/text/Spanned;

    if-eqz v1, :cond_8

    move-object v1, v7

    check-cast v1, Landroid/text/Spanned;

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v16, v1

    .line 1424
    .local v16, "sp":Landroid/text/Spanned;
    sub-int v4, v6, v3

    .line 1425
    .local v4, "removed":I
    sub-int v17, v11, v4

    .line 1426
    .local v17, "remaining":I
    if-eqz p4, :cond_e

    .line 1427
    if-lez v17, :cond_9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v4, v1, :cond_9

    .line 1428
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10, v2, v1, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1429
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    move/from16 v18, v3

    goto :goto_3

    .line 1431
    :cond_9
    move/from16 v18, v3

    .end local v3    # "left":I
    .local v18, "left":I
    :goto_3
    move/from16 v1, v18

    .local v1, "i":I
    :goto_4
    if-ge v1, v6, :cond_a

    .line 1432
    const v3, 0xfeff

    aput-char v3, v5, v1

    .line 1431
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1434
    .end local v1    # "i":I
    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5, v2, v11}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v1

    .line 1435
    .local v3, "s":Ljava/lang/String;
    if-nez v16, :cond_c

    .line 1436
    nop

    .line 1461
    if-eqz v12, :cond_b

    .line 1462
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1436
    :cond_b
    return-object v3

    .line 1438
    :cond_c
    :try_start_4
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v1

    .line 1439
    .local v19, "ss":Landroid/text/SpannableString;
    const/4 v2, 0x0

    const-class v20, Ljava/lang/Object;

    const/16 v21, 0x0

    move-object/from16 v1, v16

    move-object/from16 v22, v3

    .end local v3    # "s":Ljava/lang/String;
    .local v22, "s":Ljava/lang/String;
    move v3, v11

    move/from16 v23, v4

    .end local v4    # "removed":I
    .local v23, "removed":I
    move-object/from16 v4, v20

    move-object/from16 v24, v5

    .end local v5    # "buf":[C
    .local v24, "buf":[C
    move-object/from16 v5, v19

    move/from16 v20, v0

    move v0, v6

    .end local v6    # "right":I
    .local v0, "right":I
    .local v20, "width":F
    move/from16 v6, v21

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1440
    nop

    .line 1461
    if-eqz v12, :cond_d

    .line 1462
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1440
    :cond_d
    return-object v19

    .line 1443
    .end local v18    # "left":I
    .end local v19    # "ss":Landroid/text/SpannableString;
    .end local v20    # "width":F
    .end local v22    # "s":Ljava/lang/String;
    .end local v23    # "removed":I
    .end local v24    # "buf":[C
    .local v0, "width":F
    .local v3, "left":I
    .restart local v4    # "removed":I
    .restart local v5    # "buf":[C
    .restart local v6    # "right":I
    :cond_e
    move/from16 v20, v0

    move/from16 v23, v4

    move-object/from16 v24, v5

    move v0, v6

    .end local v4    # "removed":I
    .end local v5    # "buf":[C
    .end local v6    # "right":I
    .local v0, "right":I
    .restart local v20    # "width":F
    .restart local v23    # "removed":I
    .restart local v24    # "buf":[C
    if-nez v17, :cond_10

    .line 1444
    :try_start_5
    const-string v1, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1461
    if-eqz v12, :cond_f

    .line 1462
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1444
    :cond_f
    return-object v1

    .line 1447
    :cond_10
    if-nez v16, :cond_12

    .line 1448
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v17, v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1449
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v4, v24

    .end local v24    # "buf":[C
    .local v4, "buf":[C
    invoke-virtual {v1, v4, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1450
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    sub-int v2, v11, v0

    invoke-virtual {v1, v4, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1461
    if-eqz v12, :cond_11

    .line 1462
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1452
    :cond_11
    return-object v2

    .line 1455
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "buf":[C
    .restart local v24    # "buf":[C
    :cond_12
    move-object/from16 v4, v24

    .end local v24    # "buf":[C
    .restart local v4    # "buf":[C
    :try_start_7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1456
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, v7, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1457
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1458
    invoke-virtual {v1, v7, v0, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1459
    nop

    .line 1461
    if-eqz v12, :cond_13

    .line 1462
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1459
    :cond_13
    return-object v1

    .line 1461
    .end local v0    # "right":I
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v3    # "left":I
    .end local v4    # "buf":[C
    .end local v14    # "ellipsiswid":F
    .end local v16    # "sp":Landroid/text/Spanned;
    .end local v17    # "remaining":I
    .end local v20    # "width":F
    .end local v23    # "removed":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v15    # "avail":F
    .local v1, "avail":F
    :catchall_1
    move-exception v0

    move v15, v1

    goto :goto_6

    .end local v1    # "avail":F
    .restart local p2    # "avail":F
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v13, p1

    :goto_5
    move/from16 v15, p2

    .end local p2    # "avail":F
    .restart local v15    # "avail":F
    :goto_6
    if-eqz v12, :cond_14

    .line 1462
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1464
    :cond_14
    throw v0
.end method

.method public static greylist-max-o emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 600
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static whitelist equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 651
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 653
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v2

    .local v3, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 654
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 655
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 657
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 658
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v1

    .line 657
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "i":I
    :cond_3
    return v0

    .line 663
    .end local v3    # "length":I
    :cond_4
    return v1
.end method

.method public static varargs whitelist expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .line 1081
    array-length v0, p1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    .line 1085
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1088
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 1089
    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1090
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_3

    .line 1091
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    .line 1092
    .local v2, "next":C
    if-ne v2, v3, :cond_0

    .line 1093
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1094
    add-int/lit8 v1, v1, 0x1

    .line 1095
    goto :goto_0

    .line 1096
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1097
    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, -0x1

    .line 1098
    .local v3, "which":I
    const-string/jumbo v4, "template requests value ^"

    if-ltz v3, :cond_2

    .line 1102
    :try_start_1
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 1107
    add-int/lit8 v4, v1, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v0, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1108
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 1109
    goto :goto_0

    .line 1103
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; only "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " provided"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local p0    # "template":Ljava/lang/CharSequence;
    .end local p1    # "values":[Ljava/lang/CharSequence;
    throw v5

    .line 1099
    .restart local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .restart local p0    # "template":Ljava/lang/CharSequence;
    .restart local p1    # "values":[Ljava/lang/CharSequence;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local p0    # "template":Ljava/lang/CharSequence;
    .end local p1    # "values":[Ljava/lang/CharSequence;
    throw v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1112
    .end local v2    # "next":C
    .end local v3    # "which":I
    .restart local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .restart local p0    # "template":Ljava/lang/CharSequence;
    .restart local p1    # "values":[Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1116
    .end local v1    # "i":I
    :cond_4
    goto :goto_1

    .line 1114
    :catch_0
    move-exception v1

    .line 1117
    :goto_1
    return-object v0

    .line 1082
    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "max of 9 values are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static varargs blacklist formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 13
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2156
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2157
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 2158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_c

    .line 2159
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2162
    .local v3, "code":C
    const/4 v4, 0x0

    .line 2163
    .local v4, "prefixChar":C
    const/4 v5, 0x0

    .line 2164
    .local v5, "prefixLen":I
    const/4 v6, 0x2

    .line 2165
    .local v6, "consume":I
    :goto_1
    const/16 v7, 0x30

    const/4 v8, 0x1

    if-gt v7, v3, :cond_2

    const/16 v9, 0x39

    if-gt v3, v9, :cond_2

    .line 2166
    if-nez v4, :cond_1

    .line 2167
    if-ne v3, v7, :cond_0

    goto :goto_2

    :cond_0
    const/16 v7, 0x20

    :goto_2
    move v4, v7

    .line 2169
    :cond_1
    mul-int/lit8 v5, v5, 0xa

    .line 2170
    const/16 v7, 0xa

    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v5, v7

    .line 2171
    add-int/lit8 v6, v6, 0x1

    .line 2172
    add-int v7, v2, v6

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 2176
    :cond_2
    const/4 v9, 0x0

    const-string v10, "Too few arguments"

    sparse-switch v3, :sswitch_data_0

    .line 2220
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported format code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2201
    :sswitch_0
    array-length v11, p1

    if-eq v1, v11, :cond_5

    .line 2204
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .local v10, "j":I
    aget-object v1, p1, v1

    .line 2205
    .local v1, "arg":Ljava/lang/Object;
    instance-of v11, v1, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    .line 2206
    move-object v11, v1

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move v1, v10

    .local v11, "repl":Ljava/lang/String;
    goto/16 :goto_4

    .line 2207
    .end local v11    # "repl":Ljava/lang/String;
    :cond_3
    instance-of v11, v1, Ljava/lang/Long;

    if-eqz v11, :cond_4

    .line 2208
    move-object v11, v1

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    move v1, v10

    .restart local v11    # "repl":Ljava/lang/String;
    goto :goto_4

    .line 2210
    .end local v11    # "repl":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported hex type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2202
    .end local v10    # "j":I
    .local v1, "j":I
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2193
    :sswitch_1
    array-length v11, p1

    if-eq v1, v11, :cond_6

    .line 2196
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .restart local v10    # "j":I
    aget-object v1, p1, v1

    .line 2197
    .local v1, "arg":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2198
    .restart local v11    # "repl":Ljava/lang/String;
    move v1, v10

    goto :goto_4

    .line 2194
    .end local v10    # "j":I
    .end local v11    # "repl":Ljava/lang/String;
    .local v1, "j":I
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2178
    :sswitch_2
    array-length v11, p1

    if-eq v1, v11, :cond_9

    .line 2181
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .restart local v10    # "j":I
    aget-object v1, p1, v1

    .line 2182
    .local v1, "arg":Ljava/lang/Object;
    instance-of v11, v1, Ljava/lang/Boolean;

    if-eqz v11, :cond_7

    .line 2183
    move-object v11, v1

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    move v1, v10

    .restart local v11    # "repl":Ljava/lang/String;
    goto :goto_4

    .line 2185
    .end local v11    # "repl":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_8

    move v11, v8

    goto :goto_3

    :cond_8
    move v11, v9

    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 2187
    .restart local v11    # "repl":Ljava/lang/String;
    move v1, v10

    goto :goto_4

    .line 2179
    .end local v10    # "j":I
    .end local v11    # "repl":Ljava/lang/String;
    .local v1, "j":I
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2216
    :sswitch_3
    const-string v11, "%"

    .line 2217
    .restart local v11    # "repl":Ljava/lang/String;
    nop

    .line 2224
    :goto_4
    add-int v10, v2, v6

    invoke-virtual {v0, v2, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    if-ne v4, v7, :cond_a

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_a

    goto :goto_5

    :cond_a
    move v8, v9

    :goto_5
    move v7, v8

    .line 2228
    .local v7, "prefixInsert":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "k":I
    :goto_6
    if-ge v8, v5, :cond_b

    .line 2229
    add-int v9, v2, v7

    invoke-virtual {v0, v9, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2228
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2231
    .end local v8    # "k":I
    :cond_b
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v2, v8

    .line 2232
    .end local v3    # "code":C
    .end local v4    # "prefixChar":C
    .end local v5    # "prefixLen":I
    .end local v6    # "consume":I
    .end local v7    # "prefixInsert":I
    .end local v11    # "repl":Ljava/lang/String;
    goto/16 :goto_0

    .line 2233
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2236
    .end local v2    # "i":I
    :cond_d
    array-length v2, p1

    if-ne v1, v2, :cond_e

    .line 2239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2237
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many arguments"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x62 -> :sswitch_2
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x66 -> :sswitch_1
        0x73 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 8
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .line 1910
    if-gez p1, :cond_0

    .line 1911
    const/4 v0, 0x0

    return v0

    .line 1916
    :cond_0
    const/4 v0, 0x0

    .line 1918
    .local v0, "mode":I
    and-int/lit16 v1, p2, 0x1000

    if-eqz v1, :cond_1

    .line 1919
    or-int/lit16 v0, v0, 0x1000

    .line 1921
    :cond_1
    and-int/lit16 v1, p2, 0x6000

    if-nez v1, :cond_2

    .line 1922
    return v0

    .line 1927
    :cond_2
    move v1, p1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x27

    const/16 v3, 0x22

    if-lez v1, :cond_4

    .line 1928
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1930
    .local v4, "c":C
    if-eq v4, v3, :cond_3

    if-eq v4, v2, :cond_3

    .line 1931
    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_3

    .line 1932
    goto :goto_1

    .line 1927
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1938
    .end local v4    # "c":C
    :cond_4
    :goto_1
    move v4, v1

    .line 1939
    .local v4, "j":I
    :goto_2
    if-lez v4, :cond_6

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    const/16 v7, 0x20

    if-eq v5, v7, :cond_5

    const/16 v5, 0x9

    if-ne v6, v5, :cond_6

    .line 1940
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1942
    .end local v6    # "c":C
    :cond_6
    if-eqz v4, :cond_12

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    goto :goto_7

    .line 1948
    :cond_7
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_9

    .line 1949
    if-eq v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x2000

    .line 1950
    :cond_8
    return v0

    .line 1955
    :cond_9
    if-ne v1, v4, :cond_a

    .line 1956
    return v0

    .line 1961
    :cond_a
    :goto_3
    if-lez v4, :cond_c

    .line 1962
    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1964
    .local v5, "c":C
    if-eq v5, v3, :cond_b

    if-eq v5, v2, :cond_b

    .line 1965
    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_b

    .line 1966
    goto :goto_4

    .line 1961
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1970
    .end local v5    # "c":C
    :cond_c
    :goto_4
    if-lez v4, :cond_11

    .line 1971
    add-int/lit8 v2, v4, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1973
    .local v2, "c":C
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_d

    const/16 v5, 0x3f

    if-eq v2, v5, :cond_d

    const/16 v5, 0x21

    if-ne v2, v5, :cond_11

    .line 1977
    :cond_d
    if-ne v2, v3, :cond_10

    .line 1978
    add-int/lit8 v5, v4, -0x2

    .local v5, "k":I
    :goto_5
    if-ltz v5, :cond_10

    .line 1979
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1981
    if-ne v2, v3, :cond_e

    .line 1982
    return v0

    .line 1985
    :cond_e
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1986
    goto :goto_6

    .line 1978
    :cond_f
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 1991
    .end local v5    # "k":I
    :cond_10
    :goto_6
    or-int/lit16 v3, v0, 0x4000

    return v3

    .line 1995
    .end local v2    # "c":C
    :cond_11
    return v0

    .line 1943
    :cond_12
    :goto_7
    or-int/lit16 v2, v0, 0x2000

    return v2
.end method

.method public static whitelist getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 148
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 149
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 150
    :cond_0
    const-class v1, Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_1

    .line 151
    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_1

    .line 152
    :cond_1
    const-class v1, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_2

    .line 153
    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_1

    .line 154
    :cond_2
    instance-of v1, p0, Landroid/text/GetChars;

    if-eqz v1, :cond_3

    .line 155
    move-object v1, p0

    check-cast v1, Landroid/text/GetChars;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_1

    .line 157
    :cond_3
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    .line 158
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "destoff":I
    .local v2, "destoff":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 157
    add-int/lit8 v1, v1, 0x1

    move p4, v2

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    .end local v2    # "destoff":I
    .restart local p4    # "destoff":I
    :cond_4
    :goto_1
    return-void
.end method

.method public static greylist-max-o getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Landroid/text/TextUtils$TruncateAt;

    .line 138
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "\u2025"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u2026"

    :goto_0
    return-object v0
.end method

.method public static whitelist getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 2121
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2122
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2124
    :cond_0
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_force_rtl()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2125
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2126
    :cond_2
    nop

    .line 2121
    :goto_0
    return v0
.end method

.method public static whitelist getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 1156
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1158
    .local v0, "len":I
    if-ne p1, v0, :cond_0

    .line 1159
    return v0

    .line 1160
    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_1

    .line 1161
    return v0

    .line 1163
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1165
    .local v1, "c":C
    const v2, 0xd800

    if-lt v1, v2, :cond_3

    const v2, 0xdbff

    if-gt v1, v2, :cond_3

    .line 1166
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1168
    .local v2, "c1":C
    const v3, 0xdc00

    if-lt v2, v3, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 1169
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 1171
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 1172
    .end local v2    # "c1":C
    :goto_0
    goto :goto_1

    .line 1173
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1176
    :goto_1
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    .line 1177
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 1180
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 1181
    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1182
    .local v4, "start":I
    move-object v5, p0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1184
    .local v5, "end":I
    if-ge v4, p1, :cond_4

    if-le v5, p1, :cond_4

    .line 1185
    move p1, v5

    .line 1180
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1189
    .end local v2    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v3    # "i":I
    :cond_5
    return p1
.end method

.method public static whitelist getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 1121
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1122
    return v0

    .line 1123
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1124
    return v0

    .line 1126
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1128
    .local v0, "c":C
    const v1, 0xdc00

    if-lt v0, v1, :cond_3

    const v1, 0xdfff

    if-gt v0, v1, :cond_3

    .line 1129
    add-int/lit8 v1, p1, -0x2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1131
    .local v1, "c1":C
    const v2, 0xd800

    if-lt v1, v2, :cond_2

    const v2, 0xdbff

    if-gt v1, v2, :cond_2

    .line 1132
    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    .line 1134
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 1135
    .end local v1    # "c1":C
    :goto_0
    goto :goto_1

    .line 1136
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1139
    :goto_1
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_5

    .line 1140
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v1, p1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ReplacementSpan;

    .line 1143
    .local v1, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 1144
    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1145
    .local v3, "start":I
    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v1, v2

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1147
    .local v4, "end":I
    if-ge v3, p1, :cond_4

    if-le v4, p1, :cond_4

    .line 1148
    move p1, v3

    .line 1143
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1152
    .end local v1    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v2    # "i":I
    :cond_5
    return p1
.end method

.method public static whitelist getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static whitelist getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 627
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 629
    .local v0, "len":I
    const/4 v1, 0x0

    .line 630
    .local v1, "start":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_0

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_0
    move v3, v0

    .line 635
    .local v3, "end":I
    :goto_1
    if-le v3, v1, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v2, :cond_1

    .line 636
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 639
    :cond_1
    sub-int v2, v3, v1

    return v2
.end method

.method public static greylist-max-o hasStyleSpan(Landroid/text/Spanned;)Z
    .locals 8
    .param p0, "spanned"    # Landroid/text/Spanned;

    .line 2247
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2248
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/text/style/CharacterStyle;

    aput-object v3, v2, v1

    const-class v3, Landroid/text/style/ParagraphStyle;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-class v4, Landroid/text/style/UpdateAppearance;

    aput-object v4, v2, v3

    .line 2250
    .local v2, "styleClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 2251
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, -0x1

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2252
    return v0

    .line 2250
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2255
    :cond_2
    return v1
.end method

.method private static greylist hidden_semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 1
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C

    .line 2825
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    return-object v0
.end method

.method public static whitelist htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1711
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1712
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1713
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 1734
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1718
    :sswitch_0
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    goto :goto_1

    .line 1715
    :sswitch_1
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    goto :goto_1

    .line 1728
    :sswitch_2
    const-string v3, "&#39;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    goto :goto_1

    .line 1721
    :sswitch_3
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    goto :goto_1

    .line 1731
    :sswitch_4
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    nop

    .line 1711
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1737
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 163
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 169
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 170
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    return v1

    .line 172
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 178
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v1, p0, Landroid/text/GetChars;

    const/4 v2, -0x1

    if-nez v1, :cond_3

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/StringBuilder;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 206
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1

    .line 207
    return v1

    .line 205
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "i":I
    :cond_2
    return v2

    .line 180
    :cond_3
    :goto_1
    const/16 v1, 0x1f4

    .line 181
    .local v1, "INDEX_INCREMENT":I
    const/16 v3, 0x1f4

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v3

    .line 183
    .local v3, "temp":[C
    :goto_2
    if-ge p2, p3, :cond_7

    .line 184
    add-int/lit16 v4, p2, 0x1f4

    .line 185
    .local v4, "segend":I
    if-le v4, p3, :cond_4

    .line 186
    move v4, p3

    .line 188
    :cond_4
    const/4 v5, 0x0

    invoke-static {p0, p2, v4, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 190
    sub-int v5, v4, p2

    .line 191
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_6

    .line 192
    aget-char v7, v3, v6

    if-ne v7, p1, :cond_5

    .line 193
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    .line 194
    add-int v2, v6, p2

    return v2

    .line 191
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 198
    .end local v6    # "i":I
    :cond_6
    move p2, v4

    .line 199
    .end local v4    # "segend":I
    .end local v5    # "count":I
    goto :goto_2

    .line 201
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    .line 202
    return v2
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    .line 271
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 275
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 280
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 281
    .local v0, "nlen":I
    if-nez v0, :cond_0

    .line 282
    return p2

    .line 284
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 287
    .local v2, "c":C
    :goto_0
    invoke-static {p0, v2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 288
    sub-int v3, p3, v0

    const/4 v4, -0x1

    if-le p2, v3, :cond_1

    .line 289
    nop

    .line 302
    return v4

    .line 292
    :cond_1
    if-gez p2, :cond_2

    .line 293
    return v4

    .line 296
    :cond_2
    invoke-static {p0, p2, p1, v1, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    return p2

    .line 300
    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static blacklist indexOfWordPrefix(Ljava/lang/CharSequence;[C)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # [C

    .line 2713
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2714
    .local v0, "textLength":I
    array-length v1, p1

    .line 2716
    .local v1, "prefixLength":I
    const/4 v2, -0x1

    if-eqz v1, :cond_6

    if-ge v0, v1, :cond_0

    goto :goto_3

    .line 2720
    :cond_0
    const/4 v3, 0x0

    .line 2721
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 2722
    add-int v4, v3, v1

    if-le v4, v0, :cond_1

    .line 2723
    return v2

    .line 2727
    :cond_1
    const/4 v4, 0x0

    .line 2728
    .local v4, "j":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 2729
    add-int v5, v3, v4

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v4

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v5, v6, :cond_2

    .line 2730
    goto :goto_2

    .line 2728
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2733
    :cond_3
    :goto_2
    if-ne v4, v1, :cond_4

    .line 2734
    return v3

    .line 2736
    :cond_4
    nop

    .end local v4    # "j":I
    add-int/lit8 v3, v3, 0x1

    .line 2737
    goto :goto_0

    .line 2739
    :cond_5
    return v2

    .line 2717
    .end local v3    # "i":I
    :cond_6
    :goto_3
    return v2
.end method

.method public static blacklist isArabicChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2577
    const/16 v0, 0x600

    if-lt p0, v0, :cond_0

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xfb00

    if-lt p0, v0, :cond_1

    const v0, 0xfdff

    if-le p0, v0, :cond_2

    :cond_1
    const v0, 0xfe70

    if-lt p0, v0, :cond_3

    const v0, 0xfefe

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isCombinedCode(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2667
    invoke-static {p0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2668
    invoke-static {p0}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2667
    :goto_1
    return v0
.end method

.method public static whitelist isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1835
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1836
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1837
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1838
    .local v2, "cp":I
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1839
    const/4 v3, 0x0

    return v3

    .line 1836
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 1842
    .end local v1    # "i":I
    .end local v2    # "cp":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 590
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist isGraphic(C)Z
    .locals 2
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1821
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1822
    .local v0, "gc":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static whitelist isGraphic(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1795
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1796
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1797
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1798
    .local v2, "cp":I
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    .line 1799
    .local v3, "gc":I
    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe

    if-eq v3, v4, :cond_0

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 1806
    const/4 v4, 0x1

    return v4

    .line 1796
    .end local v3    # "gc":I
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 1809
    .end local v1    # "i":I
    .end local v2    # "cp":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isHalant(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2594
    const/16 v0, 0x94d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9cd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0xacd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbcd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0xccd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0xddf

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isIndianChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2586
    const/16 v0, 0x900

    if-lt p0, v0, :cond_0

    const/16 v0, 0xdff

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isKhmerChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2619
    const/16 v0, 0x1780

    if-lt p0, v0, :cond_0

    const/16 v0, 0x17f9

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isKhmerCoengSign(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2635
    const/16 v0, 0x17d2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isKhmerVowel(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2627
    const/16 v0, 0x17b6

    if-lt p0, v0, :cond_0

    const/16 v0, 0x17d3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isLaoChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2643
    const/16 v0, 0xe81

    if-lt p0, v0, :cond_0

    const/16 v0, 0xedd

    if-le p0, v0, :cond_1

    :cond_0
    const v0, 0xe001

    if-lt p0, v0, :cond_2

    const v0, 0xe018

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isLaoVowel(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2651
    const/16 v0, 0xeb1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xeb4

    if-lt p0, v0, :cond_0

    const/16 v0, 0xebc

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xec8

    if-lt p0, v0, :cond_1

    const/16 v0, 0xecd

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isMyanmarChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2659
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1097

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isNewline(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .line 2343
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2344
    .local v0, "type":I
    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static greylist-max-o isPrintableAscii(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 1849
    const/16 v0, 0x20

    .line 1850
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1851
    .local v1, "asciiLast":I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_2

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_2

    const/16 v2, 0xa

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public static greylist isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1859
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1860
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1861
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1862
    const/4 v2, 0x0

    return v2

    .line 1860
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1865
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isThaiChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2603
    const/16 v0, 0xe01

    if-lt p0, v0, :cond_0

    const/16 v0, 0xe5b

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isThaiVowel(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2611
    const/16 v0, 0xe31

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe33

    if-lt p0, v0, :cond_0

    const/16 v0, 0xe3a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xe47

    if-lt p0, v0, :cond_1

    const/16 v0, 0xe4e

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist isWhiteSpace(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 2349
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .line 433
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 434
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    const-string v1, ""

    return-object v1

    .line 437
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 441
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    .line 410
    array-length v0, p1

    .line 411
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 412
    const-string v1, ""

    return-object v1

    .line 414
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 417
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 418
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 213
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 219
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 220
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    return v1

    .line 222
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    .line 227
    const/4 v0, -0x1

    if-gez p3, :cond_0

    .line 228
    return v0

    .line 229
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 230
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 232
    :cond_1
    add-int/lit8 v1, p3, 0x1

    .line 234
    .local v1, "end":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 236
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v3, p0, Landroid/text/GetChars;

    if-nez v3, :cond_5

    const-class v3, Ljava/lang/StringBuffer;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/lang/StringBuilder;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 263
    :cond_2
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, p2, :cond_4

    .line 264
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_3

    .line 265
    return v3

    .line 263
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 267
    .end local v3    # "i":I
    :cond_4
    return v0

    .line 238
    :cond_5
    :goto_1
    const/16 v3, 0x1f4

    .line 239
    .local v3, "INDEX_INCREMENT":I
    const/16 v4, 0x1f4

    invoke-static {v4}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v4

    .line 241
    .local v4, "temp":[C
    :goto_2
    if-ge p2, v1, :cond_9

    .line 242
    add-int/lit16 v5, v1, -0x1f4

    .line 243
    .local v5, "segstart":I
    if-ge v5, p2, :cond_6

    .line 244
    move v5, p2

    .line 246
    :cond_6
    const/4 v6, 0x0

    invoke-static {p0, v5, v1, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 248
    sub-int v6, v1, v5

    .line 249
    .local v6, "count":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_8

    .line 250
    aget-char v8, v4, v7

    if-ne v8, p1, :cond_7

    .line 251
    invoke-static {v4}, Landroid/text/TextUtils;->recycle([C)V

    .line 252
    add-int v0, v7, v5

    return v0

    .line 249
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 256
    .end local v7    # "i":I
    :cond_8
    move v1, v5

    .line 257
    .end local v5    # "segstart":I
    .end local v6    # "count":I
    goto :goto_2

    .line 259
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->recycle([C)V

    .line 260
    return v0
.end method

.method public static greylist-max-o length(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 610
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist listEllipsize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/text/TextPaint;FI)Ljava/lang/CharSequence;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "avail"    # F
    .param p5, "moreId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1499
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p1

    const-string v1, ""

    if-nez v0, :cond_0

    .line 1500
    return-object v1

    .line 1502
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1503
    .local v2, "totalLen":I
    if-nez v2, :cond_1

    .line 1504
    return-object v1

    .line 1509
    :cond_1
    const/4 v3, 0x0

    if-nez p0, :cond_2

    .line 1510
    const/4 v4, 0x0

    .line 1511
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    .local v5, "bidiFormatter":Landroid/text/BidiFormatter;
    goto :goto_0

    .line 1513
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1514
    .restart local v4    # "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v5

    .line 1517
    .restart local v5    # "bidiFormatter":Landroid/text/BidiFormatter;
    :goto_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1518
    .local v6, "output":Landroid/text/SpannableStringBuilder;
    new-array v7, v2, [I

    .line 1519
    .local v7, "endIndexes":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_4

    .line 1520
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1521
    add-int/lit8 v9, v2, -0x1

    if-eq v8, v9, :cond_3

    .line 1522
    move-object/from16 v9, p2

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 1521
    :cond_3
    move-object/from16 v9, p2

    .line 1524
    :goto_2
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    aput v10, v7, v8

    .line 1519
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v9, p2

    .line 1527
    .end local v8    # "i":I
    add-int/lit8 v8, v2, -0x1

    .restart local v8    # "i":I
    :goto_3
    if-ltz v8, :cond_8

    .line 1529
    aget v10, v7, v8

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1531
    sub-int v10, v2, v8

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 1532
    .local v10, "remainingElements":I
    if-lez v10, :cond_6

    .line 1533
    if-nez v4, :cond_5

    .line 1534
    const-string/jumbo v11, "\u2026"

    move/from16 v12, p5

    goto :goto_4

    .line 1535
    :cond_5
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    move/from16 v12, p5

    invoke-virtual {v4, v12, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_4
    nop

    .line 1536
    .local v11, "morePiece":Ljava/lang/CharSequence;
    invoke-virtual {v5, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1537
    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 1532
    .end local v11    # "morePiece":Ljava/lang/CharSequence;
    :cond_6
    move/from16 v12, p5

    .line 1540
    :goto_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    move-object/from16 v13, p3

    invoke-virtual {v13, v6, v3, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v11

    .line 1541
    .local v11, "width":F
    cmpg-float v14, v11, p4

    if-gtz v14, :cond_7

    .line 1542
    return-object v6

    .line 1527
    .end local v10    # "remainingElements":I
    .end local v11    # "width":F
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_8
    move-object/from16 v13, p3

    move/from16 v12, p5

    .line 1545
    .end local v8    # "i":I
    return-object v1
.end method

.method public static whitelist makeSafeForPresentation(Ljava/lang/String;IFI)Ljava/lang/CharSequence;
    .locals 18
    .param p0, "unclean"    # Ljava/lang/String;
    .param p1, "maxCharactersToConsider"    # I
    .param p2, "ellipsizeDip"    # F
    .param p3, "flags"    # I

    .line 2392
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 2393
    .local v3, "onlyKeepFirstLine":Z
    :goto_0
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 2394
    .local v6, "forceSingleLine":Z
    :goto_1
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v5

    .line 2396
    .local v7, "trim":Z
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 2398
    const-string v8, "ellipsizeDip"

    invoke-static {v1, v8}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2399
    const/4 v8, 0x7

    invoke-static {v2, v8}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2401
    if-eqz v3, :cond_4

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :cond_4
    :goto_3
    const-string v8, "Cannot set SAFE_STRING_FLAG_SINGLE_LINE and SAFE_STRING_FLAG_FIRST_LINE at thesame time"

    invoke-static {v4, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2406
    if-lez v0, :cond_5

    .line 2407
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v8, p0

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "shortString":Ljava/lang/String;
    goto :goto_4

    .line 2409
    .end local v4    # "shortString":Ljava/lang/String;
    :cond_5
    move-object/from16 v8, p0

    move-object/from16 v4, p0

    .line 2422
    .restart local v4    # "shortString":Ljava/lang/String;
    :goto_4
    new-instance v9, Landroid/text/TextUtils$StringWithRemovedChars;

    .line 2423
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/TextUtils$StringWithRemovedChars;-><init>(Ljava/lang/String;)V

    .line 2425
    .local v9, "gettingCleaned":Landroid/text/TextUtils$StringWithRemovedChars;
    const/4 v10, -0x1

    .line 2426
    .local v10, "firstNonWhiteSpace":I
    const/4 v11, -0x1

    .line 2429
    .local v11, "firstTrailingWhiteSpace":I
    invoke-virtual {v9}, Landroid/text/TextUtils$StringWithRemovedChars;->length()I

    move-result v12

    .line 2430
    .local v12, "uncleanLength":I
    const/4 v13, 0x0

    .local v13, "offset":I
    :goto_5
    if-ge v13, v12, :cond_b

    .line 2431
    invoke-virtual {v9, v13}, Landroid/text/TextUtils$StringWithRemovedChars;->codePointAt(I)I

    move-result v15

    .line 2432
    .local v15, "codePoint":I
    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v5

    .line 2433
    .local v5, "type":I
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v16

    .line 2434
    .local v16, "codePointLen":I
    invoke-static {v15}, Landroid/text/TextUtils;->isNewline(I)Z

    move-result v17

    .line 2436
    .local v17, "isNewline":Z
    if-eqz v3, :cond_6

    if-eqz v17, :cond_6

    .line 2437
    invoke-virtual {v9, v13}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    .line 2438
    goto :goto_7

    .line 2439
    :cond_6
    if-eqz v6, :cond_7

    if-eqz v17, :cond_7

    .line 2440
    add-int v14, v13, v16

    invoke-virtual {v9, v13, v14}, Landroid/text/TextUtils$StringWithRemovedChars;->removeRange(II)V

    goto :goto_6

    .line 2441
    :cond_7
    const/16 v14, 0xf

    if-ne v5, v14, :cond_8

    if-nez v17, :cond_8

    .line 2442
    add-int v14, v13, v16

    invoke-virtual {v9, v13, v14}, Landroid/text/TextUtils$StringWithRemovedChars;->removeRange(II)V

    goto :goto_6

    .line 2443
    :cond_8
    if-eqz v7, :cond_a

    invoke-static {v15}, Landroid/text/TextUtils;->isWhiteSpace(I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 2445
    const/4 v14, -0x1

    if-ne v10, v14, :cond_9

    .line 2446
    move v10, v13

    .line 2448
    :cond_9
    add-int v11, v13, v16

    .line 2451
    :cond_a
    :goto_6
    add-int v13, v13, v16

    .line 2452
    .end local v5    # "type":I
    .end local v15    # "codePoint":I
    .end local v16    # "codePointLen":I
    .end local v17    # "isNewline":Z
    const/4 v5, 0x0

    goto :goto_5

    .line 2454
    .end local v13    # "offset":I
    :cond_b
    :goto_7
    if-eqz v7, :cond_e

    .line 2456
    const/4 v5, -0x1

    if-ne v10, v5, :cond_c

    .line 2458
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    goto :goto_8

    .line 2460
    :cond_c
    if-lez v10, :cond_d

    .line 2461
    invoke-virtual {v9, v10}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharBefore(I)V

    .line 2463
    :cond_d
    if-ge v11, v12, :cond_e

    .line 2464
    invoke-virtual {v9, v11}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    .line 2469
    :cond_e
    :goto_8
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-nez v5, :cond_f

    .line 2470
    invoke-virtual {v9}, Landroid/text/TextUtils$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2473
    :cond_f
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 2474
    .local v5, "paint":Landroid/text/TextPaint;
    const/high16 v13, 0x42280000    # 42.0f

    invoke-virtual {v5, v13}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2476
    invoke-virtual {v9}, Landroid/text/TextUtils$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v13, v5, v1, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v13

    return-object v13
.end method

.method public static greylist-max-o nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 595
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static greylist-max-o obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    .line 1683
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1684
    :try_start_0
    sget-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1685
    .local v1, "buf":[C
    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1686
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    if-eqz v1, :cond_0

    array-length v0, v1

    if-ge v0, p0, :cond_1

    .line 1689
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    .line 1691
    :cond_1
    return-object v1

    .line 1686
    .end local v1    # "buf":[C
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static greylist packRangeInLong(II)J
    .locals 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 2085
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static greylist-max-o readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .line 1193
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1194
    return-void
.end method

.method static greylist-max-o recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    .line 1695
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1696
    return-void

    .line 1698
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1699
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1700
    monitor-exit v0

    .line 1701
    return-void

    .line 1700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .line 308
    mul-int/lit8 v0, p4, 0x2

    .line 309
    .local v0, "tempLen":I
    if-lt v0, p4, :cond_2

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 315
    .local v1, "temp":[C
    add-int v2, p1, p4

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 316
    add-int v2, p3, p4

    invoke-static {p2, p3, v2, v1, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 318
    const/4 v2, 0x1

    .line 319
    .local v2, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_1

    .line 320
    aget-char v4, v1, v3

    add-int v5, v3, p4

    aget-char v5, v1, v5

    if-eq v4, v5, :cond_0

    .line 321
    const/4 v2, 0x0

    .line 322
    goto :goto_1

    .line 319
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    .end local v3    # "i":I
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 327
    return v2

    .line 311
    .end local v1    # "temp":[C
    .end local v2    # "match":Z
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static greylist-max-o removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 8
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2046
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 2047
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 2049
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 2050
    aget-object v3, p0, v2

    .line 2051
    .local v3, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2052
    .local v5, "start":I
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 2054
    .local v6, "end":I
    if-ne v5, v6, :cond_0

    .line 2055
    if-nez v0, :cond_1

    .line 2056
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 2057
    invoke-static {p0, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2058
    move v1, v2

    goto :goto_1

    .line 2061
    :cond_0
    if-eqz v0, :cond_1

    .line 2062
    aput-object v3, v0, v1

    .line 2063
    add-int/lit8 v1, v1, 0x1

    .line 2049
    .end local v3    # "span":Ljava/lang/Object;, "TT;"
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2068
    .end local v2    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 2069
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2070
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2071
    return-object v2

    .line 2073
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_3
    return-object p0
.end method

.method public static whitelist replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    .line 1036
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1038
    .local v0, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1039
    aget-object v2, p1, v1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 1041
    .local v2, "where":I
    if-ltz v2, :cond_0

    .line 1042
    aget-object v3, p1, v1

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1038
    .end local v2    # "where":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1047
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1048
    .local v2, "start":I
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1050
    .local v3, "end":I
    if-ltz v2, :cond_2

    .line 1051
    aget-object v4, p2, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1046
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1055
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static greylist-max-o safeIntern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 618
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static whitelist semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 17
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C

    .line 2756
    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 2758
    .local v10, "len":I
    const/4 v11, 0x0

    if-eqz v10, :cond_d

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 2762
    :cond_0
    new-array v12, v10, [F

    .line 2763
    .local v12, "widths":[F
    new-array v13, v10, [C

    .line 2765
    .local v13, "chars":[C
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_0
    array-length v1, v0

    if-ge v14, v1, :cond_2

    .line 2766
    aget-char v1, v0, v14

    invoke-static {v1}, Landroid/text/TextUtils;->isCombinedCode(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2767
    goto :goto_1

    .line 2765
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2770
    :cond_2
    :goto_1
    array-length v1, v0

    if-ne v14, v1, :cond_3

    .line 2771
    return-object v11

    .line 2774
    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/text/TextUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v15

    .line 2775
    .local v15, "pos":I
    if-ltz v15, :cond_c

    if-lt v15, v10, :cond_4

    goto/16 :goto_7

    .line 2779
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v9, p1

    invoke-static {v9, v1, v10, v13, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2780
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move v4, v10

    move v6, v10

    move-object v8, v12

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 2782
    move v1, v15

    .line 2783
    .local v1, "pre_pos_halant":I
    aget-char v2, v0, v14

    invoke-static {v2}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 2784
    :goto_2
    if-lez v1, :cond_5

    .line 2785
    add-int/lit8 v2, v1, -0x1

    aget-char v2, v13, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isHalant(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2786
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 2792
    :cond_5
    if-gez v1, :cond_8

    .line 2793
    return-object v11

    .line 2796
    :cond_6
    :goto_3
    if-lez v15, :cond_7

    aget v2, v12, v15

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7

    .line 2797
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 2799
    :cond_7
    move v1, v15

    .line 2802
    :cond_8
    array-length v2, v0

    add-int/2addr v2, v15

    .line 2803
    .end local v14    # "i":I
    .local v2, "i":I
    :goto_4
    if-ge v2, v10, :cond_a

    .line 2804
    aget v4, v12, v2

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_9

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v13, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isHalant(C)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2805
    goto :goto_5

    .line 2807
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2810
    :cond_a
    :goto_5
    sub-int v3, v2, v1

    .line 2811
    .local v3, "destLength":I
    new-array v4, v3, [C

    .line 2813
    .local v4, "dest":[C
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v3, :cond_b

    .line 2814
    add-int v6, v1, v5

    aget-char v6, v13, v6

    aput-char v6, v4, v5

    .line 2813
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2816
    .end local v5    # "j":I
    :cond_b
    return-object v4

    .line 2776
    .end local v1    # "pre_pos_halant":I
    .end local v2    # "i":I
    .end local v3    # "destLength":I
    .end local v4    # "dest":[C
    .restart local v14    # "i":I
    :cond_c
    :goto_7
    return-object v11

    .line 2759
    .end local v12    # "widths":[F
    .end local v13    # "chars":[C
    .end local v14    # "i":I
    .end local v15    # "pos":I
    :cond_d
    :goto_8
    return-object v11
.end method

.method public static blacklist semNeedMoreWidth(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2678
    sparse-switch p0, :sswitch_data_0

    .line 2699
    const/4 v0, 0x0

    return v0

    .line 2695
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x901 -> :sswitch_0
        0x941 -> :sswitch_0
        0x942 -> :sswitch_0
        0x9c1 -> :sswitch_0
        0x9c2 -> :sswitch_0
        0xac2 -> :sswitch_0
        0xb01 -> :sswitch_0
        0xb1f -> :sswitch_0
        0xb4d -> :sswitch_0
        0xb62 -> :sswitch_0
        0xb63 -> :sswitch_0
        0xe49 -> :sswitch_0
        0xe4a -> :sswitch_0
        0xe4c -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 466
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 468
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 493
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 574
    if-nez p0, :cond_0

    .line 575
    const/4 v0, 0x0

    return-object v0

    .line 576
    :cond_0
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_1

    .line 577
    return-object p0

    .line 578
    :cond_1
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 579
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 581
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 338
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 339
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 341
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 343
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_2
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 346
    .local v0, "temp":[C
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 347
    new-instance v2, Ljava/lang/String;

    sub-int v3, p2, p1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    .line 348
    .local v1, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 350
    return-object v1
.end method

.method public static greylist-max-o toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 16
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "copySpans"    # Z

    .line 1243
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/icu/text/Edits;

    invoke-direct {v2}, Landroid/icu/text/Edits;-><init>()V

    .line 1244
    .local v2, "edits":Landroid/icu/text/Edits;
    if-nez p2, :cond_1

    .line 1245
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    .line 1247
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    return-object v4

    .line 1250
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    .line 1252
    .local v3, "result":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1254
    return-object v1

    .line 1257
    :cond_2
    invoke-virtual {v2}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v4

    .line 1258
    .local v4, "iterator":Landroid/icu/text/Edits$Iterator;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1259
    .local v5, "sourceLength":I
    move-object v6, v1

    check-cast v6, Landroid/text/Spanned;

    .line 1260
    .local v6, "spanned":Landroid/text/Spanned;
    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v6, v8, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 1261
    .local v7, "spans":[Ljava/lang/Object;
    array-length v9, v7

    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v10, v7, v8

    .line 1262
    .local v10, "span":Ljava/lang/Object;
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1263
    .local v11, "sourceStart":I
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 1264
    .local v12, "sourceEnd":I
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    .line 1267
    .local v13, "flags":I
    if-ne v11, v5, :cond_3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    goto :goto_2

    .line 1268
    :cond_3
    invoke-static {v4, v11}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v14

    :goto_2
    nop

    .line 1269
    .local v14, "destStart":I
    if-ne v12, v5, :cond_4

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    goto :goto_3

    .line 1270
    :cond_4
    invoke-static {v4, v12}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v15

    :goto_3
    nop

    .line 1271
    .local v15, "destEnd":I
    invoke-virtual {v3, v10, v14, v15, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1261
    .end local v10    # "span":Ljava/lang/Object;
    .end local v11    # "sourceStart":I
    .end local v12    # "sourceEnd":I
    .end local v13    # "flags":I
    .end local v14    # "destStart":I
    .end local v15    # "destEnd":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1273
    :cond_5
    return-object v3
.end method

.method private static greylist-max-o toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I
    .locals 2
    .param p0, "iterator"    # Landroid/icu/text/Edits$Iterator;
    .param p1, "sourceIndex"    # I

    .line 1279
    invoke-virtual {p0, p1}, Landroid/icu/text/Edits$Iterator;->findSourceIndex(I)Z

    .line 1280
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1281
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    return v0

    .line 1292
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1293
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1296
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 2267
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 2269
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 2271
    :cond_0
    return-object p0
.end method

.method public static blacklist trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2335
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0, p1}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2336
    .local v0, "trimmed":Ljava/lang/CharSequence;, "TT;"
    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2339
    :cond_0
    return-object v0
.end method

.method public static greylist-max-o trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2299
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    const v0, 0x186a0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2314
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_1

    .line 2316
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2317
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2318
    add-int/lit8 p1, p1, -0x1

    .line 2320
    :cond_2
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2315
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static blacklist truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxbytes"    # I

    .line 373
    if-ltz p1, :cond_7

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "bytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 379
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 380
    .local v3, "c":C
    const/16 v4, 0x80

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 382
    :cond_0
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    .line 383
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 384
    :cond_1
    const v4, 0xd800

    if-lt v3, v4, :cond_4

    const v4, 0xdfff

    if-gt v3, v4, :cond_4

    .line 386
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/high16 v6, 0x10000

    if-ge v4, v6, :cond_2

    goto :goto_2

    .line 389
    :cond_2
    add-int/lit8 v0, v0, 0x4

    .line 390
    if-le v0, p1, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v1, v4

    goto :goto_3

    .line 387
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 392
    :goto_3
    if-le v0, p1, :cond_5

    .line 393
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 378
    .end local v3    # "c":C
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_6
    return-object p0

    .line 374
    .end local v0    # "bytes":I
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static greylist unpackRangeEndFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .line 2107
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static greylist unpackRangeStartFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .line 2096
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist withoutPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 2355
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 2356
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0

    .line 2355
    :cond_2
    :goto_1
    return-object p1
.end method

.method public static greylist-max-o wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 2280
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    return-void
.end method

.method public static whitelist writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 796
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 797
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 800
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    .line 801
    .local v2, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 808
    .local v3, "os":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 809
    aget-object v5, v3, v4

    .line 810
    .local v5, "o":Ljava/lang/Object;
    aget-object v6, v3, v4

    .line 812
    .local v6, "prop":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 813
    move-object v7, v6

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 816
    :cond_0
    instance-of v7, v6, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_3

    .line 817
    move-object v7, v6

    check-cast v7, Landroid/text/ParcelableSpan;

    .line 818
    .local v7, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v7}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v8

    .line 819
    .local v8, "spanTypeId":I
    if-lt v8, v1, :cond_2

    const/16 v9, 0x1d

    if-le v8, v9, :cond_1

    goto :goto_1

    .line 824
    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    invoke-interface {v7, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 826
    invoke-static {p1, v2, v5}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_2

    .line 820
    :cond_2
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "External class \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is attempting to use the frameworks-only ParcelableSpan interface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TextUtils"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "prop":Ljava/lang/Object;
    .end local v7    # "ps":Landroid/text/ParcelableSpan;
    .end local v8    # "spanTypeId":I
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 831
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v3    # "os":[Ljava/lang/Object;
    goto :goto_3

    .line 833
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    if-eqz p0, :cond_6

    .line 835
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_3

    .line 837
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 840
    :goto_3
    return-void
.end method

.method private static greylist-max-o writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    .line 843
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    return-void
.end method
