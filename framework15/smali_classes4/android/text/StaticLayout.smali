.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHAR_NEW_LINE:C = '\n'

.field private static final greylist-max-o COLUMNS_ELLIPSIZE:I = 0x7

.field private static final greylist-max-o COLUMNS_NORMAL:I = 0x5

.field private static final greylist-max-o DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final greylist-max-o DESCENT:I = 0x2

.field private static final greylist-max-o DIR:I = 0x0

.field private static final greylist-max-o DIR_SHIFT:I = 0x1e

.field private static final greylist-max-o ELLIPSIS_COUNT:I = 0x6

.field private static final greylist ELLIPSIS_START:I = 0x5

.field private static final blacklist END_HYPHEN_MASK:I = 0x7

.field private static final greylist-max-o EXTRA:I = 0x3

.field private static final greylist-max-o EXTRA_ROUNDING:D = 0.5

.field private static final greylist-max-o HYPHEN:I = 0x4

.field private static final greylist-max-o HYPHEN_MASK:I = 0xff

.field private static final greylist-max-o START:I = 0x0

.field private static final blacklist START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final blacklist START_HYPHEN_MASK:I = 0x18

.field private static final greylist-max-o START_MASK:I = 0x1fffffff

.field private static final greylist-max-o TAB:I = 0x0

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field private static final greylist-max-o TAB_MASK:I = 0x20000000

.field static final greylist-max-o TAG:Ljava/lang/String; = "StaticLayout"

.field private static final greylist-max-o TOP:I = 0x1


# instance fields
.field private greylist-max-o mBottomPadding:I

.field private greylist mColumns:I

.field private blacklist mDrawingBounds:Landroid/graphics/RectF;

.field private greylist-max-o mEllipsized:Z

