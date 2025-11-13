.class public final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$StyleIDs;,
        Landroid/content/res/StringBlock$Height;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static final greylist-max-o localLOGV:Z


# instance fields
.field private greylist-max-o mNative:J

.field private blacklist mOpen:Z

.field private final greylist-max-o mOwnsNative:Z

.field private greylist-max-o mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStrings:[Ljava/lang/CharSequence;

.field greylist-max-o mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final greylist-max-o mUseSparse:Z


# direct methods
.method public constructor greylist <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor greylist-max-o <init>([BIIZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor greylist-max-o <init>([BZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method private static greylist-max-o addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    nop

    :cond_1
    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    nop

    :cond_3
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private blacklist applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v1

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_6

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_5

    aget v5, v1, v2

    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    add-int/lit8 v6, v2, 0x2

    aget v6, v1, v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/AssetManager;->getCustomizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    move-object v6, v5

    :cond_1
    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v8, v9, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v7, 0x0

    :goto_1
    array-length v9, v1

    if-ge v7, v9, :cond_4

    if-eq v2, v7, :cond_3

    add-int/lit8 v9, v7, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v2, 0x2

    aget v10, v1, v10

    if-lt v9, v10, :cond_2

    add-int/lit8 v9, v7, 0x1

    aget v10, v1, v9

    add-int/2addr v10, v8

    aput v10, v1, v9

    :cond_2
    add-int/lit8 v9, v7, 0x2

    aget v9, v1, v9

    add-int/lit8 v10, v2, 0x2

    aget v10, v1, v10

    if-lt v9, v10, :cond_3

    add-int/lit8 v9, v7, 0x2

    aget v10, v1, v9

    add-int/2addr v10, v8

    aput v10, v1, v9

    :cond_3
    add-int/lit8 v7, v7, 0x3

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_2d

    aget v5, v1, v2

    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    const/16 v7, 0x21

    if-ne v5, v6, :cond_7

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    nop

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v3, v8}, Landroid/text/style/StyleSpan;-><init>(II)V

    add-int/lit8 v10, v2, 0x1

    aget v10, v1, v10

    add-int/lit8 v11, v2, 0x2

    aget v11, v1, v11

    add-int/2addr v11, v3

    invoke-virtual {v4, v9, v10, v11, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_8

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v8, 0x2

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_9

    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_a

    new-instance v6, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v8, "monospace"

    invoke-direct {v6, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_b

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-direct {v6, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_c

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v6, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_c
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_d

    new-instance v6, Landroid/text/style/SubscriptSpan;

    invoke-direct {v6}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_d
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_e

    new-instance v6, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v6}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_e
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_f

    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_f
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_10

    new-instance v6, Landroid/text/style/BulletSpan;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v7, v2, 0x1

    aget v7, v1, v7

    add-int/lit8 v8, v2, 0x2

    aget v8, v1, v8

    add-int/2addr v8, v3

    invoke-static {v4, v6, v7, v8}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_10
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_11

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v7, v2, 0x1

    aget v7, v1, v7

    add-int/lit8 v8, v2, 0x2

    aget v8, v1, v8

    add-int/2addr v8, v3

    const/16 v9, 0x12

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_11
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmNoBreakId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    const/16 v8, 0x11

    if-ne v5, v6, :cond_12

    invoke-static {}, Landroid/text/style/LineBreakConfigSpan;->createNoBreakSpan()Landroid/text/style/LineBreakConfigSpan;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget v7, v1, v7

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v7, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_12
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmNoHyphenId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_13

    invoke-static {}, Landroid/text/style/LineBreakConfigSpan;->createNoHyphenationSpan()Landroid/text/style/LineBreakConfigSpan;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget v7, v1, v7

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v6, v7, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v6, p0

    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_13
    move-object/from16 v6, p0

    iget-wide v8, v6, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_14

    const/4 v3, 0x0

    return-object v3

    :cond_14
    const-string v9, "font;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, ";height="

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    new-instance v11, Landroid/content/res/StringBlock$Height;

    invoke-direct {v11, v10}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v12, v2, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v2, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v3

    invoke-static {v4, v11, v12, v13}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_15
    const-string v10, ";size="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    new-instance v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v11, v10, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v12, v2, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v2, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v3

    invoke-virtual {v4, v11, v12, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    const-string v10, ";fgcolor="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-static {v9, v3}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    const-string v10, ";color="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_18

    invoke-static {v9, v3}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    const-string v10, ";bgcolor="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_19
    const-string v10, ";face="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1a

    new-instance v10, Landroid/text/style/TypefaceSpan;

    invoke-direct {v10, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1a
    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_1b
    const-string v9, "a;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, ";href="

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v10, Landroid/text/style/URLSpan;

    invoke-direct {v10, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1c
    move-object/from16 v17, v0

    move v13, v3

    goto/16 :goto_8

    :cond_1d
    const-string v9, "annotation;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x3b

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    :goto_3
    if-ge v11, v9, :cond_20

    const/16 v12, 0x3d

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-gez v12, :cond_1e

    move-object/from16 v17, v0

    goto :goto_4

    :cond_1e
    invoke-virtual {v8, v10, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-gez v13, :cond_1f

    move v13, v9

    :cond_1f
    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v8, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    new-instance v10, Landroid/text/Annotation;

    invoke-direct {v10, v14, v15}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v2, 0x1

    aget v7, v1, v16

    add-int/lit8 v16, v2, 0x2

    aget v16, v1, v16

    move-object/from16 v17, v0

    add-int/lit8 v0, v16, 0x1

    const/16 v3, 0x21

    invoke-virtual {v4, v10, v7, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v11, v13

    move-object/from16 v0, v17

    const/4 v3, 0x1

    const/16 v7, 0x21

    const/16 v10, 0x3b

    goto :goto_3

    :cond_20
    move-object/from16 v17, v0

    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_21
    move-object/from16 v17, v0

    const-string/jumbo v0, "lineBreakConfig;"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, ";style="

    invoke-static {v8, v0}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    const-string v7, "AssetManager"

    const-string/jumbo v9, "none"

    if-eqz v0, :cond_26

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v3, 0x0

    goto :goto_5

    :cond_22
    const-string/jumbo v10, "normal"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v3, 0x2

    goto :goto_5

    :cond_23
    const-string/jumbo v10, "loose"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v3, 0x1

    goto :goto_5

    :cond_24
    const-string/jumbo v10, "strict"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    const/4 v3, 0x3

    goto :goto_5

    :cond_25
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown LineBreakConfig style: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_5
    const-string v10, ";wordStyle="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    if-eqz v10, :cond_29

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    const/4 v11, 0x0

    goto :goto_6

    :cond_27
    const-string/jumbo v9, "phrase"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    const/4 v11, 0x1

    goto :goto_6

    :cond_28
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown LineBreakConfig word style: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_6
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2b

    if-eq v11, v7, :cond_2a

    goto :goto_7

    :cond_2a
    const/4 v13, 0x1

    goto :goto_8

    :cond_2b
    :goto_7
    new-instance v9, Landroid/text/style/LineBreakConfigSpan;

    new-instance v12, Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v12, v3, v11, v7}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    invoke-direct {v9, v12}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    add-int/lit8 v7, v2, 0x1

    aget v7, v1, v7

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    const/16 v14, 0x21

    invoke-virtual {v4, v9, v7, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_2c
    const/4 v13, 0x1

    :goto_8
    nop

    add-int/lit8 v2, v2, 0x3

    move v3, v13

    move-object/from16 v0, v17

    goto/16 :goto_2

    :cond_2d
    move-object/from16 v17, v0

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static greylist-max-o getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 12

    const/high16 v0, -0x1000000

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz p1, :cond_0

    new-instance v11, Landroid/text/style/TextAppearanceSpan;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v11

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v11

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :cond_1
    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/high16 v0, -0x1000000

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v1

    :cond_4
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v1
.end method

.method private static native greylist-max-o nativeCreate([BII)J
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeGetSize(J)I
.end method

.method private static native greylist-max-o nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetStyle(JI)[I
.end method

.method private static greylist-max-o subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    throw v0
.end method

.method public greylist get(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public blacklist getSequence(I)Ljava/lang/CharSequence;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    goto :goto_0

    :cond_3
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xfa

    if-le v0, v1, :cond_4

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    goto :goto_0

    :cond_4
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    :goto_0
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    monitor-exit p0

    return-object v1

    :cond_5
    move-object v2, v0

    iget-wide v3, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v3, v4, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v3

    if-eqz v3, :cond_19

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v4, :cond_6

    new-instance v4, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v4}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_18

    aget v6, v3, v5

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_17

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-ne v6, v7, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-ne v6, v7, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_8
    iget-wide v7, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v7, v8, v6}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    monitor-exit p0

    return-object v1

    :cond_9
    const-string v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputboldId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    :cond_a
    const-string v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputitalicId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputunderlineId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v8, "tt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputttId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    :cond_d
    const-string v8, "big"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputbigId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v8, "small"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsmallId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v8, "sup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsupId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    :cond_10
    const-string/jumbo v8, "sub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsubId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    :cond_11
    const-string/jumbo v8, "strike"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputstrikeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    :cond_12
    const-string/jumbo v8, "li"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputlistItemId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    :cond_13
    const-string/jumbo v8, "marquee"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmarqueeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    :cond_14
    const-string/jumbo v8, "nobreak"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmNoBreakId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    :cond_15
    const-string/jumbo v8, "nohyphen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmNoHyphenId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    :cond_16
    const-string v8, "cst"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v4, 0x1

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;I)V

    :cond_17
    :goto_2
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_18
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v0, v3, v1, v4}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    :cond_19
    if-eqz v2, :cond_1b

    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v2, v1, p1

    goto :goto_3

    :cond_1a
    iget-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    :goto_3
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
