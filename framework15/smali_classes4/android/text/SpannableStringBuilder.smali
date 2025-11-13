.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final greylist-max-o END_MASK:I = 0xf

.field private static final greylist-max-o MARK:I = 0x1

.field private static final greylist-max-o NO_FILTERS:[Landroid/text/InputFilter;

.field private static final greylist-max-o PARAGRAPH:I = 0x3

.field private static final greylist-max-o POINT:I = 0x2

.field private static final greylist-max-o SPAN_ADDED:I = 0x800

.field private static final greylist-max-o SPAN_END_AT_END:I = 0x8000

.field private static final greylist-max-o SPAN_END_AT_START:I = 0x4000

.field private static final greylist-max-o SPAN_START_AT_END:I = 0x2000

.field private static final greylist-max-o SPAN_START_AT_START:I = 0x1000

.field private static final greylist-max-o SPAN_START_END_MASK:I = 0xf000

.field private static final greylist-max-o START_MASK:I = 0xf0

.field private static final greylist-max-o START_SHIFT:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SpannableStringBuilder"

.field private static final greylist-max-o sCachedIntBuffer:[[I


# instance fields
.field private greylist-max-o mFilters:[Landroid/text/InputFilter;

.field private greylist mGapLength:I

.field private greylist mGapStart:I

.field private greylist-max-o mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLowWaterMark:I

.field private greylist mSpanCount:I

.field private greylist mSpanEnds:[I

.field private greylist mSpanFlags:[I

.field private greylist-max-o mSpanInsertCount:I

.field private greylist-max-o mSpanMax:[I

.field private greylist-max-o mSpanOrder:[I

.field private greylist mSpanStarts:[I

.field private greylist mSpans:[Ljava/lang/Object;

.field private greylist mText:[C

.field private greylist-max-o mTextWatcherDepth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/text/InputFilter;

    sput-object v1, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;II)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    sub-int v11, v10, v9

    if-ltz v11, :cond_7

    invoke-static {v11}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    iput v11, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    sub-int/2addr v0, v11

    iput v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    const/4 v1, 0x0

    invoke-static {v8, v9, v10, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iput v1, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iput v1, v7, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    instance-of v0, v8, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    move-object v12, v8

    check-cast v12, Landroid/text/Spanned;

    const-class v0, Ljava/lang/Object;

    invoke-interface {v12, v9, v10, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    array-length v0, v13

    if-ge v14, v0, :cond_5

    aget-object v0, v13, v14

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    aget-object v0, v13, v14

    invoke-interface {v12, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, v9

    aget-object v1, v13, v14

    invoke-interface {v12, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, v9

    aget-object v2, v13, v14

    invoke-interface {v12, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v15

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    sub-int v2, v10, v9

    if-le v0, v2, :cond_2

    sub-int v0, v10, v9

    move/from16 v16, v0

    goto :goto_1

    :cond_2
    move/from16 v16, v0

    :goto_1
    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    sub-int v0, v10, v9

    if-le v1, v0, :cond_4

    sub-int v1, v10, v9

    move/from16 v17, v1

    goto :goto_2

    :cond_4
    move/from16 v17, v1

    :goto_2
    aget-object v2, v13, v14

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private greylist-max-o calcMax(I)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v0

    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aput v0, v1, p1

    return v0
.end method

.method private greylist-max-o change(IILjava/lang/CharSequence;II)V
    .locals 25

    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    move/from16 v10, p5

    sub-int v16, v15, v14

    sub-int v17, v10, v11

    sub-int v9, v17, v16

    const/4 v0, 0x0

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move/from16 v18, v0

    move v8, v1

    :goto_0
    if-ltz v8, :cond_e

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, v8

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v1, :cond_0

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, v13, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v8

    iget v2, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_1

    iget v2, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    :cond_1
    iget-object v2, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v2, v8

    const/16 v3, 0x33

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    move v6, v0

    move v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v2, 0xa

    if-le v0, v14, :cond_3

    if-gt v0, v15, :cond_3

    move/from16 v0, p2

    :goto_1
    if-ge v0, v4, :cond_3

    if-le v0, v15, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v3, v0

    if-le v1, v14, :cond_6

    if-gt v1, v15, :cond_6

    move/from16 v0, p2

    :goto_3
    if-ge v0, v4, :cond_5

    if-le v0, v15, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v13, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    if-ne v3, v6, :cond_8

    if-eq v2, v5, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    move v0, v3

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v19, v0, v8

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v20, v0, v8

    const/16 v21, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v22, v2

    move-object/from16 v2, v19

    move/from16 v19, v3

    move/from16 v23, v4

    move/from16 v4, v22

    move/from16 v24, v5

    move/from16 v5, v20

    move/from16 v20, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    const/4 v0, 0x1

    move/from16 v18, v0

    move/from16 v0, v19

    move/from16 v1, v22

    :cond_9
    :goto_7
    const/4 v2, 0x0

    if-ne v0, v14, :cond_a

    or-int/lit16 v2, v2, 0x1000

    goto :goto_8

    :cond_a
    add-int v3, v15, v9

    if-ne v0, v3, :cond_b

    or-int/lit16 v2, v2, 0x2000

    :cond_b
    :goto_8
    if-ne v1, v14, :cond_c

    or-int/lit16 v2, v2, 0x4000

    goto :goto_9

    :cond_c
    add-int v3, v15, v9

    if-ne v1, v3, :cond_d

    const v3, 0x8000

    or-int/2addr v2, v3

    :cond_d
    :goto_9
    iget-object v3, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v3, v8

    or-int/2addr v4, v2

    aput v4, v3, v8

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v18, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_f
    invoke-direct {v13, v15}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    iget v0, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v9, v0, :cond_10

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    add-int/2addr v0, v9

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    invoke-direct {v13, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_10
    const/4 v0, 0x0

    if-nez v17, :cond_11

    move v1, v7

    goto :goto_a

    :cond_11
    move v1, v0

    :goto_a
    move v8, v1

    if-lez v16, :cond_12

    :goto_b
    iget v1, v13, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lez v1, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v1

    invoke-direct {v13, v14, v15, v8, v1}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_b

    :cond_12
    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v1, v9

    iput v1, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v9

    iput v1, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-ge v1, v7, :cond_13

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "mGapLength < 1"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    iget-object v1, v13, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {v12, v11, v10, v1, v14}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-lez v16, :cond_16

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget-object v2, v13, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v2, v2

    if-ne v1, v2, :cond_14

    move v5, v7

    goto :goto_c

    :cond_14
    move v5, v0

    :goto_c
    const/4 v0, 0x0

    move v7, v0

    :goto_d
    iget v0, v13, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v7, v0, :cond_15

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, v7

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v19, v0, 0x4

    iget-object v6, v13, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v0, v7

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v9

    move/from16 v4, v19

    move-object/from16 v20, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v0

    aput v0, v20, v7

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, v7

    and-int/lit8 v0, v0, 0xf

    iget-object v1, v13, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v2, v13, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, v7

    move-object/from16 v6, p0

    move v3, v7

    move v7, v2

    move/from16 v20, v8

    move/from16 v8, p1

    move/from16 v21, v9

    move v4, v10

    move v10, v0

    move v2, v11

    move v11, v5

    move-object v15, v12

    move/from16 v12, v20

    invoke-direct/range {v6 .. v12}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v6

    aput v6, v1, v3

    add-int/lit8 v7, v3, 0x1

    move v11, v2

    move v10, v4

    move-object v12, v15

    move/from16 v8, v20

    move/from16 v15, p2

    goto :goto_d

    :cond_15
    move v3, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move v4, v10

    move v2, v11

    move-object v15, v12

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    goto :goto_e

    :cond_16
    move/from16 v20, v8

    move/from16 v21, v9

    move v4, v10

    move v2, v11

    move-object v15, v12

    :goto_e
    instance-of v0, v15, Landroid/text/Spanned;

    if-eqz v0, :cond_1b

    move-object v7, v15

    check-cast v7, Landroid/text/Spanned;

    const-class v0, Ljava/lang/Object;

    invoke-interface {v7, v2, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_f
    array-length v0, v8

    if-ge v9, v0, :cond_1a

    aget-object v0, v8, v9

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    aget-object v1, v8, v9

    invoke-interface {v7, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v2, :cond_17

    move/from16 v0, p4

    :cond_17
    move v10, v0

    if-le v1, v4, :cond_18

    move/from16 v1, p5

    :cond_18
    move v11, v1

    aget-object v0, v8, v9

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_19

    sub-int v0, v10, v2

    add-int v12, v0, v14

    sub-int v0, v11, v2

    add-int v19, v0, v14

    aget-object v0, v8, v9

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    or-int/lit16 v6, v0, 0x800

    aget-object v3, v8, v9

    const/16 v22, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v12

    move/from16 v4, v19

    move v5, v6

    move/from16 v23, v6

    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    :cond_19
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p4

    move/from16 v4, p5

    goto :goto_f

    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_1b
    return-void
.end method

.method private greylist-max-o checkRange(Ljava/lang/String;II)V
    .locals 4

    const-string v0, " "

    if-lt p3, p2, :cond_2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    if-gt p3, v1, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " starts before 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ends beyond length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has end before start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkSortBuffer([II)[I
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method private final greylist-max-o compareSpans(II[I[I)I
    .locals 4

    aget v0, p3, p1

    aget v1, p3, p2

    if-ne v0, v1, :cond_0

    aget v2, p4, p1

    aget v3, p4, p2

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method private greylist-max-o countSpans(IILjava/lang/Class;I)I
    .locals 4

    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, v1

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_0

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    :cond_0
    if-lt v2, p1, :cond_1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v0

    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v1, :cond_7

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    :cond_2
    if-gt v1, p2, :cond_7

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_3

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    :cond_3
    if-lt v2, p1, :cond_6

    if-eq v1, v2, :cond_4

    if-eq p1, p2, :cond_4

    if-eq v1, p2, :cond_6

    if-eq v2, p1, :cond_6

    :cond_4
    const-class v3, Ljava/lang/Object;

    if-eq v3, p3, :cond_5

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :cond_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v3

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    return v0
.end method

.method private greylist-max-o getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_2

    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v16

    iget-object v0, v10, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v0, v0, v16

    iget v1, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v1, :cond_0

    iget v1, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v0

    :goto_0
    if-lt v9, v11, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v16

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v17, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v0

    goto :goto_1

    :cond_1
    move/from16 v17, v9

    :cond_2
    move/from16 v0, p8

    :goto_1
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lt v14, v1, :cond_3

    return v0

    :cond_3
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v14

    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_4

    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    move v9, v1

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    if-gt v9, v12, :cond_e

    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v14

    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_5

    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    move v8, v1

    goto :goto_3

    :cond_5
    move v8, v1

    :goto_3
    if-lt v8, v11, :cond_c

    if-eq v9, v8, :cond_6

    if-eq v11, v12, :cond_6

    if-eq v9, v12, :cond_c

    if-eq v8, v11, :cond_c

    :cond_6
    const-class v1, Ljava/lang/Object;

    if-eq v1, v13, :cond_7

    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v14

    invoke-virtual {v13, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_7
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v14

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    move v3, v0

    if-eqz p9, :cond_8

    aput v1, p6, v3

    iget-object v2, v10, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v2, v2, v14

    aput v2, p7, v3

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_b

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_a

    aget-object v5, v15, v4

    invoke-virtual {v10, v5}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/2addr v5, v2

    if-le v1, v5, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    add-int/lit8 v2, v4, 0x1

    sub-int v5, v0, v4

    invoke-static {v15, v4, v15, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    :cond_b
    :goto_6
    iget-object v2, v10, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v14

    aput-object v2, v15, v3

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    goto :goto_7

    :cond_c
    move v7, v0

    :goto_7
    array-length v0, v15

    if-ge v7, v0, :cond_d

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_d

    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v16, v7

    move-object/from16 v7, p7

    move/from16 v17, v8

    move/from16 v8, v16

    move/from16 v18, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v0

    goto :goto_8

    :cond_d
    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v0, v16

    goto :goto_8

    :cond_e
    move/from16 v18, v9

    :goto_8
    return v0
.end method

.method private static greylist-max-o hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 7

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    return v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o invalidateIndex(I)V
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    return-void
.end method

.method private greylist-max-o isInvalidParagraph(II)Z
    .locals 2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o leftChild(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private greylist-max-o moveGapTo(I)V
    .locals 8

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v1, :cond_2

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v2, p1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v1, p1, v1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v1

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_3

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_3
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-le v2, p1, :cond_4

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v6

    goto :goto_3

    :cond_4
    if-ne v2, p1, :cond_6

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    if-eq v6, v5, :cond_5

    if-eqz v0, :cond_6

    if-ne v6, v4, :cond_6

    :cond_5
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v7

    :cond_6
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v6, :cond_7

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v6

    :cond_7
    if-le v3, p1, :cond_8

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    goto :goto_4

    :cond_8
    if-ne v3, p1, :cond_a

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit8 v6, v6, 0xf

    if-eq v6, v5, :cond_9

    if-eqz v0, :cond_a

    if-ne v6, v4, :cond_a

    :cond_9
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    :cond_a
    :goto_4
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v4, v1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    :cond_c
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return-void
.end method

.method private greylist-max-o nextSpanTransitionRec(IILjava/lang/Class;I)I
    .locals 3

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v0, :cond_3

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-le v0, p1, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move p2, v0

    :cond_1
    if-le v1, p1, :cond_2

    if-ge v1, p2, :cond_2

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move p2, v1

    :cond_2
    if-ge v0, p2, :cond_3

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    :cond_3
    return p2
.end method

.method private static greylist-max-o obtain(I)[I
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v1

    const/4 v2, -0x1

    :try_start_0
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    const/4 v4, -0x1

    if-ltz v3, :cond_2

    sget-object v5, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    sget-object v5, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v5, v5, v3

    array-length v5, v5

    if-lt v5, p0, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    if-ne v2, v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v2, v4, :cond_3

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v2

    move-object v0, v3

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    const/4 v4, 0x0

    aput-object v4, v3, v2

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p0}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static greylist-max-o recycle([I)V
    .locals 4

    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    array-length v2, p0

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object p0, v2, v1

    nop

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o region(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o removeSpan(II)V
    .locals 7

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p1

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v3, :cond_0

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v3

    :cond_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_1

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    :cond_1
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    and-int/lit16 v4, p2, 0x200

    if-nez v4, :cond_2

    invoke-direct {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private greylist-max-o removeSpansForChange(IIZI)Z
    .locals 5

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v2, 0x0

    if-ge p4, v0, :cond_4

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, p4

    const/16 v3, 0x21

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p4, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    return v1

    :cond_2
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    if-gt v0, p2, :cond_3

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1

    :cond_4
    return v2
.end method

.method private greylist-max-o resizeFor(I)V
    .locals 8

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-gt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    sub-int v3, v2, v0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v6, v0, v4

    sub-int v7, v2, v4

    invoke-static {v5, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v5

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_2

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v5

    add-int/2addr v7, v3

    aput v7, v6, v5

    :cond_2
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v5

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v5

    add-int/2addr v7, v3

    aput v7, v6, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    :cond_5
    return-void
.end method

.method private greylist-max-o resolveGap(I)I
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private greylist-max-o restoreInvariants()V
    .locals 10

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v0

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v5, v5, v0

    move v6, v0

    :cond_1
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v9, v6, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v6

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_2

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v8, v6, -0x1

    aget v7, v7, v8

    if-lt v2, v7, :cond_1

    :cond_2
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v1, v7, v6

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v7, v6

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v7, v6

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v4, v7, v6

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aput v5, v7, v6

    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    :cond_5
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    :goto_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_7

    :cond_6
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    return-void
.end method

.method private static greylist-max-o rightChild(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private greylist-max-o sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3

    array-length v0, p1

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private greylist-max-o sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3

    array-length v0, p1

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private greylist-max-o sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4

    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4

    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3

    array-length v0, p1

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private greylist sendToSpanWatchers(III)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p1

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v8, v0, :cond_c

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v8

    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, v8

    iget-object v1, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v8

    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v2, :cond_1

    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v2

    :cond_1
    move v10, v0

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v0, :cond_2

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v0

    :cond_2
    move v11, v1

    add-int v12, p2, p3

    const/4 v0, 0x0

    move v1, v10

    if-le v10, v12, :cond_3

    if-eqz p3, :cond_6

    sub-int v1, v1, p3

    const/4 v0, 0x1

    move v13, v1

    goto :goto_1

    :cond_3
    if-lt v10, v7, :cond_6

    if-ne v10, v7, :cond_4

    and-int/lit16 v2, v9, 0x1000

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_6

    :cond_4
    if-ne v10, v12, :cond_5

    and-int/lit16 v2, v9, 0x2000

    const/16 v3, 0x2000

    if-eq v2, v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    move v13, v1

    goto :goto_1

    :cond_6
    move v13, v1

    :goto_1
    move v1, v11

    if-le v11, v12, :cond_7

    if-eqz p3, :cond_a

    sub-int v1, v1, p3

    const/4 v0, 0x1

    move v14, v0

    move v15, v1

    goto :goto_2

    :cond_7
    if-lt v11, v7, :cond_a

    if-ne v11, v7, :cond_8

    and-int/lit16 v2, v9, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_a

    :cond_8
    if-ne v11, v12, :cond_9

    const v2, 0x8000

    and-int v3, v9, v2

    if-eq v3, v2, :cond_a

    :cond_9
    const/4 v0, 0x1

    move v14, v0

    move v15, v1

    goto :goto_2

    :cond_a
    move v14, v0

    move v15, v1

    :goto_2
    if-eqz v14, :cond_b

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v0, v8

    move-object/from16 v0, p0

    move v2, v13

    move v3, v15

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    :cond_b
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v8

    const v2, -0xf001

    and-int/2addr v1, v2

    aput v1, v0, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_4
    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_10

    iget-object v1, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v0

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_f

    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v2, v0

    and-int/lit16 v3, v3, -0x801

    aput v3, v2, v0

    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    iget-object v3, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_d

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_d
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_e

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_e
    iget-object v4, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-direct {v6, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method private greylist-max-o setSpan(ZLjava/lang/Object;IIIZ)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v8, p5

    const-string/jumbo v2, "setSpan"

    invoke-direct {v6, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    and-int/lit16 v2, v8, 0xf0

    shr-int/lit8 v9, v2, 0x4

    invoke-direct {v6, v0, v9}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v2

    const-string v3, ")"

    const-string v4, " follows "

    if-eqz v2, :cond_1

    if-nez p6, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    and-int/lit8 v10, v8, 0xf

    invoke-direct {v6, v1, v10}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p6, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v9, v2, :cond_5

    if-ne v10, v3, :cond_5

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_4

    const-string v2, "SpannableStringBuilder"

    const-string v3, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    move/from16 v11, p3

    move/from16 v12, p4

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v5, 0x3

    if-le v0, v4, :cond_6

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v4

    move v13, v0

    goto :goto_0

    :cond_6
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v0, v4, :cond_8

    if-eq v9, v2, :cond_7

    if-ne v9, v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ne v0, v4, :cond_8

    :cond_7
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v4

    move v13, v0

    goto :goto_0

    :cond_8
    move v13, v0

    :goto_0
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v0, :cond_9

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    move v14, v0

    goto :goto_1

    :cond_9
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v1, v0, :cond_b

    if-eq v10, v2, :cond_a

    if-ne v10, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ne v1, v0, :cond_b

    :cond_a
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    move v14, v0

    goto :goto_1

    :cond_b
    move v14, v1

    :goto_1
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_f

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, v16

    iget-object v1, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v16

    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v2, :cond_c

    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v2

    move/from16 v17, v0

    goto :goto_2

    :cond_c
    move/from16 v17, v0

    :goto_2
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v0, :cond_d

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v0

    move/from16 v18, v1

    goto :goto_3

    :cond_d
    move/from16 v18, v1

    :goto_3
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v13, v0, v16

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v14, v0, v16

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v8, v0, v16

    if-eqz p1, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    :cond_e
    return-void

    :cond_f
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0, v1, v7}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0, v1, v8}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v0, v3

    iput v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    add-int/2addr v0, v3

    iput v0, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v3

    iget-object v1, v6, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v1, v1

    if-ge v1, v0, :cond_10

    new-array v1, v0, [I

    iput-object v1, v6, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    :cond_10
    if-eqz p1, :cond_11

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    invoke-direct {v6, v7, v11, v12}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_11
    return-void
.end method

.method private final greylist-max-o siftDown(I[Ljava/lang/Object;I[I[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[I[I)V"
        }
    .end annotation

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_2

    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p2, p1

    aget-object v2, p2, v0

    aput-object v2, p2, p1

    aput-object v1, p2, v0

    aget v2, p4, p1

    aget v3, p4, v0

    aput v3, p4, p1

    aput v2, p4, v0

    aget v3, p5, p1

    aget v4, p5, v0

    aput v4, p5, p1

    aput v3, p5, v0

    move p1, v0

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final greylist-max-o sort([Ljava/lang/Object;[I[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    array-length v6, p1

    div-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_0

    move-object v0, p0

    move v1, v7

    move-object v2, p1

    move v3, v6

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v7, v0

    :goto_1
    if-lez v7, :cond_1

    const/4 v0, 0x0

    aget-object v8, p1, v0

    aget-object v1, p1, v7

    aput-object v1, p1, v0

    aput-object v8, p1, v7

    aget v9, p2, v0

    aget v1, p2, v7

    aput v1, p2, v0

    aput v9, p2, v7

    aget v10, p3, v0

    aget v1, p3, v7

    aput v1, p3, v0

    aput v10, p3, v7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, v7

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private greylist-max-o treeRoot()I
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o updatedIntervalBound(IIIIZZ)I
    .locals 2

    if-lt p1, p2, :cond_5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    if-nez p6, :cond_0

    if-le p1, p2, :cond_5

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    if-eqz p5, :cond_5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    :cond_2
    if-nez p6, :cond_4

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return v0

    :cond_4
    :goto_0
    return p2

    :cond_5
    return p1
.end method

.method public static whitelist valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist append(C)Landroid/text/Editable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist append(C)Landroid/text/SpannableStringBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 7

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, v6

    move v2, v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 7

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    move-object v0, p0

    move v1, v6

    move v2, v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api charAt(I)C
    .locals 4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-string v1, "charAt: "

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_1

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    return v1

    :cond_0
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    return v1

    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " >= length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " < 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist clear()V
    .locals 6

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    return-void
.end method

.method public whitelist clearSpans()V
    .locals 6

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    invoke-direct {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    return-void
.end method

.method public bridge synthetic whitelist delete(II)Landroid/text/Editable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist delete(II)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_0
    return-object v0
.end method

.method public greylist-max-o drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .locals 8

    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v4, p3, p2

    move-object v1, p1

    move v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v3, p2, v0

    sub-int v4, p3, p2

    move-object v1, p1

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    const/4 v3, 0x0

    sub-int v4, p3, p2

    move-object v1, p1

    move-object v2, v0

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return-void
.end method

.method public greylist-max-o drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    const-string v1, "drawTextRun"

    invoke-direct {v0, v1, v11, v12}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    sub-int v25, v14, v13

    sub-int v26, v12, v11

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v14, v1, :cond_0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, v26

    move/from16 v5, p4

    move/from16 v6, v25

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v13, v1, :cond_1

    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v17, v11, v2

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v19, v13, v2

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    move/from16 v18, v26

    move/from16 v20, v25

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p8

    move-object/from16 v24, p9

    invoke-virtual/range {v15 .. v24}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v17, v11, v13

    const/16 v19, 0x0

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    move/from16 v18, v26

    move/from16 v20, v25

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p8

    move-object/from16 v24, p9

    invoke-virtual/range {v15 .. v24}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9

    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v5, v2

    if-ne v4, v5, :cond_5

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v4, v5, :cond_4

    aget-object v5, v3, v4

    aget-object v6, v2, v4

    if-ne v5, p0, :cond_1

    if-ne v0, v6, :cond_0

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_3

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_3

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x1

    return v1

    :cond_5
    return v1
.end method

.method public whitelist getChars(II[CI)V
    .locals 4

    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public whitelist getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    :goto_0
    return v1
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;Z)[TT;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    if-nez v11, :cond_0

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, v10, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-direct {v10, v12, v13, v11, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v14

    if-nez v14, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v11, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Ljava/lang/Object;

    if-eqz p4, :cond_3

    invoke-static {v14}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    move-object v9, v0

    if-eqz p4, :cond_4

    invoke-static {v14}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_1
    move-object v8, v0

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v15

    move-object v6, v9

    move-object v7, v8

    move-object v11, v8

    move/from16 v8, v16

    move-object v12, v9

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    if-eqz p4, :cond_5

    invoke-direct {v10, v15, v12, v11}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    invoke-static {v12}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    invoke-static {v11}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    :cond_5
    return-object v15
.end method

.method public greylist-max-o getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    sub-int v14, v13, v12

    sub-int v15, v11, v10

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v11, v1, :cond_0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v1, p8

    move/from16 v3, p1

    move v4, v15

    move/from16 v5, p3

    move v6, v14

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v10, v1, :cond_1

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v3, v10, v1

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, v12, v1

    move-object/from16 v1, p8

    move v4, v15

    move v6, v14

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v14}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v9

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v13, v9, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v3, v10, v12

    const/4 v5, 0x0

    move-object/from16 v1, p8

    move-object v2, v9

    move v4, v15

    move v6, v14

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v16, v9

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return v1
.end method

.method public whitelist getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/SpannableStringBuilder;->getTextRunCursor(IIZIILandroid/graphics/Paint;)I

    move-result v0

    return v0
.end method

.method public blacklist getTextRunCursor(IIZIILandroid/graphics/Paint;)I
    .locals 9

    sub-int v7, p2, p1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v3, v7

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v3, v7

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v8, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    const/4 v2, 0x0

    sub-int v5, p4, p1

    move-object v0, p6

    move-object v1, v8

    move v3, v7

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v8}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return v0
.end method

.method public whitelist getTextWatcherDepth()I
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return v0
.end method

.method public greylist-max-o getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 3

    const-string v0, "getTextWidths"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-virtual {p4, v0, p1, v1, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    goto :goto_0

    :cond_1
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    move v0, v1

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v1, v2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public bridge synthetic whitelist insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api length()I
    .locals 2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o measureText(IILandroid/graphics/Paint;)F
    .locals 3

    const-string/jumbo v0, "measureText"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-virtual {p3, v0, p1, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    goto :goto_0

    :cond_1
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    move v0, v1

    :goto_0
    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_0

    return p2

    :cond_0
    if-nez p3, :cond_1

    const-class p3, Ljava/lang/Object;

    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public whitelist removeSpan(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public greylist-max-o removeSpan(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    :cond_1
    return-void
.end method

.method public bridge synthetic whitelist replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 26

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const-string/jumbo v0, "replace"

    invoke-direct {v7, v0, v8, v9}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v10, v0

    const/4 v0, 0x0

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move v14, v0

    :goto_0
    if-ge v14, v10, :cond_1

    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v0, v14

    move-object v1, v11

    move v2, v12

    move v3, v13

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v11, v1

    move v12, v2

    move v13, v3

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    sub-int v14, v9, v8

    sub-int v15, v13, v12

    if-nez v14, :cond_2

    if-nez v15, :cond_2

    invoke-static {v11, v12}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v7

    :cond_2
    add-int v0, v8, v14

    const-class v1, Landroid/text/TextWatcher;

    invoke-virtual {v7, v8, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/text/TextWatcher;

    invoke-direct {v7, v6, v8, v14, v15}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    if-eqz v14, :cond_3

    if-eqz v15, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move/from16 v16, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v16, :cond_4

    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    move v5, v0

    move v4, v1

    goto :goto_2

    :cond_4
    move v5, v0

    move v4, v1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v11

    move/from16 v17, v4

    move v4, v12

    move-object/from16 p3, v6

    move v6, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    if-eqz v16, :cond_8

    const/4 v0, 0x0

    if-le v6, v8, :cond_5

    if-ge v6, v9, :cond_5

    sub-int v5, v6, v8

    int-to-long v4, v5

    int-to-long v1, v15

    mul-long/2addr v1, v4

    move-wide/from16 p4, v4

    int-to-long v3, v14

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v18

    add-int v19, v8, v18

    const/16 v20, 0x1

    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v19

    move-wide/from16 v21, p4

    move/from16 v4, v19

    move/from16 v23, v10

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move/from16 v0, v20

    goto :goto_3

    :cond_5
    move/from16 v23, v10

    move-object/from16 v10, p3

    move/from16 v19, v6

    :goto_3
    move/from16 v1, v17

    if-le v1, v8, :cond_6

    if-ge v1, v9, :cond_6

    sub-int v4, v1, v8

    int-to-long v5, v4

    int-to-long v2, v15

    mul-long/2addr v2, v5

    move/from16 p3, v0

    move/from16 v17, v1

    int-to-long v0, v14

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v18

    add-int v17, v8, v18

    const/16 v20, 0x1

    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v21, 0x22

    const/16 v22, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v17

    move/from16 v4, v17

    move-wide/from16 v24, v5

    move/from16 v5, v21

    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move/from16 v0, v20

    goto :goto_4

    :cond_6
    move/from16 p3, v0

    move/from16 v17, v1

    move/from16 v0, p3

    move/from16 v4, v17

    :goto_4
    if-eqz v0, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_7
    move/from16 v5, v19

    goto :goto_5

    :cond_8
    move/from16 v23, v10

    move-object/from16 v10, p3

    move v5, v6

    move/from16 v4, v17

    :goto_5
    invoke-direct {v7, v10, v8, v14, v15}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    invoke-direct {v7, v10}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    sub-int v0, v15, v14

    invoke-direct {v7, v8, v9, v0}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    return-object v7
.end method

.method public whitelist setFilters([Landroid/text/InputFilter;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist setSpan(Ljava/lang/Object;III)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public greylist substring(II)Ljava/lang/String;
    .locals 2

    sub-int v0, p2, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