.field private greylist-max-o mLeftIndents:[I

.field private greylist mLineCount:I

.field private greylist mLineDirections:[Landroid/text/Layout$Directions;

.field private greylist mLines:[I

.field private greylist-max-o mMaxLineHeight:I

.field private greylist mMaximumVisibleLineCount:I

.field private greylist-max-o mRightIndents:[I

.field private greylist-max-o mTopPadding:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, v1, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x7

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    const-class v0, Landroid/text/Layout$Directions;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, v1, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/text/StaticLayout$Builder;ZI)V
    .locals 23

    move-object/from16 v2, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v17

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v18

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/StaticLayout$Builder;)Z

    move-result v21

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v22

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v22}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, v1, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v2, p3

    iput v2, v1, Landroid/text/StaticLayout;->mColumns:I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    iput v3, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    iput-object v3, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    :cond_2
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, v1, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLeftIndents:[I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/StaticLayout;->mRightIndents:[I

    const-string v0, "Constructing StaticLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p1

    move/from16 v4, p2

    :try_start_1
    invoke-virtual {v1, v3, v0, v4}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout$Builder;ZILandroid/text/StaticLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZI)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/StaticLayout;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p9, p8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p10}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p11}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p12}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p13}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz p11, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    invoke-direct {p0, v0, p10, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZI)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method private blacklist calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v4

    sub-float v4, p5, v4

    cmpg-float v5, p8, v4

    const/4 v6, 0x5

    if-gtz v5, :cond_0

    if-nez p10, :cond_0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v6

    const/4 v6, 0x0

    aput v6, v5, v7

    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x6

    aput v6, v5, v7

    return-void

    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p9

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    sub-int v10, p2, p1

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v12, 0x0

    const-string v13, "StaticLayout"

    const/4 v14, 0x1

    if-ne v2, v11, :cond_4

    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v11, v14, :cond_3

    const/4 v11, 0x0

    move v13, v10

    :goto_0
    if-lez v13, :cond_2

    add-int/lit8 v15, v13, -0x1

    add-int v15, v15, p1

    sub-int v15, v15, p4

    invoke-virtual {v1, v15}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v15

    add-float v16, v15, v11

    add-float v16, v16, v5

    cmpl-float v16, v16, v4

    if-lez v16, :cond_1

    :goto_1
    if-ge v13, v10, :cond_2

    add-int v16, v13, p1

    sub-int v14, v16, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    cmpl-float v14, v14, v12

    if-nez v14, :cond_2

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    add-float/2addr v11, v15

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    move v9, v13

    goto/16 :goto_a

    :cond_3
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "Start Ellipsis only supported with one line"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_4
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_b

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_b

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v11, :cond_5

    goto/16 :goto_6

    :cond_5
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_a

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v10

    sub-float v16, v4, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    nop

    :goto_2
    if-lez v15, :cond_7

    add-int/lit8 v17, v15, -0x1

    add-int v17, v17, p1

    sub-int v6, v17, p4

    invoke-virtual {v1, v6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v6

    add-float v17, v6, v13

    cmpl-float v17, v17, v16

    if-lez v17, :cond_6

    :goto_3
    if-ge v15, v10, :cond_7

    add-int v17, v15, p1

    sub-int v12, v17, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    const/16 v17, 0x0

    cmpl-float v12, v12, v17

    if-nez v12, :cond_7

    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    add-float/2addr v13, v6

    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x5

    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    sub-float v6, v4, v5

    sub-float/2addr v6, v13

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v15, :cond_9

    add-int v14, v12, p1

    sub-int v14, v14, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    add-float v17, v14, v11

    cmpl-float v17, v17, v6

    if-lez v17, :cond_8

    goto :goto_5

    :cond_8
    add-float/2addr v11, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    move v8, v12

    sub-int v9, v15, v12

    goto :goto_a

    :cond_a
    const/4 v6, 0x5

    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v6, "Middle Ellipsis only supported with one line"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_b
    :goto_6
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_d

    add-int v12, v11, p1

    sub-int v12, v12, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    add-float v13, v12, v6

    add-float/2addr v13, v5

    cmpl-float v13, v13, v4

    if-lez v13, :cond_c

    goto :goto_8

    :cond_c
    add-float/2addr v6, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    move v8, v11

    sub-int v9, v10, v11

    if-eqz p10, :cond_f

    if-nez v9, :cond_f

    if-lez v10, :cond_f

    add-int/lit8 v8, v10, -0x1

    :goto_9
    if-lez v8, :cond_e

    add-int v12, v8, p1

    sub-int v12, v12, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_e

    if-eqz p11, :cond_e

    add-int v12, v8, p1

    sub-int v12, v12, p4

    aget-char v12, p11, v12

    const/16 v14, 0xa

    if-eq v12, v14, :cond_e

    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_e
    sub-int v9, v10, v8

    :cond_f
    nop

    :cond_10
    :goto_a
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v11, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v11, v3

    const/4 v12, 0x5

    add-int/2addr v11, v12

    aput v8, v6, v11

    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v11, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x6

    aput v9, v6, v11

    return-void
.end method

.method private static blacklist getBaseHyphenationFrequency(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getTotalInsets(I)F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private blacklist out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 29

    move-object/from16 v12, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p11

    move-object/from16 v11, p13

    move/from16 v9, p18

    move/from16 v8, p23

    move-object/from16 v10, p24

    iget v7, v12, Landroid/text/StaticLayout;->mLineCount:I

    iget v0, v12, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v7, v0

    iget v0, v12, Landroid/text/StaticLayout;->mColumns:I

    add-int v0, v16, v0

    const/4 v6, 0x1

    add-int/lit8 v5, v0, 0x1

    iget-object v0, v12, Landroid/text/StaticLayout;->mLines:[I

    invoke-virtual/range {p17 .. p17}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    array-length v1, v0

    const/4 v4, 0x0

    if-lt v5, v1, :cond_0

    invoke-static {v5}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v12, Landroid/text/StaticLayout;->mLines:[I

    move-object v0, v1

    move-object/from16 v18, v0

    goto :goto_0

    :cond_0
    move-object/from16 v18, v0

    :goto_0
    iget-object v0, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v7, v0, :cond_1

    const-class v0, Landroid/text/Layout$Directions;

    invoke-static {v7}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iget-object v1, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v2, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_1
    if-eqz v15, :cond_4

    move/from16 v3, p4

    iput v3, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v2, p5

    iput v2, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v1, p6

    iput v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v19, 0x0

    move/from16 v8, v19

    :goto_1
    array-length v4, v15

    if-ge v8, v4, :cond_3

    aget-object v4, v15, v8

    instance-of v4, v4, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v4, :cond_2

    aget-object v4, v15, v8

    check-cast v4, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v20, p12, v8

    move-object v0, v4

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v13, 0x0

    move/from16 v4, v20

    move/from16 v19, v5

    move/from16 v5, p8

    move v13, v6

    move-object/from16 v6, p13

    move/from16 v21, v7

    move-object/from16 v7, p27

    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_2

    :cond_2
    move/from16 v19, v5

    move v13, v6

    move/from16 v21, v7

    aget-object v0, v15, v8

    aget v4, p12, v8

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p8

    move-object/from16 v6, p13

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p4

    move/from16 v2, p5

    move/from16 v1, p6

    move/from16 v0, p7

    move v6, v13

    move/from16 v5, v19

    move/from16 v7, v21

    const/4 v4, 0x0

    move/from16 v13, p2

    goto :goto_1

    :cond_3
    move/from16 v19, v5

    move v13, v6

    move/from16 v21, v7

    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    goto :goto_3

    :cond_4
    move/from16 v19, v5

    move v13, v6

    move/from16 v21, v7

    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    :goto_3
    if-nez v21, :cond_5

    move v6, v13

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    move/from16 v26, v6

    add-int/lit8 v7, v21, 0x1

    iget v0, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v7, v0, :cond_6

    move v6, v13

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    move/from16 v27, v6

    if-eqz v10, :cond_f

    if-eqz p28, :cond_7

    iget v0, v12, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v0, v13

    iget v1, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v1, :cond_7

    move v0, v13

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    move-object v8, v10

    move v10, v0

    iget v0, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v13, :cond_8

    if-nez p28, :cond_9

    :cond_8
    if-eqz v26, :cond_a

    if-nez p28, :cond_a

    :cond_9
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_c

    :cond_a
    if-nez v26, :cond_d

    if-nez v27, :cond_b

    if-nez p28, :cond_d

    :cond_b
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_d

    :cond_c
    move v6, v13

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_7
    move/from16 v28, v6

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p17

    move/from16 v4, p23

    move/from16 v5, p25

    move-object/from16 v6, p24

    move/from16 v7, v21

    move/from16 v13, p23

    move-object v15, v8

    move/from16 v8, p26

    move v15, v9

    move-object/from16 v9, p27

    move-object/from16 v11, p22

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V

    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    move/from16 v13, p23

    move v15, v9

    iget-object v0, v12, Landroid/text/StaticLayout;->mLines:[I

    iget v1, v12, Landroid/text/StaticLayout;->mColumns:I

    mul-int v1, v1, v21

    add-int/lit8 v1, v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, v12, Landroid/text/StaticLayout;->mLines:[I

    iget v1, v12, Landroid/text/StaticLayout;->mColumns:I

    mul-int v1, v1, v21

    add-int/lit8 v1, v1, 0x6

    aput v2, v0, v1

    goto :goto_8

    :cond_f
    move/from16 v13, p23

    move v15, v9

    const/4 v2, 0x0

    :goto_8
    iget-boolean v0, v12, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    move-object/from16 v1, p1

    move v3, v2

    move/from16 v2, p2

    goto :goto_a

    :cond_10
    if-eq v13, v15, :cond_11

    if-lez v15, :cond_11

    add-int/lit8 v0, v15, -0x1

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_12

    const/4 v6, 0x1

    goto :goto_9

    :cond_11
    move-object/from16 v1, p1

    :cond_12
    move v6, v2

    :goto_9
    move v0, v6

    if-ne v14, v15, :cond_13

    if-nez v0, :cond_13

    const/4 v3, 0x1

    move v0, v3

    move v3, v2

    move/from16 v2, p2

    goto :goto_a

    :cond_13
    move v3, v2

    move/from16 v2, p2

    if-ne v2, v15, :cond_14

    if-eqz v0, :cond_14

    const/4 v4, 0x1

    move v0, v4

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    move v0, v4

    :goto_a
    if-eqz v26, :cond_16

    if-eqz p20, :cond_15

    sub-int v4, v24, v22

    iput v4, v12, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_15
    if-eqz p19, :cond_16

    move/from16 v22, v24

    :cond_16
    if-eqz v0, :cond_18

    if-eqz p20, :cond_17

    sub-int v4, v25, v23

    iput v4, v12, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_17
    if-eqz p19, :cond_18

    move/from16 v23, v25

    :cond_18
    if-eqz p16, :cond_1b

    if-nez p21, :cond_19

    if-nez v0, :cond_1b

    :cond_19
    sub-int v4, v23, v22

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p9, v5

    mul-float/2addr v4, v5

    add-float v4, v4, p10

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-ltz v6, :cond_1a

    add-double/2addr v7, v4

    double-to-int v6, v7

    goto :goto_b

    :cond_1a
    neg-double v9, v4

    add-double/2addr v9, v7

    double-to-int v6, v9

    neg-int v6, v6

    :goto_b
    goto :goto_c

    :cond_1b
    const/4 v6, 0x0

    :goto_c
    add-int/lit8 v4, v16, 0x0

    aput v2, v18, v4

    add-int/lit8 v4, v16, 0x1

    aput p8, v18, v4

    add-int/lit8 v4, v16, 0x2

    add-int v5, v23, v6

    aput v5, v18, v4

    add-int/lit8 v4, v16, 0x3

    aput v6, v18, v4

    iget-boolean v4, v12, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v4, :cond_1d

    if-eqz v27, :cond_1d

    if-eqz p19, :cond_1c

    move/from16 v4, v25

    goto :goto_d

    :cond_1c
    move/from16 v4, v23

    :goto_d
    sub-int v5, v4, v22

    add-int v5, p8, v5

    iput v5, v12, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_1d
    sub-int v4, v23, v22

    add-int/2addr v4, v6

    add-int v4, p8, v4

    iget v5, v12, Landroid/text/StaticLayout;->mColumns:I

    add-int v5, v16, v5

    add-int/2addr v5, v3

    aput v14, v18, v5

    iget v5, v12, Landroid/text/StaticLayout;->mColumns:I

    add-int v5, v16, v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    aput v4, v18, v5

    add-int/lit8 v5, v16, 0x0

    aget v7, v18, v5

    if-eqz p14, :cond_1e

    const/high16 v8, 0x20000000

    goto :goto_e

    :cond_1e
    move v8, v3

    :goto_e
    or-int/2addr v7, v8

    aput v7, v18, v5

    iget-boolean v5, v12, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v5, :cond_21

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v7, p24

    if-ne v7, v5, :cond_1f

    add-int/lit8 v5, v16, 0x4

    invoke-static/range {p15 .. p15}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v8

    invoke-static {v3, v8}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v3

    aput v3, v18, v5

    goto :goto_f

    :cond_1f
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v5, :cond_20

    add-int/lit8 v5, v16, 0x4

    invoke-static/range {p15 .. p15}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v8

    invoke-static {v8, v3}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v3

    aput v3, v18, v5

    goto :goto_f

    :cond_20
    add-int/lit8 v5, v16, 0x4

    invoke-static {v3, v3}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v3

    aput v3, v18, v5

    goto :goto_f

    :cond_21
    move-object/from16 v7, p24

    add-int/lit8 v3, v16, 0x4

    aput p15, v18, v3

    :goto_f
    add-int/lit8 v3, v16, 0x0

    aget v5, v18, v3

    shl-int/lit8 v8, v17, 0x1e

    or-int/2addr v5, v8

    aput v5, v18, v3

    iget-object v3, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v5, v2, v13

    sub-int v8, v14, v13

    move-object/from16 v9, p17

    invoke-virtual {v9, v5, v8}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v5

    aput-object v5, v3, v21

    iget v3, v12, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v12, Landroid/text/StaticLayout;->mLineCount:I

    return v4
.end method

.method static blacklist packHyphenEdit(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static blacklist unpackEndHyphenEdit(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static blacklist unpackStartHyphenEdit(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method greylist-max-o generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 95

    move-object/from16 v13, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v46

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v47

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v14, v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v48

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v6, 0x0

    iput v6, v13, Landroid/text/StaticLayout;->mLineCount:I

    iput-boolean v6, v13, Landroid/text/StaticLayout;->mEllipsized:Z

    iget v0, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, v13, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/4 v4, 0x0

    iput-object v4, v13, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v49

    const/16 v24, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v46, v0

    const/16 v29, 0x0

    if-nez v0, :cond_2

    cmpl-float v0, v47, v29

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v6

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v5

    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/16 v25, 0x0

    iget-object v0, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_4

    iget-object v0, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_8

    :cond_4
    :goto_3
    iget-object v0, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_5

    move v0, v6

    goto :goto_4

    :cond_5
    iget-object v0, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v0

    :goto_4
    iget-object v1, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v1, :cond_6

    move v1, v6

    goto :goto_5

    :cond_6
    iget-object v1, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v1, v1

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v4, v2, [I

    const/16 v27, 0x0

    move/from16 v5, v27

    :goto_6
    if-ge v5, v0, :cond_7

    iget-object v6, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v6, v6, v5

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_8

    aget v6, v4, v5

    move/from16 v30, v0

    iget-object v0, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v0, v0, v5

    add-int/2addr v6, v0

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v30

    goto :goto_7

    :cond_8
    move/from16 v30, v0

    move-object v6, v4

    :goto_8
    invoke-static {}, Landroid/text/ClientFlags;->fixLineHeightForLocale()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v0

    move/from16 v93, v4

    move v4, v1

    move/from16 v1, v93

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, v0

    move/from16 v93, v4

    move v4, v1

    move/from16 v1, v93

    :goto_9
    new-instance v0, Landroid/graphics/text/LineBreaker$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$Builder;-><init>()V

    move/from16 v30, v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-static {v1}, Landroid/text/StaticLayout;->getBaseHyphenationFrequency(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/text/LineBreaker$Builder;->setIndents([I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setUseBoundsForWidth(Z)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreaker$Builder;->build()Landroid/graphics/text/LineBreaker;

    move-result-object v1

    new-instance v0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;-><init>()V

    const/16 v31, 0x0

    move-object/from16 v32, v0

    instance-of v0, v12, Landroid/text/Spanned;

    if-eqz v0, :cond_a

    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    move-object/from16 v33, v0

    instance-of v0, v12, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_b

    move-object v0, v12

    check-cast v0, Landroid/text/PrecomputedText;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v34

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v35

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v36

    move/from16 v37, v14

    move-object/from16 v14, v33

    move-object/from16 v33, v0

    move-object/from16 v50, v1

    move/from16 v51, v30

    move v1, v11

    move/from16 v52, v2

    move v2, v10

    move-object/from16 v53, v3

    move-object v3, v15

    move/from16 v54, v4

    move-object v4, v9

    move/from16 v55, v5

    const/4 v13, 0x1

    move/from16 v5, v34

    move-object/from16 v57, v6

    move/from16 v6, v35

    move-object/from16 v58, v7

    move-object/from16 v7, v36

    invoke-virtual/range {v0 .. v7}, Landroid/text/PrecomputedText;->checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v2, v33

    goto :goto_b

    :pswitch_0
    invoke-virtual/range {v33 .. v33}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v31

    goto :goto_b

    :pswitch_1
    new-instance v1, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v1, v9}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    move-object/from16 v2, v33

    invoke-static {v2, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v31

    goto :goto_b

    :pswitch_2
    move-object/from16 v2, v33

    goto :goto_b

    :cond_b
    move-object/from16 v50, v1

    move/from16 v52, v2

    move-object/from16 v53, v3

    move/from16 v54, v4

    move/from16 v55, v5

    move-object/from16 v57, v6

    move-object/from16 v58, v7

    move/from16 v37, v14

    move/from16 v51, v30

    move-object/from16 v14, v33

    const/4 v13, 0x1

    :goto_b
    if-nez v31, :cond_c

    new-instance v6, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    move-object v0, v6

    move-object v1, v9

    move-object v3, v15

    invoke-direct/range {v0 .. v5}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V

    move-object v1, v6

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmCalculateBounds(Landroid/text/StaticLayout$Builder;)Z

    move-result v5

    move-object v0, v12

    move v2, v11

    move v3, v10

    invoke-static/range {v0 .. v5}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v31

    move-object/from16 v7, v31

    goto :goto_c

    :cond_c
    move-object/from16 v7, v31

    :goto_c
    const/4 v0, 0x0

    move v6, v0

    move/from16 v0, v17

    move-object/from16 v1, v25

    :goto_d
    array-length v2, v7

    if-ge v6, v2, :cond_38

    if-nez v6, :cond_d

    move v2, v11

    goto :goto_e

    :cond_d
    add-int/lit8 v2, v6, -0x1

    aget-object v2, v7, v2

    iget v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_e
    move v5, v2

    aget-object v2, v7, v6

    iget v4, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    const/4 v2, 0x1

    move v3, v8

    move/from16 v17, v8

    const/16 v25, 0x0

    if-eqz v14, :cond_15

    const-class v13, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v14, v5, v4, v13}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/LeadingMarginSpan;

    const/16 v26, 0x0

    move-object/from16 v27, v9

    move/from16 v9, v26

    :goto_f
    move/from16 v30, v11

    array-length v11, v13

    if-ge v9, v11, :cond_f

    aget-object v11, v13, v9

    move-object/from16 v26, v15

    aget-object v15, v13, v9

    move-object/from16 v31, v12

    const/4 v12, 0x1

    invoke-interface {v15, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v15

    sub-int/2addr v3, v15

    aget-object v15, v13, v9

    move-object/from16 v28, v13

    const/4 v13, 0x0

    invoke-interface {v15, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v15

    sub-int v17, v17, v15

    instance-of v15, v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v15, :cond_e

    move-object v15, v11

    check-cast v15, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    nop

    invoke-interface {v15}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v15, v26

    move-object/from16 v13, v28

    move/from16 v11, v30

    move-object/from16 v12, v31

    goto :goto_f

    :cond_f
    move-object/from16 v31, v12

    move-object/from16 v28, v13

    move-object/from16 v26, v15

    const/4 v13, 0x0

    const-class v9, Landroid/text/style/LineHeightSpan;

    invoke-static {v14, v5, v4, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/LineHeightSpan;

    array-length v11, v9

    if-nez v11, :cond_10

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v33, v1

    move v13, v2

    move v12, v3

    move/from16 v11, v17

    move-object/from16 v34, v25

    goto :goto_12

    :cond_10
    if-eqz v1, :cond_11

    array-length v11, v1

    array-length v12, v9

    if-ge v11, v12, :cond_12

    :cond_11
    array-length v11, v9

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    :cond_12
    const/4 v11, 0x0

    :goto_10
    array-length v12, v9

    if-ge v11, v12, :cond_14

    aget-object v12, v9, v11

    invoke-interface {v14, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    if-ge v12, v5, :cond_13

    move-object/from16 v15, p0

    invoke-virtual {v15, v12}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v13

    invoke-virtual {v15, v13}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v13

    aput v13, v1, v11

    goto :goto_11

    :cond_13
    move-object/from16 v15, p0

    aput v24, v1, v11

    :goto_11
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x0

    goto :goto_10

    :cond_14
    move-object/from16 v15, p0

    move-object/from16 v33, v1

    move v13, v2

    move v12, v3

    move-object/from16 v34, v9

    move/from16 v11, v17

    goto :goto_12

    :cond_15
    move-object/from16 v27, v9

    move/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v26, v15

    move-object/from16 v15, p0

    move-object/from16 v33, v1

    move v13, v2

    move v12, v3

    move/from16 v11, v17

    move-object/from16 v34, v25

    :goto_12
    const/4 v1, 0x0

    if-eqz v14, :cond_18

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v14, v5, v4, v2}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_17

    array-length v3, v2

    new-array v3, v3, [F

    const/4 v9, 0x0

    :goto_13
    move-object/from16 v17, v1

    array-length v1, v2

    if-ge v9, v1, :cond_16

    aget-object v1, v2, v9

    invoke-interface {v1}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v1

    int-to-float v1, v1

    aput v1, v3, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v17

    goto :goto_13

    :cond_16
    array-length v1, v3

    const/4 v9, 0x0

    invoke-static {v3, v9, v1}, Ljava/util/Arrays;->sort([FII)V

    move-object v1, v3

    move-object v9, v1

    goto :goto_15

    :cond_17
    move-object/from16 v17, v1

    goto :goto_14

    :cond_18
    move-object/from16 v17, v1

    :goto_14
    move-object/from16 v9, v17

    :goto_15
    aget-object v1, v7, v6

    iget-object v3, v1, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v35

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v36

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v38

    int-to-float v1, v11

    move-object/from16 v2, v32

    invoke-virtual {v2, v1}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setWidth(F)V

    int-to-float v1, v12

    invoke-virtual {v2, v1, v13}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setIndent(FI)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v2, v9, v1}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setTabStops([FF)V

    nop

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v1

    move/from16 v17, v6

    iget v6, v15, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v25, v13

    move-object/from16 v13, v50

    invoke-virtual {v13, v1, v2, v6}, Landroid/graphics/text/LineBreaker;->computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/text/LineBreaker$Result;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    move v0, v1

    move-object/from16 v32, v2

    new-array v2, v0, [I

    move-object/from16 v18, v2

    new-array v2, v0, [F

    move-object/from16 v19, v2

    new-array v2, v0, [F

    move-object/from16 v20, v2

    new-array v2, v0, [F

    move-object/from16 v21, v2

    new-array v2, v0, [Z

    move-object/from16 v22, v2

    new-array v2, v0, [I

    move/from16 v39, v0

    move-object/from16 v45, v2

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    move-object/from16 v44, v22

    goto :goto_16

    :cond_19
    move-object/from16 v32, v2

    move/from16 v39, v0

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    move-object/from16 v44, v22

    move-object/from16 v45, v23

    :goto_16
    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_1a

    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineBreakOffset(I)I

    move-result v2

    aput v2, v40, v0

    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineWidth(I)F

    move-result v2

    aput v2, v41, v0

    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineAscent(I)F

    move-result v2

    aput v2, v42, v0

    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineDescent(I)F

    move-result v2

    aput v2, v43, v0

    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->hasLineTab(I)Z

    move-result v2

    aput-boolean v2, v44, v0

    nop

    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getStartLineHyphenEdit(I)I

    move-result v2

    move-object/from16 v50, v7

    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getEndLineHyphenEdit(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v2

    aput v2, v45, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v50

    goto :goto_17

    :cond_1a
    move-object/from16 v50, v7

    iget v0, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v2, v15, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v7, v0, v2

    move-object/from16 v2, v58

    if-eqz v2, :cond_1c

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v0, :cond_1b

    iget v0, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v58, v13

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1d

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v0, :cond_1d

    goto :goto_18

    :cond_1b
    move-object/from16 v58, v13

    const/4 v13, 0x1

    :goto_18
    move v0, v13

    goto :goto_19

    :cond_1c
    move-object/from16 v58, v13

    const/4 v13, 0x1

    :cond_1d
    const/4 v0, 0x0

    :goto_19
    move/from16 v59, v0

    if-lez v7, :cond_22

    if-ge v7, v1, :cond_22

    if-eqz v59, :cond_22

    const/4 v0, 0x0

    const/16 v18, 0x0

    add-int/lit8 v19, v7, -0x1

    move/from16 v13, v19

    :goto_1a
    if-ge v13, v1, :cond_21

    move-object/from16 v20, v2

    add-int/lit8 v2, v1, -0x1

    if-ne v13, v2, :cond_1e

    aget v2, v41, v13

    add-float/2addr v0, v2

    move-object/from16 v60, v6

    goto :goto_1c

    :cond_1e
    if-nez v13, :cond_1f

    const/4 v2, 0x0

    goto :goto_1b

    :cond_1f
    add-int/lit8 v2, v13, -0x1

    aget v2, v40, v2

    :goto_1b
    move-object/from16 v60, v6

    aget v6, v40, v13

    if-ge v2, v6, :cond_20

    invoke-virtual {v3, v2}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v6

    add-float/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v60

    goto :goto_1b

    :cond_20
    :goto_1c
    aget-boolean v2, v44, v13

    or-int v18, v18, v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v20

    move-object/from16 v6, v60

    goto :goto_1a

    :cond_21
    move-object/from16 v20, v2

    move-object/from16 v60, v6

    add-int/lit8 v2, v7, -0x1

    add-int/lit8 v6, v1, -0x1

    aget v6, v40, v6

    aput v6, v40, v2

    add-int/lit8 v2, v7, -0x1

    aput v0, v41, v2

    add-int/lit8 v2, v7, -0x1

    aput-boolean v18, v44, v2

    move v1, v7

    move v13, v1

    goto :goto_1d

    :cond_22
    move-object/from16 v20, v2

    move-object/from16 v60, v6

    move v13, v1

    :goto_1d
    move v0, v5

    move/from16 v1, v55

    move/from16 v2, v51

    move/from16 v6, v54

    move/from16 v18, v52

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v28, v5

    move-object/from16 v61, v9

    move/from16 v9, v28

    move/from16 v93, v18

    move/from16 v18, v0

    move/from16 v0, v93

    :goto_1e
    if-ge v9, v4, :cond_36

    add-int/lit8 v62, v22, 0x1

    move/from16 v63, v7

    aget v7, v36, v22

    mul-int/lit8 v22, v21, 0x4

    const/16 v56, 0x0

    add-int/lit8 v22, v22, 0x0

    move-object/from16 v64, v3

    aget v3, v38, v22

    move/from16 v65, v4

    move-object/from16 v4, v53

    iput v3, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v3, v21, 0x4

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, v38, v3

    iput v3, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v3, v21, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v3, v38, v3

    iput v3, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v3, v21, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v3, v38, v3

    iput v3, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v53, v21, 0x1

    iget v3, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v3, v1, :cond_23

    iget v1, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_23
    iget v3, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v3, v6, :cond_24

    iget v6, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_24
    iget v3, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v3, v0, :cond_25

    iget v0, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_25
    iget v3, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v3, v2, :cond_26

    iget v2, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v3, v23

    goto :goto_1f

    :cond_26
    move/from16 v3, v23

    :goto_1f
    if-ge v3, v13, :cond_27

    aget v21, v40, v3

    move/from16 v22, v0

    add-int v0, v5, v21

    if-ge v0, v9, :cond_28

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v22

    goto :goto_1f

    :cond_27
    move/from16 v22, v0

    :cond_28
    move v0, v3

    move v3, v6

    move/from16 v66, v18

    move/from16 v6, v22

    move/from16 v67, v24

    :goto_20
    if-ge v0, v13, :cond_35

    aget v18, v40, v0

    move-object/from16 v22, v4

    add-int v4, v5, v18

    if-gt v4, v7, :cond_34

    aget v4, v40, v0

    add-int/2addr v4, v5

    if-ge v4, v10, :cond_29

    move/from16 v28, v19

    goto :goto_21

    :cond_29
    move/from16 v28, v56

    :goto_21
    if-eqz v49, :cond_2a

    aget v18, v42, v0

    move/from16 v68, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_22

    :cond_2a
    move/from16 v68, v5

    move v5, v3

    :goto_22
    nop

    if-eqz v49, :cond_2b

    aget v18, v43, v0

    move/from16 v21, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_23

    :cond_2b
    move/from16 v21, v3

    move v3, v6

    :goto_23
    nop

    if-eqz v49, :cond_2e

    if-ge v5, v1, :cond_2c

    move v1, v5

    :cond_2c
    if-le v3, v2, :cond_2d

    move v2, v3

    move/from16 v69, v1

    move/from16 v70, v2

    goto :goto_24

    :cond_2d
    move/from16 v69, v1

    move/from16 v70, v2

    goto :goto_24

    :cond_2e
    move/from16 v69, v1

    move/from16 v70, v2

    :goto_24
    move/from16 v1, v37

    if-nez v0, :cond_2f

    if-eq v12, v8, :cond_2f

    sub-int v2, v8, v12

    int-to-float v2, v2

    sub-float v1, v37, v2

    goto :goto_25

    :cond_2f
    if-eqz v0, :cond_30

    if-eq v11, v8, :cond_30

    sub-int v2, v8, v11

    int-to-float v2, v2

    sub-float v1, v37, v2

    :cond_30
    :goto_25
    cmpg-float v2, v1, v29

    if-gez v2, :cond_31

    move/from16 v1, v37

    move/from16 v71, v1

    goto :goto_26

    :cond_31
    move/from16 v71, v1

    :goto_26
    aget-boolean v1, v44, v0

    move-object/from16 v74, v14

    move-object/from16 v73, v32

    move/from16 v72, v37

    move v14, v1

    aget v1, v45, v0

    move-object/from16 v2, v26

    move v15, v1

    aget v26, v41, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v75, v2

    move-object/from16 v76, v20

    move/from16 v2, v66

    move/from16 v77, v3

    move-object/from16 v37, v64

    move/from16 v64, v21

    move v3, v4

    move/from16 v80, v4

    move-object/from16 v78, v22

    move/from16 v79, v65

    move v4, v5

    move/from16 v65, v68

    move/from16 v68, v5

    move/from16 v5, v77

    move/from16 v82, v6

    move-object/from16 v81, v60

    move/from16 v60, v17

    move/from16 v6, v69

    move/from16 v83, v7

    move/from16 v93, v63

    move-object/from16 v63, v50

    move/from16 v50, v93

    move/from16 v7, v70

    move/from16 v84, v8

    move/from16 v8, v67

    move/from16 v86, v9

    move-object/from16 v85, v27

    move/from16 v9, v46

    move/from16 v87, v10

    move/from16 v10, v47

    move/from16 v88, v30

    move/from16 v30, v11

    move-object/from16 v11, v34

    move-object/from16 v89, v31

    move/from16 v31, v12

    move-object/from16 v12, v33

    move/from16 v90, v13

    move/from16 v92, v19

    move/from16 v91, v56

    move-object/from16 v56, v58

    move/from16 v58, v25

    move-object/from16 v13, v78

    move-object/from16 v17, v37

    move/from16 v18, v87

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v48

    move-object/from16 v22, v35

    move/from16 v23, v65

    move-object/from16 v24, v76

    move/from16 v25, v71

    invoke-direct/range {v0 .. v28}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v67

    move/from16 v5, v80

    move/from16 v0, v83

    if-ge v5, v0, :cond_32

    move-object/from16 v3, v78

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v4, v55

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v7, v51

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v8, v54

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v10, v52

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_27

    :cond_32
    move/from16 v7, v51

    move/from16 v10, v52

    move/from16 v8, v54

    move/from16 v4, v55

    move-object/from16 v3, v78

    move/from16 v1, v91

    move/from16 v2, v91

    move/from16 v6, v91

    move/from16 v9, v91

    move/from16 v93, v9

    move v9, v1

    move/from16 v1, v93

    move/from16 v94, v6

    move v6, v2

    move/from16 v2, v94

    :goto_27
    move/from16 v66, v5

    add-int/lit8 v11, v32, 0x1

    move-object/from16 v12, p0

    iget v13, v12, Landroid/text/StaticLayout;->mLineCount:I

    iget v14, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v13, v14, :cond_33

    iget-boolean v13, v12, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v13, :cond_33

    return-void

    :cond_33
    move/from16 v55, v4

    move/from16 v51, v7

    move/from16 v54, v8

    move/from16 v52, v10

    move-object v15, v12

    move/from16 v12, v31

    move-object/from16 v64, v37

    move/from16 v25, v58

    move/from16 v17, v60

    move/from16 v5, v65

    move/from16 v37, v72

    move-object/from16 v32, v73

    move-object/from16 v14, v74

    move-object/from16 v26, v75

    move-object/from16 v20, v76

    move/from16 v65, v79

    move-object/from16 v60, v81

    move/from16 v8, v84

    move-object/from16 v27, v85

    move/from16 v10, v87

    move-object/from16 v31, v89

    move/from16 v13, v90

    move/from16 v19, v92

    move v7, v0

    move-object v4, v3

    move v3, v6

    move v6, v9

    move v0, v11

    move/from16 v11, v30

    move-object/from16 v58, v56

    move/from16 v9, v86

    move/from16 v30, v88

    move/from16 v56, v91

    move-object/from16 v93, v63

    move/from16 v63, v50

    move-object/from16 v50, v93

    goto/16 :goto_20

    :cond_34
    move/from16 v82, v6

    move/from16 v84, v8

    move/from16 v86, v9

    move/from16 v87, v10

    move/from16 v90, v13

    move-object/from16 v74, v14

    move/from16 v92, v19

    move-object/from16 v76, v20

    move-object/from16 v75, v26

    move-object/from16 v85, v27

    move/from16 v88, v30

    move-object/from16 v89, v31

    move-object/from16 v73, v32

    move/from16 v72, v37

    move/from16 v10, v52

    move/from16 v8, v54

    move/from16 v4, v55

    move/from16 v91, v56

    move-object/from16 v56, v58

    move-object/from16 v81, v60

    move-object/from16 v37, v64

    move/from16 v79, v65

    move/from16 v32, v0

    move/from16 v64, v3

    move/from16 v65, v5

    move v0, v7

    move/from16 v30, v11

    move/from16 v31, v12

    move-object v12, v15

    move/from16 v60, v17

    move-object/from16 v3, v22

    move/from16 v58, v25

    move/from16 v7, v51

    move/from16 v93, v63

    move-object/from16 v63, v50

    move/from16 v50, v93

    goto :goto_28

    :cond_35
    move/from16 v82, v6

    move/from16 v84, v8

    move/from16 v86, v9

    move/from16 v87, v10

    move/from16 v90, v13

    move-object/from16 v74, v14

    move/from16 v92, v19

    move-object/from16 v76, v20

    move-object/from16 v75, v26

    move-object/from16 v85, v27

    move/from16 v88, v30

    move-object/from16 v89, v31

    move-object/from16 v73, v32

    move/from16 v72, v37

    move/from16 v10, v52

    move/from16 v8, v54

    move/from16 v91, v56

    move-object/from16 v56, v58

    move-object/from16 v81, v60

    move-object/from16 v37, v64

    move/from16 v79, v65

    move/from16 v32, v0

    move/from16 v64, v3

    move-object v3, v4

    move/from16 v65, v5

    move v0, v7

    move/from16 v30, v11

    move/from16 v31, v12

    move-object v12, v15

    move/from16 v60, v17

    move/from16 v58, v25

    move/from16 v7, v51

    move/from16 v4, v55

    move/from16 v93, v63

    move-object/from16 v63, v50

    move/from16 v50, v93

    :goto_28
    move v9, v0

    move/from16 v55, v4

    move/from16 v51, v7

    move/from16 v54, v8

    move/from16 v52, v10

    move-object v15, v12

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v23, v32

    move/from16 v7, v50

    move/from16 v21, v53

    move/from16 v25, v58

    move/from16 v17, v60

    move/from16 v22, v62

    move-object/from16 v50, v63

    move/from16 v6, v64

    move/from16 v5, v65

    move/from16 v18, v66

    move/from16 v24, v67

    move-object/from16 v32, v73

    move-object/from16 v14, v74

    move-object/from16 v26, v75

    move-object/from16 v20, v76

    move/from16 v4, v79

    move-object/from16 v60, v81

    move/from16 v0, v82

    move/from16 v8, v84

    move-object/from16 v27, v85

    move/from16 v10, v87

    move/from16 v30, v88

    move-object/from16 v31, v89

    move/from16 v13, v90

    move-object/from16 v53, v3

    move-object/from16 v3, v37

    move-object/from16 v58, v56

    move/from16 v37, v72

    goto/16 :goto_1e

    :cond_36
    move/from16 v79, v4

    move/from16 v65, v5

    move/from16 v84, v8

    move/from16 v86, v9

    move/from16 v87, v10

    move/from16 v90, v13

    move-object/from16 v74, v14

    move-object/from16 v76, v20

    move-object/from16 v75, v26

    move-object/from16 v85, v27

    move/from16 v88, v30

    move-object/from16 v89, v31

    move-object/from16 v73, v32

    move/from16 v72, v37

    move-object/from16 v63, v50

    move/from16 v10, v52

    move/from16 v8, v54

    move/from16 v4, v55

    move-object/from16 v56, v58

    move-object/from16 v81, v60

    const/16 v91, 0x0

    const/16 v92, 0x1

    move-object/from16 v37, v3

    move/from16 v50, v7

    move/from16 v30, v11

    move/from16 v31, v12

    move-object v12, v15

    move/from16 v60, v17

    move/from16 v58, v25

    move/from16 v7, v51

    move-object/from16 v3, v53

    move/from16 v9, v79

    move/from16 v5, v87

    if-ne v9, v5, :cond_37

    move/from16 v15, v24

    move-object/from16 v1, v33

    move/from16 v0, v39

    move-object/from16 v2, v40

    move-object/from16 v6, v41

    move-object/from16 v9, v42

    move-object/from16 v11, v43

    move-object/from16 v13, v44

    move-object/from16 v14, v45

    goto/16 :goto_29

    :cond_37
    add-int/lit8 v6, v60, 0x1

    move-object/from16 v53, v3

    move/from16 v55, v4

    move/from16 v51, v7

    move/from16 v54, v8

    move/from16 v52, v10

    move-object/from16 v1, v33

    move/from16 v0, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    move-object/from16 v20, v42

    move-object/from16 v21, v43

    move-object/from16 v22, v44

    move-object/from16 v23, v45

    move-object/from16 v50, v56

    move-object/from16 v7, v63

    move/from16 v37, v72

    move-object/from16 v32, v73

    move-object/from16 v14, v74

    move-object/from16 v15, v75

    move-object/from16 v58, v76

    move/from16 v8, v84

    move-object/from16 v9, v85

    move/from16 v11, v88

    move-object/from16 v12, v89

    move/from16 v13, v92

    move v10, v5

    goto/16 :goto_d

    :cond_38
    move/from16 v60, v6

    move-object/from16 v63, v7

    move/from16 v84, v8

    move-object/from16 v85, v9

    move v5, v10

    move/from16 v88, v11

    move-object/from16 v89, v12

    move-object/from16 v74, v14

    move-object/from16 v75, v15

    move-object/from16 v73, v32

    move/from16 v72, v37

    move-object/from16 v56, v50

    move/from16 v7, v51

    move/from16 v10, v52

    move-object/from16 v3, v53

    move/from16 v8, v54

    move/from16 v4, v55

    move-object/from16 v76, v58

    move-object/from16 v12, p0

    move-object/from16 v2, v18

    move-object/from16 v6, v19

    move-object/from16 v9, v20

    move-object/from16 v11, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move/from16 v15, v24

    :goto_29
    move/from16 v50, v0

    move/from16 v0, v88

    if-eq v5, v0, :cond_3a

    move-object/from16 v51, v1

    add-int/lit8 v1, v5, -0x1

    move-object/from16 v52, v2

    move-object/from16 v2, v89

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move-object/from16 v53, v6

    const/16 v6, 0xa

    if-ne v1, v6, :cond_39

    goto :goto_2a

    :cond_39
    move/from16 v55, v4

    move-object/from16 v1, v85

    goto/16 :goto_2c

    :cond_3a
    move-object/from16 v51, v1

    move-object/from16 v52, v2

    move-object/from16 v53, v6

    move-object/from16 v2, v89

    :goto_2a
    iget v1, v12, Landroid/text/StaticLayout;->mLineCount:I

    iget v6, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v1, v6, :cond_3c

    nop

    move-object/from16 v1, v75

    const/4 v6, 0x0

    invoke-static {v2, v5, v5, v1, v6}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v6

    if-eqz v8, :cond_3b

    if-eqz v10, :cond_3b

    iput v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v8, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v10, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v7, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v75, v1

    move-object/from16 v1, v85

    goto :goto_2b

    :cond_3b
    move-object/from16 v75, v1

    move-object/from16 v1, v85

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :goto_2b
    move/from16 v55, v4

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v21, v4

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v22, v4

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v23, v4

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v24, v4

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v39, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v2

    move/from16 v19, v5

    move/from16 v20, v5

    move/from16 v25, v15

    move/from16 v26, v46

    move/from16 v27, v47

    move-object/from16 v30, v3

    move/from16 v33, v16

    move-object/from16 v34, v6

    move/from16 v35, v5

    move/from16 v36, p2

    move/from16 v37, p3

    move/from16 v38, v48

    move/from16 v40, v0

    move-object/from16 v41, v76

    move/from16 v42, v72

    move-object/from16 v44, v1

    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    goto :goto_2c

    :cond_3c
    move/from16 v55, v4

    move-object/from16 v1, v85

    :goto_2c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getHeight(Z)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const-string v1, "StaticLayout"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lineCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled alignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .locals 3

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public whitelist getLineCount()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getLineForVertical(I)I
    .locals 6

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_0
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v0, v1

    shr-int/2addr v3, v4

    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v3, 0x0

    return v3

    :cond_2
    return v1
.end method

.method public whitelist getLineStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getLineTop(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public whitelist getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
