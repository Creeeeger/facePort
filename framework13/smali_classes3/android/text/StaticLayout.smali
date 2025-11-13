.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
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

.field private greylist-max-o mEllipsized:Z

.field private greylist-max-o mEllipsizedWidth:I

.field private blacklist mFallbackLineSpacing:Z

.field private greylist-max-o mLeftIndents:[I

.field private greylist mLineCount:I

.field private greylist mLineDirections:[Landroid/text/Layout$Directions;

.field private greylist mLines:[I

.field private greylist-max-o mMaxLineHeight:I

.field private greylist mMaximumVisibleLineCount:I

.field private greylist-max-o mRightIndents:[I

.field private greylist-max-o mTopPadding:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 10
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .line 581
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 582
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 583
    :cond_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 584
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    goto :goto_0

    .line 585
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    :goto_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v9

    .line 581
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1473
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1492
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 588
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 591
    .local v0, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 592
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 593
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 594
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 596
    const/4 v1, 0x7

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 597
    .end local v0    # "e":Landroid/text/Layout$Ellipsizer;
    goto :goto_1

    .line 598
    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 599
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 602
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 603
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 604
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 606
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 607
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 608
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    .line 610
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 611
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 573
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1473
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1492
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 575
    const/4 v0, 0x7

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 576
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 577
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 578
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
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

    .line 489
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
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

    .line 504
    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    if-nez v10, :cond_0

    .line 519
    move-object v1, v9

    goto :goto_0

    .line 520
    :cond_0
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 521
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto :goto_0

    .line 522
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 518
    :goto_0
    move-object v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1473
    const/4 v0, -0x1

    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1492
    const v0, 0x7fffffff

    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 525
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 526
    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 527
    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 528
    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v4, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 529
    move/from16 v5, p10

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 530
    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 531
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 546
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-eqz v10, :cond_2

    .line 547
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Layout$Ellipsizer;

    .line 549
    .local v6, "e":Landroid/text/Layout$Ellipsizer;
    iput-object v8, v6, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 550
    iput v11, v6, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 551
    iput-object v10, v6, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 552
    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 554
    const/4 v7, 0x7

    iput v7, v8, Landroid/text/StaticLayout;->mColumns:I

    .line 555
    .end local v6    # "e":Landroid/text/Layout$Ellipsizer;
    move/from16 v6, p5

    goto :goto_1

    .line 556
    :cond_2
    const/4 v6, 0x5

    iput v6, v8, Landroid/text/StaticLayout;->mColumns:I

    .line 557
    move/from16 v6, p5

    iput v6, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 560
    :goto_1
    const-class v7, Landroid/text/Layout$Directions;

    const/4 v13, 0x2

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/Layout$Directions;

    iput-object v7, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 561
    iget v7, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v13

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    iput-object v7, v8, Landroid/text/StaticLayout;->mLines:[I

    .line 562
    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 564
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v13

    invoke-virtual {p0, v0, v7, v13}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 566
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->-$$Nest$smrecycle(Landroid/text/StaticLayout$Builder;)V

    .line 567
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 476
    return-void
.end method

.method private blacklist calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V
    .locals 18
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "measured"    # Landroid/text/MeasuredParagraph;
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z
    .param p11, "chs"    # [C

    .line 1130
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v4

    sub-float v4, p5, v4

    .line 1131
    .end local p5    # "avail":F
    .local v4, "avail":F
    cmpg-float v5, p8, v4

    const/4 v6, 0x5

    if-gtz v5, :cond_0

    if-nez p10, :cond_0

    .line 1133
    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v8, v7, v3

    add-int/2addr v8, v6

    const/4 v6, 0x0

    aput v6, v5, v8

    .line 1134
    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x6

    aput v6, v5, v7

    .line 1135
    return-void

    .line 1138
    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p9

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1139
    .local v5, "ellipsisWidth":F
    const/4 v8, 0x0

    .line 1140
    .local v8, "ellipsisStart":I
    const/4 v9, 0x0

    .line 1141
    .local v9, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 1144
    .local v10, "len":I
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v12, 0x0

    const-string v13, "StaticLayout"

    const/4 v14, 0x1

    if-ne v2, v11, :cond_4

    .line 1145
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v11, v14, :cond_3

    .line 1146
    const/4 v11, 0x0

    .line 1149
    .local v11, "sum":F
    move v13, v10

    .local v13, "i":I
    :goto_0
    if-lez v13, :cond_2

    .line 1150
    add-int/lit8 v15, v13, -0x1

    add-int v15, v15, p1

    sub-int v15, v15, p4

    invoke-virtual {v1, v15}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v15

    .line 1151
    .local v15, "w":F
    add-float v16, v15, v11

    add-float v16, v16, v5

    cmpl-float v16, v16, v4

    if-lez v16, :cond_1

    .line 1152
    :goto_1
    if-ge v13, v10, :cond_2

    add-int v16, v13, p1

    sub-int v14, v16, p4

    .line 1153
    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    cmpl-float v14, v14, v12

    if-nez v14, :cond_2

    .line 1154
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_1

    .line 1159
    :cond_1
    add-float/2addr v11, v15

    .line 1149
    .end local v15    # "w":F
    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    goto :goto_0

    .line 1162
    :cond_2
    const/4 v8, 0x0

    .line 1163
    move v9, v13

    .line 1164
    .end local v11    # "sum":F
    .end local v13    # "i":I
    goto/16 :goto_a

    .line 1165
    :cond_3
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1166
    const-string v11, "Start Ellipsis only supported with one line"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1169
    :cond_4
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_b

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_b

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v11, :cond_5

    goto/16 :goto_6

    .line 1199
    :cond_5
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_a

    .line 1200
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v13, 0x0

    .line 1201
    .local v13, "rsum":F
    const/4 v14, 0x0

    .local v14, "left":I
    move v15, v10

    .line 1203
    .local v15, "right":I
    sub-float v16, v4, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    .line 1204
    .local v16, "ravail":F
    nop

    :goto_2
    if-lez v15, :cond_7

    .line 1205
    add-int/lit8 v17, v15, -0x1

    add-int v17, v17, p1

    sub-int v6, v17, p4

    invoke-virtual {v1, v6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v6

    .line 1207
    .local v6, "w":F
    add-float v17, v6, v13

    cmpl-float v17, v17, v16

    if-lez v17, :cond_6

    .line 1208
    :goto_3
    if-ge v15, v10, :cond_7

    add-int v17, v15, p1

    sub-int v12, v17, p4

    .line 1209
    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    const/16 v17, 0x0

    cmpl-float v12, v12, v17

    if-nez v12, :cond_7

    .line 1211
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_3

    .line 1215
    :cond_6
    add-float/2addr v13, v6

    .line 1204
    .end local v6    # "w":F
    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x5

    const/4 v12, 0x0

    goto :goto_2

    .line 1218
    :cond_7
    sub-float v6, v4, v5

    sub-float/2addr v6, v13

    .line 1219
    .local v6, "lavail":F
    const/4 v12, 0x0

    .end local v14    # "left":I
    .local v12, "left":I
    :goto_4
    if-ge v12, v15, :cond_9

    .line 1220
    add-int v14, v12, p1

    sub-int v14, v14, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    .line 1222
    .local v14, "w":F
    add-float v17, v14, v11

    cmpl-float v17, v17, v6

    if-lez v17, :cond_8

    .line 1223
    goto :goto_5

    .line 1226
    :cond_8
    add-float/2addr v11, v14

    .line 1219
    .end local v14    # "w":F
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1229
    :cond_9
    :goto_5
    move v8, v12

    .line 1230
    sub-int v9, v15, v12

    .line 1231
    .end local v6    # "lavail":F
    .end local v11    # "lsum":F
    .end local v12    # "left":I
    .end local v13    # "rsum":F
    .end local v15    # "right":I
    .end local v16    # "ravail":F
    goto :goto_a

    .line 1232
    :cond_a
    const/4 v6, 0x5

    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1233
    const-string v6, "Middle Ellipsis only supported with one line"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1171
    :cond_b
    :goto_6
    const/4 v6, 0x0

    .line 1174
    .local v6, "sum":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    if-ge v11, v10, :cond_d

    .line 1175
    add-int v12, v11, p1

    sub-int v12, v12, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    .line 1177
    .local v12, "w":F
    add-float v13, v12, v6

    add-float/2addr v13, v5

    cmpl-float v13, v13, v4

    if-lez v13, :cond_c

    .line 1178
    goto :goto_8

    .line 1181
    :cond_c
    add-float/2addr v6, v12

    .line 1174
    .end local v12    # "w":F
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1184
    :cond_d
    :goto_8
    move v8, v11

    .line 1185
    sub-int v9, v10, v11

    .line 1186
    if-eqz p10, :cond_f

    if-nez v9, :cond_f

    if-lez v10, :cond_f

    .line 1187
    add-int/lit8 v8, v10, -0x1

    .line 1190
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

    .line 1192
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    .line 1194
    :cond_e
    sub-int v9, v10, v8

    .line 1197
    .end local v6    # "sum":F
    .end local v11    # "i":I
    :cond_f
    nop

    .line 1237
    :cond_10
    :goto_a
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 1238
    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v11, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v12, v11, v3

    const/4 v13, 0x5

    add-int/2addr v12, v13

    aput v8, v6, v12

    .line 1239
    mul-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x6

    aput v9, v6, v11

    .line 1240
    return-void
.end method

.method private static blacklist getBaseHyphenationFrequency(I)I
    .locals 1
    .param p0, "frequency"    # I

    .line 614
    packed-switch p0, :pswitch_data_0

    .line 623
    const/4 v0, 0x0

    return v0

    .line 617
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 620
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
    .param p1, "line"    # I

    .line 1243
    const/4 v0, 0x0

    .line 1244
    .local v0, "totalIndent":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    .line 1245
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1247
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    .line 1248
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1250
    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private blacklist out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 29
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTab"    # Z
    .param p15, "hyphenEdit"    # I
    .param p16, "needMultiply"    # Z
    .param p17, "measured"    # Landroid/text/MeasuredParagraph;
    .param p18, "bufEnd"    # I
    .param p19, "includePad"    # Z
    .param p20, "trackPad"    # Z
    .param p21, "addLastLineLineSpacing"    # Z
    .param p22, "chs"    # [C
    .param p23, "widthStart"    # I
    .param p24, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p25, "ellipsisWidth"    # F
    .param p26, "textWidth"    # F
    .param p27, "paint"    # Landroid/text/TextPaint;
    .param p28, "moreChars"    # Z

    .line 981
    move-object/from16 v12, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p11

    move-object/from16 v11, p13

    move/from16 v9, p18

    move/from16 v8, p23

    move-object/from16 v10, p24

    iget v7, v12, Landroid/text/StaticLayout;->mLineCount:I

    .line 982
    .local v7, "j":I
    iget v0, v12, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v7, v0

    .line 983
    .local v16, "off":I
    add-int v0, v16, v0

    const/4 v6, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 984
    .local v5, "want":I
    iget-object v0, v12, Landroid/text/StaticLayout;->mLines:[I

    .line 985
    .local v0, "lines":[I
    invoke-virtual/range {p17 .. p17}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    .line 987
    .local v17, "dir":I
    array-length v1, v0

    const/4 v4, 0x0

    if-lt v5, v1, :cond_0

    .line 988
    invoke-static {v5}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 989
    .local v1, "grow":[I
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    iput-object v1, v12, Landroid/text/StaticLayout;->mLines:[I

    .line 991
    move-object v0, v1

    move-object/from16 v18, v0

    goto :goto_0

    .line 987
    .end local v1    # "grow":[I
    :cond_0
    move-object/from16 v18, v0

    .line 994
    .end local v0    # "lines":[I
    .local v18, "lines":[I
    :goto_0
    iget-object v0, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v7, v0, :cond_1

    .line 995
    const-class v0, Landroid/text/Layout$Directions;

    .line 996
    invoke-static {v7}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 995
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    .line 997
    .local v0, "grow":[Landroid/text/Layout$Directions;
    iget-object v1, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 998
    iput-object v0, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1001
    .end local v0    # "grow":[Landroid/text/Layout$Directions;
    :cond_1
    if-eqz v15, :cond_4

    .line 1002
    move/from16 v3, p4

    iput v3, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1003
    move/from16 v2, p5

    iput v2, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1004
    move/from16 v1, p6

    iput v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1005
    move/from16 v0, p7

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1007
    const/16 v19, 0x0

    move/from16 v8, v19

    .local v8, "i":I
    :goto_1
    array-length v4, v15

    if-ge v8, v4, :cond_3

    .line 1008
    aget-object v4, v15, v8

    instance-of v4, v4, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v4, :cond_2

    .line 1009
    aget-object v4, v15, v8

    check-cast v4, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v20, p12, v8

    .line 1010
    move-object v0, v4

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v19, 0x0

    move/from16 v4, v20

    move/from16 v20, v5

    .end local v5    # "want":I
    .local v20, "want":I
    move/from16 v5, p8

    move v13, v6

    move-object/from16 v6, p13

    move/from16 v21, v7

    .end local v7    # "j":I
    .local v21, "j":I
    move-object/from16 v7, p27

    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_2

    .line 1012
    .end local v20    # "want":I
    .end local v21    # "j":I
    .restart local v5    # "want":I
    .restart local v7    # "j":I
    :cond_2
    move/from16 v20, v5

    move v13, v6

    move/from16 v21, v7

    const/16 v19, 0x0

    .end local v5    # "want":I
    .end local v7    # "j":I
    .restart local v20    # "want":I
    .restart local v21    # "j":I
    aget-object v0, v15, v8

    aget v4, p12, v8

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p8

    move-object/from16 v6, p13

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    .line 1007
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p4

    move/from16 v2, p5

    move/from16 v1, p6

    move/from16 v0, p7

    move v6, v13

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v7, v21

    move/from16 v13, p2

    goto :goto_1

    .end local v20    # "want":I
    .end local v21    # "j":I
    .restart local v5    # "want":I
    .restart local v7    # "j":I
    :cond_3
    move/from16 v20, v5

    move v13, v6

    move/from16 v21, v7

    const/16 v19, 0x0

    .line 1016
    .end local v5    # "want":I
    .end local v7    # "j":I
    .end local v8    # "i":I
    .restart local v20    # "want":I
    .restart local v21    # "j":I
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1017
    .end local p4    # "above":I
    .local v0, "above":I
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1018
    .end local p5    # "below":I
    .local v1, "below":I
    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1019
    .end local p6    # "top":I
    .local v2, "top":I
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .end local p7    # "bottom":I
    .local v3, "bottom":I
    goto :goto_3

    .line 1001
    .end local v0    # "above":I
    .end local v1    # "below":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    .end local v20    # "want":I
    .end local v21    # "j":I
    .restart local v5    # "want":I
    .restart local v7    # "j":I
    .restart local p4    # "above":I
    .restart local p5    # "below":I
    .restart local p6    # "top":I
    .restart local p7    # "bottom":I
    :cond_4
    move/from16 v19, v4

    move/from16 v20, v5

    move v13, v6

    move/from16 v21, v7

    .end local v5    # "want":I
    .end local v7    # "j":I
    .restart local v20    # "want":I
    .restart local v21    # "j":I
    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    .line 1022
    .end local p4    # "above":I
    .end local p5    # "below":I
    .end local p6    # "top":I
    .end local p7    # "bottom":I
    .local v22, "above":I
    .local v23, "below":I
    .local v24, "top":I
    .local v25, "bottom":I
    :goto_3
    if-nez v21, :cond_5

    move v6, v13

    goto :goto_4

    :cond_5
    move/from16 v6, v19

    :goto_4
    move/from16 v26, v6

    .line 1023
    .local v26, "firstLine":Z
    add-int/lit8 v7, v21, 0x1

    iget v0, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v7, v0, :cond_6

    move v6, v13

    goto :goto_5

    :cond_6
    move/from16 v6, v19

    :goto_5
    move/from16 v27, v6

    .line 1025
    .local v27, "currentLineIsTheLastVisibleOne":Z
    if-eqz v10, :cond_f

    .line 1028
    if-eqz p28, :cond_7

    iget v1, v12, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v1, v13

    if-ne v1, v0, :cond_7

    move v1, v13

    goto :goto_6

    :cond_7
    move/from16 v1, v19

    :goto_6
    move-object v8, v10

    move v10, v1

    .line 1030
    .local v10, "forceEllipsis":Z
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
    move/from16 v6, v19

    :goto_7
    move/from16 v28, v6

    .line 1035
    .local v28, "doEllipsis":Z
    if-eqz v28, :cond_e

    .line 1036
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p17

    move/from16 v4, p23

    move/from16 v5, p25

    move-object/from16 v6, p24

    move/from16 v7, v21

    move/from16 v13, p23

    move/from16 v8, p26

    move v15, v9

    move-object/from16 v9, p27

    move-object/from16 v11, p22

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V

    goto :goto_8

    .line 1040
    :cond_e
    move/from16 v13, p23

    move v15, v9

    iget-object v0, v12, Landroid/text/StaticLayout;->mLines:[I

    iget v1, v12, Landroid/text/StaticLayout;->mColumns:I

    mul-int v7, v1, v21

    add-int/lit8 v7, v7, 0x5

    aput v19, v0, v7

    .line 1041
    mul-int v1, v1, v21

    add-int/lit8 v1, v1, 0x6

    aput v19, v0, v1

    goto :goto_8

    .line 1025
    .end local v10    # "forceEllipsis":Z
    .end local v28    # "doEllipsis":Z
    :cond_f
    move/from16 v13, p23

    move v15, v9

    .line 1046
    :goto_8
    iget-boolean v0, v12, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_10

    .line 1047
    const/4 v0, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    .local v0, "lastLine":Z
    goto :goto_a

    .line 1049
    .end local v0    # "lastLine":Z
    :cond_10
    if-eq v13, v15, :cond_11

    if-lez v15, :cond_11

    add-int/lit8 v0, v15, -0x1

    .line 1050
    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_12

    const/4 v6, 0x1

    goto :goto_9

    .line 1049
    :cond_11
    move-object/from16 v1, p1

    .line 1050
    :cond_12
    move/from16 v6, v19

    :goto_9
    move v0, v6

    .line 1051
    .local v0, "lastCharIsNewLine":Z
    if-ne v14, v15, :cond_13

    if-nez v0, :cond_13

    .line 1052
    const/4 v2, 0x1

    move v0, v2

    const/4 v3, 0x1

    move/from16 v2, p2

    .local v2, "lastLine":Z
    goto :goto_a

    .line 1053
    .end local v2    # "lastLine":Z
    :cond_13
    move/from16 v2, p2

    const/4 v3, 0x1

    if-ne v2, v15, :cond_14

    if-eqz v0, :cond_14

    .line 1054
    const/4 v4, 0x1

    move v0, v4

    .local v4, "lastLine":Z
    goto :goto_a

    .line 1056
    .end local v4    # "lastLine":Z
    :cond_14
    const/4 v4, 0x0

    move v0, v4

    .line 1060
    .local v0, "lastLine":Z
    :goto_a
    if-eqz v26, :cond_16

    .line 1061
    if-eqz p20, :cond_15

    .line 1062
    sub-int v4, v24, v22

    iput v4, v12, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1065
    :cond_15
    if-eqz p19, :cond_16

    .line 1066
    move/from16 v22, v24

    .line 1072
    :cond_16
    if-eqz v0, :cond_18

    .line 1073
    if-eqz p20, :cond_17

    .line 1074
    sub-int v4, v25, v23

    iput v4, v12, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1077
    :cond_17
    if-eqz p19, :cond_18

    .line 1078
    move/from16 v23, v25

    .line 1082
    :cond_18
    if-eqz p16, :cond_1b

    if-nez p21, :cond_19

    if-nez v0, :cond_1b

    .line 1083
    :cond_19
    sub-int v4, v23, v22

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p9, v5

    mul-float/2addr v4, v5

    add-float v4, v4, p10

    float-to-double v4, v4

    .line 1084
    .local v4, "ex":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-ltz v6, :cond_1a

    .line 1085
    add-double/2addr v7, v4

    double-to-int v6, v7

    .local v6, "extra":I
    goto :goto_b

    .line 1087
    .end local v6    # "extra":I
    :cond_1a
    neg-double v9, v4

    add-double/2addr v9, v7

    double-to-int v6, v9

    neg-int v6, v6

    .line 1089
    .end local v4    # "ex":D
    .restart local v6    # "extra":I
    :goto_b
    goto :goto_c

    .line 1090
    .end local v6    # "extra":I
    :cond_1b
    const/4 v6, 0x0

    .line 1093
    .restart local v6    # "extra":I
    :goto_c
    add-int/lit8 v4, v16, 0x0

    aput v2, v18, v4

    .line 1094
    add-int/lit8 v4, v16, 0x1

    aput p8, v18, v4

    .line 1095
    add-int/lit8 v4, v16, 0x2

    add-int v5, v23, v6

    aput v5, v18, v4

    .line 1096
    add-int/lit8 v4, v16, 0x3

    aput v6, v18, v4

    .line 1100
    iget-boolean v4, v12, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v4, :cond_1d

    if-eqz v27, :cond_1d

    .line 1102
    if-eqz p19, :cond_1c

    move/from16 v5, v25

    goto :goto_d

    :cond_1c
    move/from16 v5, v23

    .line 1104
    .local v5, "maxLineBelow":I
    :goto_d
    sub-int v7, v5, v22

    add-int v7, p8, v7

    iput v7, v12, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1107
    .end local v5    # "maxLineBelow":I
    :cond_1d
    sub-int v5, v23, v22

    add-int/2addr v5, v6

    add-int v5, p8, v5

    .line 1108
    .end local p8    # "v":I
    .local v5, "v":I
    iget v7, v12, Landroid/text/StaticLayout;->mColumns:I

    add-int v8, v16, v7

    add-int/lit8 v8, v8, 0x0

    aput v14, v18, v8

    .line 1109
    add-int v7, v16, v7

    add-int/2addr v7, v3

    aput v5, v18, v7

    .line 1113
    add-int/lit8 v7, v16, 0x0

    aget v8, v18, v7

    if-eqz p14, :cond_1e

    const/high16 v9, 0x20000000

    goto :goto_e

    :cond_1e
    move/from16 v9, v19

    :goto_e
    or-int/2addr v8, v9

    aput v8, v18, v7

    .line 1116
    add-int/lit8 v7, v16, 0x4

    if-eqz v4, :cond_1f

    if-eqz v27, :cond_1f

    move/from16 v4, v19

    goto :goto_f

    :cond_1f
    move/from16 v4, p15

    :goto_f
    aput v4, v18, v7

    .line 1118
    add-int/lit8 v4, v16, 0x0

    aget v7, v18, v4

    shl-int/lit8 v8, v17, 0x1e

    or-int/2addr v7, v8

    aput v7, v18, v4

    .line 1119
    iget-object v4, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v7, v2, v13

    sub-int v8, v14, v13

    move-object/from16 v9, p17

    invoke-virtual {v9, v7, v8}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    aput-object v7, v4, v21

    .line 1121
    iget v4, v12, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v4, v3

    iput v4, v12, Landroid/text/StaticLayout;->mLineCount:I

    .line 1122
    return v5
.end method

.method static blacklist packHyphenEdit(II)I
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 1337
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static blacklist unpackEndHyphenEdit(I)I
    .locals 1
    .param p0, "packedHyphenEdit"    # I

    .line 1345
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static blacklist unpackStartHyphenEdit(I)I
    .locals 1
    .param p0, "packedHyphenEdit"    # I

    .line 1341
    and-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method greylist-max-o generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 89
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .line 628
    move-object/from16 v13, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 629
    .local v12, "source":Ljava/lang/CharSequence;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I

    move-result v11

    .line 630
    .local v11, "bufStart":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    .line 631
    .local v10, "bufEnd":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v9

    .line 632
    .local v9, "paint":Landroid/text/TextPaint;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    .line 633
    .local v8, "outerWidth":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v15

    .line 634
    .local v15, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v46

    .line 635
    .local v46, "spacingmult":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v47

    .line 636
    .local v47, "spacingadd":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v14, v0

    .line 637
    .local v14, "ellipsizedWidth":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    .line 638
    .local v7, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v48

    .line 640
    .local v48, "addLastLineSpacing":Z
    const/16 v17, 0x0

    .line 641
    .local v17, "lineBreakCapacity":I
    const/16 v18, 0x0

    .line 642
    .local v18, "breaks":[I
    const/16 v19, 0x0

    .line 643
    .local v19, "lineWidths":[F
    const/16 v20, 0x0

    .line 644
    .local v20, "ascents":[F
    const/16 v21, 0x0

    .line 645
    .local v21, "descents":[F
    const/16 v22, 0x0

    .line 646
    .local v22, "hasTabs":[Z
    const/16 v23, 0x0

    .line 648
    .local v23, "hyphenEdits":[I
    const/4 v6, 0x0

    iput v6, v13, Landroid/text/StaticLayout;->mLineCount:I

    .line 649
    iput-boolean v6, v13, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 650
    iget v0, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, v13, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 651
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    iput-boolean v0, v13, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    .line 653
    const/16 v24, 0x0

    .line 654
    .local v24, "v":I
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

    .line 656
    .local v16, "needMultiply":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 657
    .local v4, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v25, 0x0

    .line 660
    .local v25, "chooseHtv":[I
    iget-object v0, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_4

    iget-object v1, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_3

    goto :goto_3

    .line 672
    :cond_3
    const/4 v0, 0x0

    move-object v6, v0

    .local v0, "indents":[I
    goto :goto_8

    .line 661
    .end local v0    # "indents":[I
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    move v0, v6

    goto :goto_4

    :cond_5
    array-length v0, v0

    .line 662
    .local v0, "leftLen":I
    :goto_4
    iget-object v1, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v1, :cond_6

    move v1, v6

    goto :goto_5

    :cond_6
    array-length v1, v1

    .line 663
    .local v1, "rightLen":I
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 664
    .local v2, "indentsLen":I
    new-array v3, v2, [I

    .line 665
    .local v3, "indents":[I
    const/16 v26, 0x0

    move/from16 v5, v26

    .local v5, "i":I
    :goto_6
    if-ge v5, v0, :cond_7

    .line 666
    iget-object v6, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v6, v6, v5

    aput v6, v3, v5

    .line 665
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_6

    .line 668
    .end local v5    # "i":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    if-ge v5, v1, :cond_8

    .line 669
    aget v6, v3, v5

    move/from16 v28, v0

    .end local v0    # "leftLen":I
    .local v28, "leftLen":I
    iget-object v0, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v0, v0, v5

    add-int/2addr v6, v0

    aput v6, v3, v5

    .line 668
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v28

    goto :goto_7

    .end local v28    # "leftLen":I
    .restart local v0    # "leftLen":I
    :cond_8
    move/from16 v28, v0

    .line 671
    .end local v0    # "leftLen":I
    .end local v1    # "rightLen":I
    .end local v2    # "indentsLen":I
    .end local v5    # "i":I
    move-object v6, v3

    .line 675
    .end local v3    # "indents":[I
    .local v6, "indents":[I
    :goto_8
    new-instance v0, Landroid/graphics/text/LineBreaker$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    .line 676
    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    .line 677
    invoke-static {v1}, Landroid/text/StaticLayout;->getBaseHyphenationFrequency(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    .line 679
    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {v0, v6}, Landroid/graphics/text/LineBreaker$Builder;->setIndents([I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Landroid/graphics/text/LineBreaker$Builder;->build()Landroid/graphics/text/LineBreaker;

    move-result-object v5

    .line 683
    .local v5, "lineBreaker":Landroid/graphics/text/LineBreaker;
    new-instance v0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;-><init>()V

    move-object v3, v0

    .line 686
    .local v3, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    const/16 v28, 0x0

    .line 687
    .local v28, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    instance-of v0, v12, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    goto :goto_9

    :cond_9
    move-object v0, v2

    :goto_9
    move-object v1, v0

    .line 688
    .local v1, "spanned":Landroid/text/Spanned;
    instance-of v0, v12, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_a

    .line 689
    move-object v0, v12

    check-cast v0, Landroid/text/PrecomputedText;

    .line 690
    .local v0, "precomputed":Landroid/text/PrecomputedText;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v30

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v31

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v32

    .line 691
    move-object/from16 v33, v0

    .end local v0    # "precomputed":Landroid/text/PrecomputedText;
    .local v33, "precomputed":Landroid/text/PrecomputedText;
    move/from16 v34, v14

    move-object v14, v1

    .end local v1    # "spanned":Landroid/text/Spanned;
    .local v14, "spanned":Landroid/text/Spanned;
    .local v34, "ellipsizedWidth":F
    move v1, v11

    move v2, v10

    move-object/from16 v49, v3

    .end local v3    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v49, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    move-object v3, v15

    move-object/from16 v50, v4

    .end local v4    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v50, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object v4, v9

    move-object/from16 v51, v5

    const/4 v13, 0x1

    .end local v5    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v51, "lineBreaker":Landroid/graphics/text/LineBreaker;
    move/from16 v5, v30

    move-object/from16 v52, v6

    const/4 v13, 0x0

    .end local v6    # "indents":[I
    .local v52, "indents":[I
    move/from16 v6, v31

    move-object/from16 v53, v7

    .end local v7    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v53, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v7, v32

    invoke-virtual/range {v0 .. v7}, Landroid/text/PrecomputedText;->checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v0

    .line 693
    .local v0, "checkResult":I
    packed-switch v0, :pswitch_data_0

    move-object/from16 v2, v33

    .end local v33    # "precomputed":Landroid/text/PrecomputedText;
    .local v2, "precomputed":Landroid/text/PrecomputedText;
    goto :goto_a

    .line 709
    .end local v2    # "precomputed":Landroid/text/PrecomputedText;
    .restart local v33    # "precomputed":Landroid/text/PrecomputedText;
    :pswitch_0
    invoke-virtual/range {v33 .. v33}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v28

    goto :goto_a

    .line 697
    :pswitch_1
    new-instance v1, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v1, v9}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    .line 699
    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    .line 700
    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    .line 701
    invoke-virtual {v1, v15}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    .line 702
    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    .line 704
    .local v1, "newParams":Landroid/text/PrecomputedText$Params;
    move-object/from16 v2, v33

    .end local v33    # "precomputed":Landroid/text/PrecomputedText;
    .restart local v2    # "precomputed":Landroid/text/PrecomputedText;
    invoke-static {v2, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v2

    .line 705
    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v28

    .line 706
    goto :goto_a

    .line 695
    .end local v1    # "newParams":Landroid/text/PrecomputedText$Params;
    .end local v2    # "precomputed":Landroid/text/PrecomputedText;
    .restart local v33    # "precomputed":Landroid/text/PrecomputedText;
    :pswitch_2
    move-object/from16 v2, v33

    .end local v33    # "precomputed":Landroid/text/PrecomputedText;
    .restart local v2    # "precomputed":Landroid/text/PrecomputedText;
    goto :goto_a

    .line 688
    .end local v0    # "checkResult":I
    .end local v2    # "precomputed":Landroid/text/PrecomputedText;
    .end local v34    # "ellipsizedWidth":F
    .end local v49    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v50    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v51    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .end local v52    # "indents":[I
    .end local v53    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v1, "spanned":Landroid/text/Spanned;
    .restart local v3    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v4    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v5    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v6    # "indents":[I
    .restart local v7    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v14, "ellipsizedWidth":F
    :cond_a
    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move-object/from16 v51, v5

    move-object/from16 v52, v6

    move-object/from16 v53, v7

    move/from16 v34, v14

    const/4 v13, 0x0

    move-object v14, v1

    .line 714
    .end local v1    # "spanned":Landroid/text/Spanned;
    .end local v3    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v4    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v5    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .end local v6    # "indents":[I
    .end local v7    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v14, "spanned":Landroid/text/Spanned;
    .restart local v34    # "ellipsizedWidth":F
    .restart local v49    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v50    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v51    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v52    # "indents":[I
    .restart local v53    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_a
    if-nez v28, :cond_b

    .line 715
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

    .line 717
    .local v0, "param":Landroid/text/PrecomputedText$Params;
    invoke-static {v12, v0, v11, v10, v13}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v28

    move-object/from16 v7, v28

    goto :goto_b

    .line 714
    .end local v0    # "param":Landroid/text/PrecomputedText$Params;
    :cond_b
    move-object/from16 v7, v28

    .line 721
    .end local v28    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :goto_b
    const/4 v0, 0x0

    move v6, v0

    move/from16 v0, v17

    move-object/from16 v1, v25

    .end local v17    # "lineBreakCapacity":I
    .end local v25    # "chooseHtv":[I
    .local v0, "lineBreakCapacity":I
    .local v1, "chooseHtv":[I
    .local v6, "paraIndex":I
    :goto_c
    array-length v2, v7

    if-ge v6, v2, :cond_37

    .line 722
    if-nez v6, :cond_c

    .line 723
    move v2, v11

    goto :goto_d

    :cond_c
    add-int/lit8 v2, v6, -0x1

    aget-object v2, v7, v2

    iget v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_d
    move v5, v2

    .line 724
    .local v5, "paraStart":I
    aget-object v2, v7, v6

    iget v4, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    .line 726
    .local v4, "paraEnd":I
    const/4 v2, 0x1

    .line 727
    .local v2, "firstWidthLineCount":I
    move v3, v8

    .line 728
    .local v3, "firstWidth":I
    move/from16 v17, v8

    .line 730
    .local v17, "restWidth":I
    const/16 v25, 0x0

    .line 731
    .local v25, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v14, :cond_14

    .line 732
    const-class v13, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v14, v5, v4, v13}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/LeadingMarginSpan;

    .line 734
    .local v13, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v26, 0x0

    move-object/from16 v31, v9

    move/from16 v9, v26

    .local v9, "i":I
    .local v31, "paint":Landroid/text/TextPaint;
    :goto_e
    move/from16 v32, v11

    .end local v11    # "bufStart":I
    .local v32, "bufStart":I
    array-length v11, v13

    if-ge v9, v11, :cond_e

    .line 735
    aget-object v11, v13, v9

    .line 736
    .local v11, "lms":Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v26, v15

    .end local v15    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v26, "textDir":Landroid/text/TextDirectionHeuristic;
    aget-object v15, v13, v9

    move-object/from16 v33, v12

    const/4 v12, 0x1

    .end local v12    # "source":Ljava/lang/CharSequence;
    .local v33, "source":Ljava/lang/CharSequence;
    invoke-interface {v15, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v15

    sub-int/2addr v3, v15

    .line 737
    aget-object v15, v13, v9

    const/4 v12, 0x0

    invoke-interface {v15, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v15

    sub-int v17, v17, v15

    .line 741
    instance-of v12, v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v12, :cond_d

    .line 742
    move-object v12, v11

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 743
    .local v12, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    nop

    .line 744
    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v15

    .line 743
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 734
    .end local v11    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v12    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v15, v26

    move/from16 v11, v32

    move-object/from16 v12, v33

    goto :goto_e

    .end local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v33    # "source":Ljava/lang/CharSequence;
    .local v12, "source":Ljava/lang/CharSequence;
    .restart local v15    # "textDir":Landroid/text/TextDirectionHeuristic;
    :cond_e
    move-object/from16 v33, v12

    move-object/from16 v26, v15

    .line 748
    .end local v9    # "i":I
    .end local v12    # "source":Ljava/lang/CharSequence;
    .end local v15    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v33    # "source":Ljava/lang/CharSequence;
    const-class v9, Landroid/text/style/LineHeightSpan;

    invoke-static {v14, v5, v4, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/LineHeightSpan;

    .line 750
    .end local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v9, "chooseHt":[Landroid/text/style/LineHeightSpan;
    array-length v11, v9

    if-nez v11, :cond_f

    .line 751
    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v36, v1

    move v13, v2

    move v12, v3

    move/from16 v11, v17

    move-object/from16 v37, v25

    .end local v9    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    goto :goto_11

    .line 753
    .end local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v9    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_f
    if-eqz v1, :cond_10

    array-length v11, v1

    array-length v12, v9

    if-ge v11, v12, :cond_11

    .line 754
    :cond_10
    array-length v11, v9

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 757
    :cond_11
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f
    array-length v12, v9

    if-ge v11, v12, :cond_13

    .line 758
    aget-object v12, v9, v11

    invoke-interface {v14, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 760
    .local v12, "o":I
    if-ge v12, v5, :cond_12

    .line 764
    move-object/from16 v15, p0

    move-object/from16 v27, v13

    .end local v13    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .local v27, "sp":[Landroid/text/style/LeadingMarginSpan;
    invoke-virtual {v15, v12}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v13

    invoke-virtual {v15, v13}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v13

    aput v13, v1, v11

    goto :goto_10

    .line 768
    .end local v27    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v13    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_12
    move-object/from16 v15, p0

    move-object/from16 v27, v13

    .end local v13    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v27    # "sp":[Landroid/text/style/LeadingMarginSpan;
    aput v24, v1, v11

    .line 757
    .end local v12    # "o":I
    :goto_10
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, v27

    goto :goto_f

    .end local v27    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v13    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_13
    move-object/from16 v15, p0

    move-object/from16 v27, v13

    .end local v13    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v27    # "sp":[Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v36, v1

    move v13, v2

    move v12, v3

    move-object/from16 v37, v9

    move/from16 v11, v17

    goto :goto_11

    .line 731
    .end local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v27    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v31    # "paint":Landroid/text/TextPaint;
    .end local v32    # "bufStart":I
    .end local v33    # "source":Ljava/lang/CharSequence;
    .local v9, "paint":Landroid/text/TextPaint;
    .local v11, "bufStart":I
    .local v12, "source":Ljava/lang/CharSequence;
    .restart local v15    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_14
    move-object/from16 v31, v9

    move/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v26, v15

    move-object/from16 v15, p0

    .end local v9    # "paint":Landroid/text/TextPaint;
    .end local v11    # "bufStart":I
    .end local v12    # "source":Ljava/lang/CharSequence;
    .end local v15    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v31    # "paint":Landroid/text/TextPaint;
    .restart local v32    # "bufStart":I
    .restart local v33    # "source":Ljava/lang/CharSequence;
    move-object/from16 v36, v1

    move v13, v2

    move v12, v3

    move/from16 v11, v17

    move-object/from16 v37, v25

    .line 774
    .end local v1    # "chooseHtv":[I
    .end local v2    # "firstWidthLineCount":I
    .end local v3    # "firstWidth":I
    .end local v17    # "restWidth":I
    .end local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v11, "restWidth":I
    .local v12, "firstWidth":I
    .local v13, "firstWidthLineCount":I
    .local v36, "chooseHtv":[I
    .local v37, "chooseHt":[Landroid/text/style/LineHeightSpan;
    :goto_11
    const/4 v1, 0x0

    .line 775
    .local v1, "variableTabStops":[F
    if-eqz v14, :cond_17

    .line 776
    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v14, v5, v4, v2}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 778
    .local v2, "spans":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_16

    .line 779
    array-length v3, v2

    new-array v3, v3, [F

    .line 780
    .local v3, "stops":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_12
    move-object/from16 v17, v1

    .end local v1    # "variableTabStops":[F
    .local v17, "variableTabStops":[F
    array-length v1, v2

    if-ge v9, v1, :cond_15

    .line 781
    aget-object v1, v2, v9

    invoke-interface {v1}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v1

    int-to-float v1, v1

    aput v1, v3, v9

    .line 780
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v17

    goto :goto_12

    .line 783
    .end local v9    # "i":I
    :cond_15
    array-length v1, v3

    const/4 v9, 0x0

    invoke-static {v3, v9, v1}, Ljava/util/Arrays;->sort([FII)V

    .line 784
    move-object v1, v3

    move-object v9, v1

    .end local v17    # "variableTabStops":[F
    .restart local v1    # "variableTabStops":[F
    goto :goto_14

    .line 778
    .end local v3    # "stops":[F
    :cond_16
    move-object/from16 v17, v1

    .end local v1    # "variableTabStops":[F
    .restart local v17    # "variableTabStops":[F
    goto :goto_13

    .line 775
    .end local v2    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v17    # "variableTabStops":[F
    .restart local v1    # "variableTabStops":[F
    :cond_17
    move-object/from16 v17, v1

    .line 788
    .end local v1    # "variableTabStops":[F
    .restart local v17    # "variableTabStops":[F
    :goto_13
    move-object/from16 v9, v17

    .end local v17    # "variableTabStops":[F
    .local v9, "variableTabStops":[F
    :goto_14
    aget-object v1, v7, v6

    iget-object v3, v1, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    .line 789
    .local v3, "measuredPara":Landroid/text/MeasuredParagraph;
    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v38

    .line 790
    .local v38, "chs":[C
    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v39

    .line 791
    .local v39, "spanEndCache":[I
    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v40

    .line 793
    .local v40, "fmCache":[I
    int-to-float v1, v11

    move-object/from16 v2, v49

    .end local v49    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v2, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    invoke-virtual {v2, v1}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setWidth(F)V

    .line 794
    int-to-float v1, v12

    invoke-virtual {v2, v1, v13}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setIndent(FI)V

    .line 795
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v2, v9, v1}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setTabStops([FF)V

    .line 797
    nop

    .line 798
    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v1

    move/from16 v17, v6

    .end local v6    # "paraIndex":I
    .local v17, "paraIndex":I
    iget v6, v15, Landroid/text/StaticLayout;->mLineCount:I

    .line 797
    move/from16 v25, v13

    move-object/from16 v13, v51

    .end local v51    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v13, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v25, "firstWidthLineCount":I
    invoke-virtual {v13, v1, v2, v6}, Landroid/graphics/text/LineBreaker;->computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;

    move-result-object v6

    .line 799
    .local v6, "res":Landroid/graphics/text/LineBreaker$Result;
    invoke-virtual {v6}, Landroid/graphics/text/LineBreaker$Result;->getLineCount()I

    move-result v1

    .line 800
    .local v1, "breakCount":I
    if-ge v0, v1, :cond_18

    .line 801
    move v0, v1

    .line 802
    move-object/from16 v49, v2

    .end local v2    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v49    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    new-array v2, v0, [I

    .line 803
    .end local v18    # "breaks":[I
    .local v2, "breaks":[I
    move-object/from16 v18, v2

    .end local v2    # "breaks":[I
    .restart local v18    # "breaks":[I
    new-array v2, v0, [F

    .line 804
    .end local v19    # "lineWidths":[F
    .local v2, "lineWidths":[F
    move-object/from16 v19, v2

    .end local v2    # "lineWidths":[F
    .restart local v19    # "lineWidths":[F
    new-array v2, v0, [F

    .line 805
    .end local v20    # "ascents":[F
    .local v2, "ascents":[F
    move-object/from16 v20, v2

    .end local v2    # "ascents":[F
    .restart local v20    # "ascents":[F
    new-array v2, v0, [F

    .line 806
    .end local v21    # "descents":[F
    .local v2, "descents":[F
    move-object/from16 v21, v2

    .end local v2    # "descents":[F
    .restart local v21    # "descents":[F
    new-array v2, v0, [Z

    .line 807
    .end local v22    # "hasTabs":[Z
    .local v2, "hasTabs":[Z
    move-object/from16 v22, v2

    .end local v2    # "hasTabs":[Z
    .restart local v22    # "hasTabs":[Z
    new-array v2, v0, [I

    move/from16 v41, v0

    move-object/from16 v54, v2

    move-object/from16 v42, v18

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v45, v21

    move-object/from16 v51, v22

    .end local v23    # "hyphenEdits":[I
    .local v2, "hyphenEdits":[I
    goto :goto_15

    .line 800
    .end local v49    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v2, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v23    # "hyphenEdits":[I
    :cond_18
    move-object/from16 v49, v2

    .end local v2    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v49    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    move/from16 v41, v0

    move-object/from16 v42, v18

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v45, v21

    move-object/from16 v51, v22

    move-object/from16 v54, v23

    .line 810
    .end local v0    # "lineBreakCapacity":I
    .end local v18    # "breaks":[I
    .end local v19    # "lineWidths":[F
    .end local v20    # "ascents":[F
    .end local v21    # "descents":[F
    .end local v22    # "hasTabs":[Z
    .end local v23    # "hyphenEdits":[I
    .local v41, "lineBreakCapacity":I
    .local v42, "breaks":[I
    .local v43, "lineWidths":[F
    .local v44, "ascents":[F
    .local v45, "descents":[F
    .local v51, "hasTabs":[Z
    .local v54, "hyphenEdits":[I
    :goto_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v1, :cond_19

    .line 811
    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineBreakOffset(I)I

    move-result v2

    aput v2, v42, v0

    .line 812
    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineWidth(I)F

    move-result v2

    aput v2, v43, v0

    .line 813
    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineAscent(I)F

    move-result v2

    aput v2, v44, v0

    .line 814
    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineDescent(I)F

    move-result v2

    aput v2, v45, v0

    .line 815
    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->hasLineTab(I)Z

    move-result v2

    aput-boolean v2, v51, v0

    .line 816
    nop

    .line 817
    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getStartLineHyphenEdit(I)I

    move-result v2

    move-object/from16 v27, v7

    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v27, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    invoke-virtual {v6, v0}, Landroid/graphics/text/LineBreaker$Result;->getEndLineHyphenEdit(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v2

    aput v2, v54, v0

    .line 810
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v27

    goto :goto_16

    .end local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :cond_19
    move-object/from16 v27, v7

    .line 820
    .end local v0    # "i":I
    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    iget v0, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v2, v15, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v7, v0, v2

    .line 821
    .local v7, "remainingLineCount":I
    move-object/from16 v2, v53

    .end local v53    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v2, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    if-eqz v2, :cond_1b

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v0, :cond_1a

    iget v0, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v53, v6

    const/4 v6, 0x1

    .end local v6    # "res":Landroid/graphics/text/LineBreaker$Result;
    .local v53, "res":Landroid/graphics/text/LineBreaker$Result;
    if-ne v0, v6, :cond_1c

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v0, :cond_1c

    goto :goto_17

    .end local v53    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v6    # "res":Landroid/graphics/text/LineBreaker$Result;
    :cond_1a
    move-object/from16 v53, v6

    .end local v6    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v53    # "res":Landroid/graphics/text/LineBreaker$Result;
    :goto_17
    const/4 v6, 0x1

    goto :goto_18

    .end local v53    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v6    # "res":Landroid/graphics/text/LineBreaker$Result;
    :cond_1b
    move-object/from16 v53, v6

    .end local v6    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v53    # "res":Landroid/graphics/text/LineBreaker$Result;
    :cond_1c
    const/4 v6, 0x0

    :goto_18
    move/from16 v55, v6

    .line 825
    .local v55, "ellipsisMayBeApplied":Z
    if-lez v7, :cond_21

    if-ge v7, v1, :cond_21

    if-eqz v55, :cond_21

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "width":F
    const/4 v6, 0x0

    .line 830
    .local v6, "hasTab":Z
    add-int/lit8 v18, v7, -0x1

    move/from16 v88, v18

    move-object/from16 v18, v2

    move/from16 v2, v88

    .local v2, "i":I
    .local v18, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_19
    if-ge v2, v1, :cond_20

    .line 831
    move-object/from16 v56, v9

    .end local v9    # "variableTabStops":[F
    .local v56, "variableTabStops":[F
    add-int/lit8 v9, v1, -0x1

    if-ne v2, v9, :cond_1d

    .line 832
    aget v9, v43, v2

    add-float/2addr v0, v9

    move-object/from16 v57, v13

    goto :goto_1b

    .line 834
    :cond_1d
    if-nez v2, :cond_1e

    const/4 v9, 0x0

    goto :goto_1a

    :cond_1e
    add-int/lit8 v9, v2, -0x1

    aget v9, v42, v9

    .local v9, "j":I
    :goto_1a
    move-object/from16 v57, v13

    .end local v13    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v57, "lineBreaker":Landroid/graphics/text/LineBreaker;
    aget v13, v42, v2

    if-ge v9, v13, :cond_1f

    .line 835
    invoke-virtual {v3, v9}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v13

    add-float/2addr v0, v13

    .line 834
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, v57

    goto :goto_1a

    .line 838
    .end local v9    # "j":I
    :cond_1f
    :goto_1b
    aget-boolean v9, v51, v2

    or-int/2addr v6, v9

    .line 830
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, v56

    move-object/from16 v13, v57

    goto :goto_19

    .end local v56    # "variableTabStops":[F
    .end local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v9, "variableTabStops":[F
    .restart local v13    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    :cond_20
    move-object/from16 v56, v9

    move-object/from16 v57, v13

    .line 841
    .end local v2    # "i":I
    .end local v9    # "variableTabStops":[F
    .end local v13    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v56    # "variableTabStops":[F
    .restart local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    add-int/lit8 v2, v7, -0x1

    add-int/lit8 v9, v1, -0x1

    aget v9, v42, v9

    aput v9, v42, v2

    .line 842
    add-int/lit8 v2, v7, -0x1

    aput v0, v43, v2

    .line 843
    add-int/lit8 v2, v7, -0x1

    aput-boolean v6, v51, v2

    .line 845
    move v1, v7

    move v13, v1

    goto :goto_1c

    .line 825
    .end local v0    # "width":F
    .end local v6    # "hasTab":Z
    .end local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "variableTabStops":[F
    .end local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v2, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v9    # "variableTabStops":[F
    .restart local v13    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    :cond_21
    move-object/from16 v18, v2

    move-object/from16 v56, v9

    move-object/from16 v57, v13

    .line 850
    .end local v2    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v9    # "variableTabStops":[F
    .end local v13    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "variableTabStops":[F
    .restart local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    move v13, v1

    .end local v1    # "breakCount":I
    .local v13, "breakCount":I
    :goto_1c
    move v0, v5

    .line 852
    .local v0, "here":I
    const/4 v1, 0x0

    .local v1, "fmTop":I
    const/4 v2, 0x0

    .local v2, "fmBottom":I
    const/4 v6, 0x0

    .local v6, "fmAscent":I
    const/4 v9, 0x0

    .line 853
    .local v9, "fmDescent":I
    const/16 v19, 0x0

    .line 854
    .local v19, "fmCacheIndex":I
    const/16 v20, 0x0

    .line 855
    .local v20, "spanEndCacheIndex":I
    const/16 v21, 0x0

    .line 856
    .local v21, "breakIndex":I
    move/from16 v22, v5

    move/from16 v88, v22

    move/from16 v22, v7

    move/from16 v7, v88

    .local v7, "spanStart":I
    .local v22, "remainingLineCount":I
    :goto_1d
    if-ge v7, v4, :cond_35

    .line 858
    add-int/lit8 v58, v20, 0x1

    move/from16 v59, v4

    .end local v4    # "paraEnd":I
    .end local v20    # "spanEndCacheIndex":I
    .local v58, "spanEndCacheIndex":I
    .local v59, "paraEnd":I
    aget v4, v39, v20

    .line 861
    .local v4, "spanEnd":I
    mul-int/lit8 v20, v19, 0x4

    const/16 v23, 0x0

    add-int/lit8 v20, v20, 0x0

    move/from16 v28, v0

    .end local v0    # "here":I
    .local v28, "here":I
    aget v0, v40, v20

    move-object/from16 v30, v3

    move-object/from16 v3, v50

    .end local v50    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v30, "measuredPara":Landroid/text/MeasuredParagraph;
    iput v0, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 862
    mul-int/lit8 v0, v19, 0x4

    const/16 v20, 0x1

    add-int/lit8 v0, v0, 0x1

    aget v0, v40, v0

    iput v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 863
    mul-int/lit8 v0, v19, 0x4

    add-int/lit8 v0, v0, 0x2

    aget v0, v40, v0

    iput v0, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 864
    mul-int/lit8 v0, v19, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v0, v40, v0

    iput v0, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 865
    add-int/lit8 v35, v19, 0x1

    .line 867
    .end local v19    # "fmCacheIndex":I
    .local v35, "fmCacheIndex":I
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v0, v1, :cond_22

    .line 868
    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 870
    :cond_22
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v0, v6, :cond_23

    .line 871
    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 873
    :cond_23
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v0, v9, :cond_24

    .line 874
    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 876
    :cond_24
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v0, v2, :cond_25

    .line 877
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v21

    goto :goto_1e

    .line 876
    :cond_25
    move/from16 v0, v21

    .line 881
    .end local v21    # "breakIndex":I
    .local v0, "breakIndex":I
    :goto_1e
    if-ge v0, v13, :cond_26

    aget v19, v42, v0

    move/from16 v50, v1

    .end local v1    # "fmTop":I
    .local v50, "fmTop":I
    add-int v1, v5, v19

    if-ge v1, v7, :cond_27

    .line 882
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v50

    goto :goto_1e

    .line 881
    .end local v50    # "fmTop":I
    .restart local v1    # "fmTop":I
    :cond_26
    move/from16 v50, v1

    .line 885
    .end local v1    # "fmTop":I
    .restart local v50    # "fmTop":I
    :cond_27
    move/from16 v60, v24

    move/from16 v1, v50

    move/from16 v50, v28

    move/from16 v88, v9

    move v9, v6

    move/from16 v6, v88

    .end local v24    # "v":I
    .end local v28    # "here":I
    .restart local v1    # "fmTop":I
    .local v6, "fmDescent":I
    .local v9, "fmAscent":I
    .local v50, "here":I
    .local v60, "v":I
    :goto_1f
    if-ge v0, v13, :cond_34

    aget v19, v42, v0

    move-object/from16 v61, v3

    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v61, "fm":Landroid/graphics/Paint$FontMetricsInt;
    add-int v3, v5, v19

    if-gt v3, v4, :cond_33

    .line 886
    aget v3, v42, v0

    add-int/2addr v3, v5

    .line 888
    .local v3, "endPos":I
    if-ge v3, v10, :cond_28

    move/from16 v28, v20

    goto :goto_20

    :cond_28
    move/from16 v28, v23

    .line 890
    .local v28, "moreChars":Z
    :goto_20
    move/from16 v19, v3

    .end local v3    # "endPos":I
    .local v19, "endPos":I
    iget-boolean v3, v15, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    if-eqz v3, :cond_29

    .line 891
    aget v3, v44, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_21

    .line 892
    :cond_29
    move v3, v9

    :goto_21
    nop

    .line 893
    .local v3, "ascent":I
    move/from16 v62, v4

    .end local v4    # "spanEnd":I
    .local v62, "spanEnd":I
    iget-boolean v4, v15, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    if-eqz v4, :cond_2a

    .line 894
    aget v4, v45, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_22

    .line 895
    :cond_2a
    move v4, v6

    :goto_22
    nop

    .line 900
    .local v4, "descent":I
    move/from16 v63, v5

    .end local v5    # "paraStart":I
    .local v63, "paraStart":I
    iget-boolean v5, v15, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    if-eqz v5, :cond_2d

    .line 901
    if-ge v3, v1, :cond_2b

    .line 902
    move v1, v3

    .line 904
    :cond_2b
    if-le v4, v2, :cond_2c

    .line 905
    move v2, v4

    move/from16 v64, v1

    move/from16 v65, v2

    goto :goto_23

    .line 904
    :cond_2c
    move/from16 v64, v1

    move/from16 v65, v2

    goto :goto_23

    .line 900
    :cond_2d
    move/from16 v64, v1

    move/from16 v65, v2

    .line 911
    .end local v1    # "fmTop":I
    .end local v2    # "fmBottom":I
    .local v64, "fmTop":I
    .local v65, "fmBottom":I
    :goto_23
    move/from16 v1, v34

    .line 912
    .local v1, "elipsizeWidth_span":F
    if-nez v0, :cond_2e

    if-eq v12, v8, :cond_2e

    .line 913
    sub-int v2, v8, v12

    int-to-float v2, v2

    sub-float v1, v34, v2

    goto :goto_24

    .line 914
    :cond_2e
    if-eqz v0, :cond_2f

    if-eq v11, v8, :cond_2f

    .line 915
    sub-int v2, v8, v11

    int-to-float v2, v2

    sub-float v1, v34, v2

    .line 917
    :cond_2f
    :goto_24
    cmpg-float v2, v1, v29

    if-gez v2, :cond_30

    .line 918
    move/from16 v1, v34

    move/from16 v66, v1

    goto :goto_25

    .line 917
    :cond_30
    move/from16 v66, v1

    .line 922
    .end local v1    # "elipsizeWidth_span":F
    .local v66, "elipsizeWidth_span":F
    :goto_25
    aget-boolean v1, v51, v0

    move-object/from16 v68, v14

    move/from16 v67, v34

    .end local v14    # "spanned":Landroid/text/Spanned;
    .end local v34    # "ellipsizedWidth":F
    .local v67, "ellipsizedWidth":F
    .local v68, "spanned":Landroid/text/Spanned;
    move v14, v1

    aget v1, v54, v0

    move-object/from16 v5, v26

    .end local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v5, "textDir":Landroid/text/TextDirectionHeuristic;
    move v15, v1

    aget v26, v43, v0

    move/from16 v34, v0

    .end local v0    # "breakIndex":I
    .local v34, "breakIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v69, v49

    move-object/from16 v49, v18

    .end local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v49, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v69, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    move/from16 v2, v50

    move/from16 v71, v3

    move-object/from16 v70, v61

    move/from16 v61, v19

    .end local v3    # "ascent":I
    .end local v19    # "endPos":I
    .local v61, "endPos":I
    .local v70, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v71, "ascent":I
    move/from16 v3, v61

    move/from16 v72, v59

    move/from16 v73, v62

    move/from16 v59, v4

    .end local v4    # "descent":I
    .end local v62    # "spanEnd":I
    .local v59, "descent":I
    .local v72, "paraEnd":I
    .local v73, "spanEnd":I
    move/from16 v4, v71

    move-object/from16 v74, v5

    move/from16 v62, v63

    .end local v5    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v63    # "paraStart":I
    .local v62, "paraStart":I
    .local v74, "textDir":Landroid/text/TextDirectionHeuristic;
    move/from16 v5, v59

    move/from16 v75, v6

    move-object/from16 v63, v53

    move/from16 v53, v17

    .end local v6    # "fmDescent":I
    .end local v17    # "paraIndex":I
    .local v53, "paraIndex":I
    .local v63, "res":Landroid/graphics/text/LineBreaker$Result;
    .local v75, "fmDescent":I
    move/from16 v6, v64

    move/from16 v77, v7

    move/from16 v76, v22

    move-object/from16 v78, v27

    .end local v7    # "spanStart":I
    .end local v22    # "remainingLineCount":I
    .end local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v76, "remainingLineCount":I
    .local v77, "spanStart":I
    .local v78, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    move/from16 v7, v65

    move/from16 v79, v8

    .end local v8    # "outerWidth":I
    .local v79, "outerWidth":I
    move/from16 v8, v60

    move-object/from16 v80, v31

    move-object/from16 v31, v56

    move/from16 v56, v9

    .end local v9    # "fmAscent":I
    .local v31, "variableTabStops":[F
    .local v56, "fmAscent":I
    .local v80, "paint":Landroid/text/TextPaint;
    move/from16 v9, v46

    move/from16 v81, v10

    .end local v10    # "bufEnd":I
    .local v81, "bufEnd":I
    move/from16 v10, v47

    move/from16 v82, v32

    move/from16 v32, v11

    .end local v11    # "restWidth":I
    .local v32, "restWidth":I
    .local v82, "bufStart":I
    move-object/from16 v11, v37

    move-object/from16 v83, v33

    move/from16 v33, v12

    .end local v12    # "firstWidth":I
    .local v33, "firstWidth":I
    .local v83, "source":Ljava/lang/CharSequence;
    move-object/from16 v12, v36

    move/from16 v85, v13

    move/from16 v87, v20

    move/from16 v86, v23

    move/from16 v84, v25

    .end local v13    # "breakCount":I
    .end local v25    # "firstWidthLineCount":I
    .local v84, "firstWidthLineCount":I
    .local v85, "breakCount":I
    move-object/from16 v13, v70

    move-object/from16 v17, v30

    move/from16 v18, v81

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v48

    move-object/from16 v22, v38

    move/from16 v23, v62

    move-object/from16 v24, v49

    move/from16 v25, v66

    move-object/from16 v27, v80

    invoke-direct/range {v0 .. v28}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v60

    .line 930
    move/from16 v5, v61

    move/from16 v0, v73

    .end local v61    # "endPos":I
    .end local v73    # "spanEnd":I
    .local v0, "spanEnd":I
    .local v5, "endPos":I
    if-ge v5, v0, :cond_31

    .line 932
    move-object/from16 v3, v70

    .end local v70    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 933
    .end local v64    # "fmTop":I
    .local v1, "fmTop":I
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 934
    .end local v65    # "fmBottom":I
    .restart local v2    # "fmBottom":I
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 935
    .end local v56    # "fmAscent":I
    .local v4, "fmAscent":I
    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v9, v4

    .end local v75    # "fmDescent":I
    .restart local v6    # "fmDescent":I
    goto :goto_26

    .line 937
    .end local v1    # "fmTop":I
    .end local v2    # "fmBottom":I
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v4    # "fmAscent":I
    .end local v6    # "fmDescent":I
    .restart local v56    # "fmAscent":I
    .restart local v64    # "fmTop":I
    .restart local v65    # "fmBottom":I
    .restart local v70    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v75    # "fmDescent":I
    :cond_31
    move-object/from16 v3, v70

    .end local v70    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    move/from16 v1, v86

    .end local v75    # "fmDescent":I
    .local v1, "fmDescent":I
    move/from16 v2, v86

    .end local v56    # "fmAscent":I
    .local v2, "fmAscent":I
    move/from16 v4, v86

    .end local v65    # "fmBottom":I
    .local v4, "fmBottom":I
    move/from16 v6, v86

    move v9, v2

    move v2, v4

    move/from16 v88, v6

    move v6, v1

    move/from16 v1, v88

    .line 940
    .end local v4    # "fmBottom":I
    .end local v64    # "fmTop":I
    .local v1, "fmTop":I
    .local v2, "fmBottom":I
    .restart local v6    # "fmDescent":I
    .restart local v9    # "fmAscent":I
    :goto_26
    move/from16 v50, v5

    .line 941
    add-int/lit8 v4, v34, 0x1

    .line 943
    .end local v34    # "breakIndex":I
    .local v4, "breakIndex":I
    move-object/from16 v7, p0

    iget v8, v7, Landroid/text/StaticLayout;->mLineCount:I

    iget v10, v7, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v8, v10, :cond_32

    iget-boolean v8, v7, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v8, :cond_32

    .line 944
    return-void

    .line 946
    .end local v5    # "endPos":I
    .end local v28    # "moreChars":Z
    .end local v59    # "descent":I
    .end local v66    # "elipsizeWidth_span":F
    .end local v71    # "ascent":I
    :cond_32
    move-object v15, v7

    move-object/from16 v56, v31

    move/from16 v11, v32

    move/from16 v12, v33

    move-object/from16 v18, v49

    move/from16 v17, v53

    move/from16 v5, v62

    move-object/from16 v53, v63

    move/from16 v34, v67

    move-object/from16 v14, v68

    move-object/from16 v49, v69

    move/from16 v59, v72

    move-object/from16 v26, v74

    move/from16 v22, v76

    move/from16 v7, v77

    move-object/from16 v27, v78

    move/from16 v8, v79

    move-object/from16 v31, v80

    move/from16 v10, v81

    move/from16 v32, v82

    move-object/from16 v33, v83

    move/from16 v25, v84

    move/from16 v13, v85

    move/from16 v23, v86

    move/from16 v20, v87

    move/from16 v88, v4

    move v4, v0

    move/from16 v0, v88

    goto/16 :goto_1f

    .line 885
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v62    # "paraStart":I
    .end local v63    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v67    # "ellipsizedWidth":F
    .end local v68    # "spanned":Landroid/text/Spanned;
    .end local v69    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v72    # "paraEnd":I
    .end local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v76    # "remainingLineCount":I
    .end local v77    # "spanStart":I
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "outerWidth":I
    .end local v80    # "paint":Landroid/text/TextPaint;
    .end local v81    # "bufEnd":I
    .end local v82    # "bufStart":I
    .end local v83    # "source":Ljava/lang/CharSequence;
    .end local v84    # "firstWidthLineCount":I
    .end local v85    # "breakCount":I
    .local v0, "breakIndex":I
    .local v4, "spanEnd":I
    .local v5, "paraStart":I
    .restart local v7    # "spanStart":I
    .restart local v8    # "outerWidth":I
    .restart local v10    # "bufEnd":I
    .restart local v11    # "restWidth":I
    .restart local v12    # "firstWidth":I
    .restart local v13    # "breakCount":I
    .restart local v14    # "spanned":Landroid/text/Spanned;
    .restart local v17    # "paraIndex":I
    .restart local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v22    # "remainingLineCount":I
    .restart local v25    # "firstWidthLineCount":I
    .restart local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v31, "paint":Landroid/text/TextPaint;
    .local v32, "bufStart":I
    .local v33, "source":Ljava/lang/CharSequence;
    .local v34, "ellipsizedWidth":F
    .local v49, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v53, "res":Landroid/graphics/text/LineBreaker$Result;
    .local v56, "variableTabStops":[F
    .local v59, "paraEnd":I
    .local v61, "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_33
    move/from16 v62, v5

    move/from16 v75, v6

    move/from16 v77, v7

    move/from16 v79, v8

    move/from16 v81, v10

    move/from16 v85, v13

    move-object/from16 v68, v14

    move-object v7, v15

    move/from16 v87, v20

    move/from16 v76, v22

    move/from16 v86, v23

    move/from16 v84, v25

    move-object/from16 v74, v26

    move-object/from16 v78, v27

    move-object/from16 v80, v31

    move/from16 v82, v32

    move-object/from16 v83, v33

    move/from16 v67, v34

    move-object/from16 v69, v49

    move-object/from16 v63, v53

    move-object/from16 v31, v56

    move/from16 v72, v59

    move-object/from16 v3, v61

    move/from16 v34, v0

    move v0, v4

    move/from16 v56, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v53, v17

    move-object/from16 v49, v18

    .end local v4    # "spanEnd":I
    .end local v5    # "paraStart":I
    .end local v6    # "fmDescent":I
    .end local v7    # "spanStart":I
    .end local v8    # "outerWidth":I
    .end local v9    # "fmAscent":I
    .end local v10    # "bufEnd":I
    .end local v11    # "restWidth":I
    .end local v12    # "firstWidth":I
    .end local v13    # "breakCount":I
    .end local v14    # "spanned":Landroid/text/Spanned;
    .end local v17    # "paraIndex":I
    .end local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v22    # "remainingLineCount":I
    .end local v25    # "firstWidthLineCount":I
    .end local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v59    # "paraEnd":I
    .end local v61    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v0, "spanEnd":I
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v31, "variableTabStops":[F
    .local v32, "restWidth":I
    .local v33, "firstWidth":I
    .local v34, "breakIndex":I
    .local v49, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v53, "paraIndex":I
    .local v56, "fmAscent":I
    .restart local v62    # "paraStart":I
    .restart local v63    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v67    # "ellipsizedWidth":F
    .restart local v68    # "spanned":Landroid/text/Spanned;
    .restart local v69    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v72    # "paraEnd":I
    .restart local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v75    # "fmDescent":I
    .restart local v76    # "remainingLineCount":I
    .restart local v77    # "spanStart":I
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "outerWidth":I
    .restart local v80    # "paint":Landroid/text/TextPaint;
    .restart local v81    # "bufEnd":I
    .restart local v82    # "bufStart":I
    .restart local v83    # "source":Ljava/lang/CharSequence;
    .restart local v84    # "firstWidthLineCount":I
    .restart local v85    # "breakCount":I
    goto :goto_27

    .end local v62    # "paraStart":I
    .end local v63    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v67    # "ellipsizedWidth":F
    .end local v68    # "spanned":Landroid/text/Spanned;
    .end local v69    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v72    # "paraEnd":I
    .end local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v75    # "fmDescent":I
    .end local v76    # "remainingLineCount":I
    .end local v77    # "spanStart":I
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "outerWidth":I
    .end local v80    # "paint":Landroid/text/TextPaint;
    .end local v81    # "bufEnd":I
    .end local v82    # "bufStart":I
    .end local v83    # "source":Ljava/lang/CharSequence;
    .end local v84    # "firstWidthLineCount":I
    .end local v85    # "breakCount":I
    .local v0, "breakIndex":I
    .restart local v4    # "spanEnd":I
    .restart local v5    # "paraStart":I
    .restart local v6    # "fmDescent":I
    .restart local v7    # "spanStart":I
    .restart local v8    # "outerWidth":I
    .restart local v9    # "fmAscent":I
    .restart local v10    # "bufEnd":I
    .restart local v11    # "restWidth":I
    .restart local v12    # "firstWidth":I
    .restart local v13    # "breakCount":I
    .restart local v14    # "spanned":Landroid/text/Spanned;
    .restart local v17    # "paraIndex":I
    .restart local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v22    # "remainingLineCount":I
    .restart local v25    # "firstWidthLineCount":I
    .restart local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v31, "paint":Landroid/text/TextPaint;
    .local v32, "bufStart":I
    .local v33, "source":Ljava/lang/CharSequence;
    .local v34, "ellipsizedWidth":F
    .local v49, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v53, "res":Landroid/graphics/text/LineBreaker$Result;
    .local v56, "variableTabStops":[F
    .restart local v59    # "paraEnd":I
    :cond_34
    move/from16 v62, v5

    move/from16 v75, v6

    move/from16 v77, v7

    move/from16 v79, v8

    move/from16 v81, v10

    move/from16 v85, v13

    move-object/from16 v68, v14

    move-object v7, v15

    move/from16 v87, v20

    move/from16 v76, v22

    move/from16 v86, v23

    move/from16 v84, v25

    move-object/from16 v74, v26

    move-object/from16 v78, v27

    move-object/from16 v80, v31

    move/from16 v82, v32

    move-object/from16 v83, v33

    move/from16 v67, v34

    move-object/from16 v69, v49

    move-object/from16 v63, v53

    move-object/from16 v31, v56

    move/from16 v72, v59

    move/from16 v34, v0

    move v0, v4

    move/from16 v56, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v53, v17

    move-object/from16 v49, v18

    .line 856
    .end local v4    # "spanEnd":I
    .end local v5    # "paraStart":I
    .end local v6    # "fmDescent":I
    .end local v7    # "spanStart":I
    .end local v8    # "outerWidth":I
    .end local v9    # "fmAscent":I
    .end local v10    # "bufEnd":I
    .end local v11    # "restWidth":I
    .end local v12    # "firstWidth":I
    .end local v13    # "breakCount":I
    .end local v14    # "spanned":Landroid/text/Spanned;
    .end local v17    # "paraIndex":I
    .end local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v22    # "remainingLineCount":I
    .end local v25    # "firstWidthLineCount":I
    .end local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v59    # "paraEnd":I
    .local v0, "spanEnd":I
    .local v31, "variableTabStops":[F
    .local v32, "restWidth":I
    .local v33, "firstWidth":I
    .local v34, "breakIndex":I
    .local v49, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v53, "paraIndex":I
    .local v56, "fmAscent":I
    .restart local v62    # "paraStart":I
    .restart local v63    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v67    # "ellipsizedWidth":F
    .restart local v68    # "spanned":Landroid/text/Spanned;
    .restart local v69    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v72    # "paraEnd":I
    .restart local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v75    # "fmDescent":I
    .restart local v76    # "remainingLineCount":I
    .restart local v77    # "spanStart":I
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "outerWidth":I
    .restart local v80    # "paint":Landroid/text/TextPaint;
    .restart local v81    # "bufEnd":I
    .restart local v82    # "bufStart":I
    .restart local v83    # "source":Ljava/lang/CharSequence;
    .restart local v84    # "firstWidthLineCount":I
    .restart local v85    # "breakCount":I
    :goto_27
    move v4, v0

    move-object v15, v7

    move/from16 v11, v32

    move/from16 v12, v33

    move/from16 v21, v34

    move/from16 v19, v35

    move-object/from16 v18, v49

    move/from16 v0, v50

    move/from16 v17, v53

    move/from16 v6, v56

    move/from16 v20, v58

    move/from16 v24, v60

    move/from16 v5, v62

    move-object/from16 v53, v63

    move/from16 v34, v67

    move-object/from16 v14, v68

    move-object/from16 v49, v69

    move-object/from16 v26, v74

    move/from16 v9, v75

    move/from16 v22, v76

    move-object/from16 v27, v78

    move/from16 v8, v79

    move/from16 v10, v81

    move/from16 v32, v82

    move-object/from16 v33, v83

    move/from16 v25, v84

    move/from16 v13, v85

    move-object/from16 v50, v3

    move v7, v4

    move-object/from16 v3, v30

    move-object/from16 v56, v31

    move/from16 v4, v72

    move-object/from16 v31, v80

    .end local v77    # "spanStart":I
    .local v4, "spanStart":I
    goto/16 :goto_1d

    .end local v30    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v35    # "fmCacheIndex":I
    .end local v58    # "spanEndCacheIndex":I
    .end local v60    # "v":I
    .end local v62    # "paraStart":I
    .end local v63    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v67    # "ellipsizedWidth":F
    .end local v68    # "spanned":Landroid/text/Spanned;
    .end local v69    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v72    # "paraEnd":I
    .end local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v75    # "fmDescent":I
    .end local v76    # "remainingLineCount":I
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "outerWidth":I
    .end local v80    # "paint":Landroid/text/TextPaint;
    .end local v81    # "bufEnd":I
    .end local v82    # "bufStart":I
    .end local v83    # "source":Ljava/lang/CharSequence;
    .end local v84    # "firstWidthLineCount":I
    .end local v85    # "breakCount":I
    .local v0, "here":I
    .local v3, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v4, "paraEnd":I
    .restart local v5    # "paraStart":I
    .local v6, "fmAscent":I
    .restart local v7    # "spanStart":I
    .restart local v8    # "outerWidth":I
    .local v9, "fmDescent":I
    .restart local v10    # "bufEnd":I
    .restart local v11    # "restWidth":I
    .restart local v12    # "firstWidth":I
    .restart local v13    # "breakCount":I
    .restart local v14    # "spanned":Landroid/text/Spanned;
    .restart local v17    # "paraIndex":I
    .restart local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v19, "fmCacheIndex":I
    .restart local v20    # "spanEndCacheIndex":I
    .restart local v21    # "breakIndex":I
    .restart local v22    # "remainingLineCount":I
    .restart local v24    # "v":I
    .restart local v25    # "firstWidthLineCount":I
    .restart local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v31, "paint":Landroid/text/TextPaint;
    .local v32, "bufStart":I
    .local v33, "source":Ljava/lang/CharSequence;
    .local v34, "ellipsizedWidth":F
    .local v49, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v50, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v53, "res":Landroid/graphics/text/LineBreaker$Result;
    .local v56, "variableTabStops":[F
    :cond_35
    move/from16 v28, v0

    move-object/from16 v30, v3

    move/from16 v72, v4

    move/from16 v62, v5

    move/from16 v77, v7

    move/from16 v79, v8

    move/from16 v81, v10

    move/from16 v85, v13

    move-object/from16 v68, v14

    move-object v7, v15

    move/from16 v76, v22

    move/from16 v84, v25

    move-object/from16 v74, v26

    move-object/from16 v78, v27

    move-object/from16 v80, v31

    move/from16 v82, v32

    move-object/from16 v83, v33

    move/from16 v67, v34

    move-object/from16 v69, v49

    move-object/from16 v3, v50

    move-object/from16 v63, v53

    move-object/from16 v31, v56

    const/16 v86, 0x0

    const/16 v87, 0x1

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v53, v17

    move-object/from16 v49, v18

    .line 949
    .end local v0    # "here":I
    .end local v4    # "paraEnd":I
    .end local v5    # "paraStart":I
    .end local v7    # "spanStart":I
    .end local v8    # "outerWidth":I
    .end local v10    # "bufEnd":I
    .end local v11    # "restWidth":I
    .end local v12    # "firstWidth":I
    .end local v13    # "breakCount":I
    .end local v14    # "spanned":Landroid/text/Spanned;
    .end local v17    # "paraIndex":I
    .end local v18    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v22    # "remainingLineCount":I
    .end local v25    # "firstWidthLineCount":I
    .end local v26    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v27    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v34    # "ellipsizedWidth":F
    .end local v50    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v56    # "variableTabStops":[F
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v28, "here":I
    .restart local v30    # "measuredPara":Landroid/text/MeasuredParagraph;
    .local v31, "variableTabStops":[F
    .local v32, "restWidth":I
    .local v33, "firstWidth":I
    .local v49, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v53, "paraIndex":I
    .restart local v62    # "paraStart":I
    .restart local v63    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v67    # "ellipsizedWidth":F
    .restart local v68    # "spanned":Landroid/text/Spanned;
    .restart local v69    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v72    # "paraEnd":I
    .restart local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v76    # "remainingLineCount":I
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "outerWidth":I
    .restart local v80    # "paint":Landroid/text/TextPaint;
    .restart local v81    # "bufEnd":I
    .restart local v82    # "bufStart":I
    .restart local v83    # "source":Ljava/lang/CharSequence;
    .restart local v84    # "firstWidthLineCount":I
    .restart local v85    # "breakCount":I
    move/from16 v0, v72

    move/from16 v4, v81

    .end local v72    # "paraEnd":I
    .end local v81    # "bufEnd":I
    .local v0, "paraEnd":I
    .local v4, "bufEnd":I
    if-ne v0, v4, :cond_36

    .line 950
    move/from16 v9, v24

    move-object/from16 v1, v36

    move/from16 v0, v41

    move-object/from16 v2, v42

    move-object/from16 v5, v43

    move-object/from16 v6, v44

    move-object/from16 v8, v45

    goto/16 :goto_28

    .line 721
    .end local v0    # "paraEnd":I
    .end local v1    # "fmTop":I
    .end local v2    # "fmBottom":I
    .end local v6    # "fmAscent":I
    .end local v9    # "fmDescent":I
    .end local v19    # "fmCacheIndex":I
    .end local v20    # "spanEndCacheIndex":I
    .end local v21    # "breakIndex":I
    .end local v28    # "here":I
    .end local v30    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v31    # "variableTabStops":[F
    .end local v32    # "restWidth":I
    .end local v33    # "firstWidth":I
    .end local v37    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v38    # "chs":[C
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v55    # "ellipsisMayBeApplied":Z
    .end local v62    # "paraStart":I
    .end local v63    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v76    # "remainingLineCount":I
    .end local v84    # "firstWidthLineCount":I
    .end local v85    # "breakCount":I
    :cond_36
    add-int/lit8 v6, v53, 0x1

    move-object/from16 v50, v3

    move v10, v4

    move-object/from16 v1, v36

    move/from16 v0, v41

    move-object/from16 v18, v42

    move-object/from16 v19, v43

    move-object/from16 v20, v44

    move-object/from16 v21, v45

    move-object/from16 v53, v49

    move-object/from16 v22, v51

    move-object/from16 v23, v54

    move-object/from16 v51, v57

    move/from16 v34, v67

    move-object/from16 v14, v68

    move-object/from16 v49, v69

    move-object/from16 v15, v74

    move-object/from16 v7, v78

    move/from16 v8, v79

    move-object/from16 v9, v80

    move/from16 v11, v82

    move-object/from16 v12, v83

    move/from16 v13, v86

    .end local v53    # "paraIndex":I
    .local v6, "paraIndex":I
    goto/16 :goto_c

    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v4    # "bufEnd":I
    .end local v36    # "chooseHtv":[I
    .end local v41    # "lineBreakCapacity":I
    .end local v42    # "breaks":[I
    .end local v43    # "lineWidths":[F
    .end local v44    # "ascents":[F
    .end local v45    # "descents":[F
    .end local v54    # "hyphenEdits":[I
    .end local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .end local v67    # "ellipsizedWidth":F
    .end local v68    # "spanned":Landroid/text/Spanned;
    .end local v69    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "outerWidth":I
    .end local v80    # "paint":Landroid/text/TextPaint;
    .end local v82    # "bufStart":I
    .end local v83    # "source":Ljava/lang/CharSequence;
    .local v0, "lineBreakCapacity":I
    .local v1, "chooseHtv":[I
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v8    # "outerWidth":I
    .local v9, "paint":Landroid/text/TextPaint;
    .restart local v10    # "bufEnd":I
    .local v11, "bufStart":I
    .local v12, "source":Ljava/lang/CharSequence;
    .restart local v14    # "spanned":Landroid/text/Spanned;
    .restart local v15    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v18, "breaks":[I
    .local v19, "lineWidths":[F
    .local v20, "ascents":[F
    .local v21, "descents":[F
    .local v22, "hasTabs":[Z
    .restart local v23    # "hyphenEdits":[I
    .restart local v34    # "ellipsizedWidth":F
    .local v49, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v50    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v51, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v53, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_37
    move-object/from16 v78, v7

    move/from16 v79, v8

    move-object/from16 v80, v9

    move v4, v10

    move/from16 v82, v11

    move-object/from16 v83, v12

    move-object/from16 v68, v14

    move-object/from16 v74, v15

    move/from16 v67, v34

    move-object/from16 v69, v49

    move-object/from16 v3, v50

    move-object/from16 v57, v51

    move-object/from16 v49, v53

    move-object/from16 v7, p0

    move/from16 v53, v6

    .end local v6    # "paraIndex":I
    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v8    # "outerWidth":I
    .end local v9    # "paint":Landroid/text/TextPaint;
    .end local v10    # "bufEnd":I
    .end local v11    # "bufStart":I
    .end local v12    # "source":Ljava/lang/CharSequence;
    .end local v14    # "spanned":Landroid/text/Spanned;
    .end local v15    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v34    # "ellipsizedWidth":F
    .end local v50    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v51    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v4    # "bufEnd":I
    .local v49, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v53, "paraIndex":I
    .restart local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v67    # "ellipsizedWidth":F
    .restart local v68    # "spanned":Landroid/text/Spanned;
    .restart local v69    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "outerWidth":I
    .restart local v80    # "paint":Landroid/text/TextPaint;
    .restart local v82    # "bufStart":I
    .restart local v83    # "source":Ljava/lang/CharSequence;
    move-object/from16 v2, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    move-object/from16 v51, v22

    move-object/from16 v54, v23

    move/from16 v9, v24

    .line 954
    .end local v18    # "breaks":[I
    .end local v19    # "lineWidths":[F
    .end local v20    # "ascents":[F
    .end local v21    # "descents":[F
    .end local v22    # "hasTabs":[Z
    .end local v23    # "hyphenEdits":[I
    .end local v24    # "v":I
    .end local v53    # "paraIndex":I
    .local v2, "breaks":[I
    .local v5, "lineWidths":[F
    .local v6, "ascents":[F
    .local v8, "descents":[F
    .local v9, "v":I
    .local v51, "hasTabs":[Z
    .restart local v54    # "hyphenEdits":[I
    :goto_28
    move/from16 v10, v82

    .end local v82    # "bufStart":I
    .local v10, "bufStart":I
    if-eq v4, v10, :cond_39

    add-int/lit8 v11, v4, -0x1

    move-object/from16 v12, v83

    .end local v83    # "source":Ljava/lang/CharSequence;
    .restart local v12    # "source":Ljava/lang/CharSequence;
    invoke-interface {v12, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v13, 0xa

    if-ne v11, v13, :cond_38

    goto :goto_29

    :cond_38
    move-object/from16 v11, v74

    move-object/from16 v14, v80

    goto/16 :goto_2a

    .end local v12    # "source":Ljava/lang/CharSequence;
    .restart local v83    # "source":Ljava/lang/CharSequence;
    :cond_39
    move-object/from16 v12, v83

    .end local v83    # "source":Ljava/lang/CharSequence;
    .restart local v12    # "source":Ljava/lang/CharSequence;
    :goto_29
    iget v11, v7, Landroid/text/StaticLayout;->mLineCount:I

    iget v13, v7, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v11, v13, :cond_3a

    .line 956
    nop

    .line 957
    move-object/from16 v11, v74

    const/4 v13, 0x0

    .end local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v11, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static {v12, v4, v4, v11, v13}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v13

    .local v13, "measuredPara":Landroid/text/MeasuredParagraph;
    move-object/from16 v34, v13

    .line 958
    move-object/from16 v14, v80

    .end local v80    # "paint":Landroid/text/TextPaint;
    .local v14, "paint":Landroid/text/TextPaint;
    invoke-virtual {v14, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 959
    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v21, v15

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v22, v15

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v23, v15

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v24, v15

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v12

    move/from16 v19, v4

    move/from16 v20, v4

    move/from16 v25, v9

    move/from16 v26, v46

    move/from16 v27, v47

    move-object/from16 v30, v3

    move/from16 v33, v16

    move/from16 v35, v4

    move/from16 v36, p2

    move/from16 v37, p3

    move/from16 v38, v48

    move/from16 v40, v10

    move-object/from16 v41, v49

    move/from16 v42, v67

    move-object/from16 v44, v14

    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v9

    goto :goto_2a

    .line 954
    .end local v11    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v13    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v14    # "paint":Landroid/text/TextPaint;
    .restart local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v80    # "paint":Landroid/text/TextPaint;
    :cond_3a
    move-object/from16 v11, v74

    move-object/from16 v14, v80

    .line 970
    .end local v74    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v80    # "paint":Landroid/text/TextPaint;
    .restart local v11    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v14    # "paint":Landroid/text/TextPaint;
    :goto_2a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getBottomPadding()I
    .locals 1

    .line 1331
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1406
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 1407
    const/4 v0, 0x0

    return v0

    .line 1410
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x6

    aget v0, v1, v0

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1415
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 1416
    const/4 v0, 0x0

    return v0

    .line 1419
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x5

    aget v0, v1, v0

    return v0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    .line 1424
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 2
    .param p1, "lineNumber"    # I

    .line 1369
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
    .param p1, "cap"    # Z

    .line 1441
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x5

    .line 1442
    const-string v2, "StaticLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " lineCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_1

    .line 1449
    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 1448
    :goto_0
    return v1
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .line 1377
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 1378
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_0

    .line 1379
    return v1

    .line 1381
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 1383
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    .line 1384
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_2

    .line 1385
    return v1

    .line 1387
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    .line 1389
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    .line 1390
    const/4 v0, 0x0

    .line 1391
    .local v0, "left":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_4

    .line 1392
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1394
    :cond_4
    const/4 v1, 0x0

    .line 1395
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    .line 1396
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1398
    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 1400
    .end local v0    # "left":I
    .end local v1    # "right":I
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
    .param p1, "line"    # I

    .line 1313
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

    .line 1280
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1298
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .line 1318
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1321
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    .line 1319
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1293
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .line 1259
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1260
    .local v0, "high":I
    const/4 v1, -0x1

    .line 1262
    .local v1, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1263
    .local v2, "lines":[I
    :goto_0
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1264
    add-int v3, v0, v1

    shr-int/2addr v3, v4

    .line 1265
    .local v3, "guess":I
    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_0

    .line 1266
    move v0, v3

    goto :goto_0

    .line 1268
    :cond_0
    move v1, v3

    goto :goto_0

    .line 1271
    .end local v3    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 1272
    const/4 v3, 0x0

    return v3

    .line 1274
    :cond_2
    return v1
.end method

.method public whitelist getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1303
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
    .param p1, "line"    # I

    .line 1285
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1308
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
    .param p1, "lineNumber"    # I

    .line 1357
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

    .line 1326
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 1

    .line 1429
    iget-boolean v0, p0, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    return v0
.end method
