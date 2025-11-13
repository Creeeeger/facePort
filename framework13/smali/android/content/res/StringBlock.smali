.class public final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private final greylist-max-o mNative:J

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
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 605
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 606
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 610
    return-void
.end method

.method public constructor greylist-max-o <init>([BIIZ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 90
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 91
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 92
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 95
    return-void
.end method

.method public constructor greylist-max-o <init>([BZ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 82
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 83
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 84
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 87
    return-void
.end method

.method private static greylist-max-o addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 483
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 485
    .local v0, "len":I
    const/16 v1, 0xa

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    .line 486
    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1

    .line 487
    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    .line 493
    :cond_1
    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_3

    .line 494
    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v0, :cond_3

    .line 495
    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    .line 501
    :cond_3
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 502
    return-void
.end method

.method private blacklist applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;
    .locals 18
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;
    .param p4, "hasCustomizedString"    # Z

    .line 248
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v1

    if-nez v2, :cond_0

    .line 249
    return-object v0

    .line 251
    :cond_0
    const/4 v2, 0x0

    .line 252
    .local v2, "i":I
    const/4 v3, 0x1

    if-eqz p4, :cond_6

    .line 253
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 254
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_5

    .line 255
    aget v5, v1, v2

    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 256
    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    add-int/lit8 v6, v2, 0x2

    aget v6, v1, v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "originalString":Ljava/lang/String;
    invoke-static {v5}, Landroid/content/res/AssetManager;->getCustomizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "customizedString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 261
    .local v7, "distance":I
    if-nez v6, :cond_1

    .line 262
    move-object v6, v5

    .line 264
    :cond_1
    add-int/lit8 v8, v2, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v8, v9, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 266
    .end local v7    # "distance":I
    .local v8, "distance":I
    const/4 v7, 0x0

    .line 267
    .local v7, "j":I
    :goto_1
    array-length v9, v1

    if-ge v7, v9, :cond_4

    .line 268
    if-eq v2, v7, :cond_3

    .line 269
    add-int/lit8 v9, v7, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v2, 0x2

    aget v10, v1, v10

    if-lt v9, v10, :cond_2

    .line 270
    add-int/lit8 v9, v7, 0x1

    aget v10, v1, v9

    add-int/2addr v10, v8

    aput v10, v1, v9

    .line 272
    :cond_2
    add-int/lit8 v9, v7, 0x2

    aget v9, v1, v9

    add-int/lit8 v10, v2, 0x2

    aget v10, v1, v10

    if-lt v9, v10, :cond_3

    .line 273
    add-int/lit8 v9, v7, 0x2

    aget v10, v1, v9

    add-int/2addr v10, v8

    aput v10, v1, v9

    .line 276
    :cond_3
    add-int/lit8 v7, v7, 0x3

    goto :goto_1

    .line 279
    .end local v5    # "originalString":Ljava/lang/String;
    .end local v6    # "customizedString":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v8    # "distance":I
    :cond_4
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 281
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local p1    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    :cond_6
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 287
    .local v4, "buffer":Landroid/text/SpannableString;
    const/4 v2, 0x0

    .line 288
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_20

    .line 289
    aget v5, v1, v2

    .line 294
    .local v5, "type":I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    const/16 v7, 0x21

    if-ne v5, v6, :cond_7

    .line 295
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    .line 296
    .local v6, "application":Landroid/app/Application;
    nop

    .line 297
    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 298
    .local v8, "fontWeightAdjustment":I
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v3, v8}, Landroid/text/style/StyleSpan;-><init>(II)V

    add-int/lit8 v10, v2, 0x1

    aget v10, v1, v10

    add-int/lit8 v11, v2, 0x2

    aget v11, v1, v11

    add-int/2addr v11, v3

    invoke-virtual {v4, v9, v10, v11, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 301
    .end local v6    # "application":Landroid/app/Application;
    .end local v8    # "fontWeightAdjustment":I
    move-object/from16 v6, p0

    move-object/from16 v17, v0

    goto/16 :goto_4

    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_8

    .line 302
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

    goto/16 :goto_4

    .line 305
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 306
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

    goto/16 :goto_4

    .line 309
    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 310
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

    goto/16 :goto_4

    .line 313
    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 314
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

    goto/16 :goto_4

    .line 317
    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_c

    .line 318
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

    goto/16 :goto_4

    .line 321
    :cond_c
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 322
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

    goto/16 :goto_4

    .line 325
    :cond_d
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_e

    .line 326
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

    goto/16 :goto_4

    .line 329
    :cond_e
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_f

    .line 330
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

    goto/16 :goto_4

    .line 333
    :cond_f
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_10

    .line 334
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

    goto/16 :goto_4

    .line 336
    :cond_10
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_11

    .line 337
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

    goto/16 :goto_4

    .line 341
    :cond_11
    move-object/from16 v6, p0

    iget-wide v8, v6, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "tag":Ljava/lang/String;
    if-nez v8, :cond_12

    .line 343
    const/4 v3, 0x0

    return-object v3

    .line 346
    :cond_12
    const-string v9, "font;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 349
    const-string v9, ";height="

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "sub":Ljava/lang/String;
    if-eqz v9, :cond_13

    .line 351
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 352
    .local v10, "size":I
    new-instance v11, Landroid/content/res/StringBlock$Height;

    invoke-direct {v11, v10}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v12, v2, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v2, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v3

    invoke-static {v4, v11, v12, v13}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 356
    .end local v10    # "size":I
    :cond_13
    const-string v10, ";size="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 357
    if-eqz v9, :cond_14

    .line 358
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 359
    .restart local v10    # "size":I
    new-instance v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v11, v10, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v12, v2, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v2, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v3

    invoke-virtual {v4, v11, v12, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 364
    .end local v10    # "size":I
    :cond_14
    const-string v10, ";fgcolor="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 365
    if-eqz v9, :cond_15

    .line 366
    invoke-static {v9, v3}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 371
    :cond_15
    const-string v10, ";color="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 372
    if-eqz v9, :cond_16

    .line 373
    invoke-static {v9, v3}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 378
    :cond_16
    const-string v10, ";bgcolor="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 379
    if-eqz v9, :cond_17

    .line 380
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 385
    :cond_17
    const-string v10, ";face="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 386
    if-eqz v9, :cond_18

    .line 387
    new-instance v10, Landroid/text/style/TypefaceSpan;

    invoke-direct {v10, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 391
    .end local v9    # "sub":Ljava/lang/String;
    :cond_18
    move-object/from16 v17, v0

    goto/16 :goto_4

    :cond_19
    const-string v9, "a;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 394
    const-string v9, ";href="

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 395
    .restart local v9    # "sub":Ljava/lang/String;
    if-eqz v9, :cond_1a

    .line 396
    new-instance v10, Landroid/text/style/URLSpan;

    invoke-direct {v10, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v2, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v2, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v3

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 400
    .end local v9    # "sub":Ljava/lang/String;
    :cond_1a
    move-object/from16 v17, v0

    goto :goto_4

    :cond_1b
    const-string v9, "annotation;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 401
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 404
    .local v9, "len":I
    const/16 v10, 0x3b

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, "t":I
    :goto_3
    if-ge v11, v9, :cond_1e

    .line 405
    const/16 v12, 0x3d

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 406
    .local v12, "eq":I
    if-gez v12, :cond_1c

    .line 407
    move-object/from16 v17, v0

    goto :goto_4

    .line 410
    :cond_1c
    invoke-virtual {v8, v10, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 411
    .local v13, "next":I
    if-gez v13, :cond_1d

    .line 412
    move v13, v9

    .line 415
    :cond_1d
    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 416
    .local v14, "key":Ljava/lang/String;
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v8, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, "value":Ljava/lang/String;
    new-instance v10, Landroid/text/Annotation;

    invoke-direct {v10, v14, v15}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v2, 0x1

    aget v7, v1, v16

    add-int/lit8 v16, v2, 0x2

    aget v16, v1, v16

    move-object/from16 v17, v0

    .end local v0    # "str":Ljava/lang/String;
    .local v17, "str":Ljava/lang/String;
    add-int/lit8 v0, v16, 0x1

    const/16 v3, 0x21

    invoke-virtual {v4, v10, v7, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 404
    .end local v12    # "eq":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    move v11, v13

    move v7, v3

    move-object/from16 v0, v17

    const/4 v3, 0x1

    const/16 v10, 0x3b

    goto :goto_3

    .end local v13    # "next":I
    .end local v17    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1e
    move-object/from16 v17, v0

    .end local v0    # "str":Ljava/lang/String;
    .restart local v17    # "str":Ljava/lang/String;
    goto :goto_4

    .line 400
    .end local v9    # "len":I
    .end local v11    # "t":I
    .end local v17    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1f
    move-object/from16 v17, v0

    .line 425
    .end local v0    # "str":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .restart local v17    # "str":Ljava/lang/String;
    :goto_4
    nop

    .end local v5    # "type":I
    add-int/lit8 v2, v2, 0x3

    .line 426
    move-object/from16 v0, v17

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 427
    .end local v17    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_20
    move-object/from16 v17, v0

    .end local v0    # "str":Ljava/lang/String;
    .restart local v17    # "str":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static greylist-max-o getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 12
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .line 445
    const/high16 v0, -0x1000000

    .line 447
    .local v0, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 448
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 450
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "name":Ljava/lang/String;
    const-string v3, "color"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 452
    .local v3, "colorRes":I
    if-eqz v3, :cond_1

    .line 453
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 454
    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_0

    .line 455
    new-instance v11, Landroid/text/style/TextAppearanceSpan;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v11

    .line 457
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 460
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "colorRes":I
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    :cond_1
    goto :goto_0

    .line 462
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 465
    goto :goto_0

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/high16 v0, -0x1000000

    .line 469
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 470
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v1

    .line 472
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
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 505
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 506
    .local v0, "start":I
    if-gez v0, :cond_0

    .line 507
    const/4 v1, 0x0

    return-object v1

    .line 510
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 513
    .local v1, "end":I
    if-gez v1, :cond_1

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 516
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 224
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    .line 225
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 228
    :cond_0
    monitor-exit p0

    .line 229
    return-void

    .line 228
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

    .line 212
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    .line 215
    throw v0
.end method

.method public greylist get(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "idx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 105
    .local v0, "seq":Ljava/lang/CharSequence;
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
    .param p1, "idx"    # I

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 112
    aget-object v0, v0, p1

    .line 113
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 114
    monitor-exit p0

    return-object v0

    .line 116
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 118
    .restart local v0    # "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 119
    monitor-exit p0

    return-object v0

    .line 121
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_2
    goto :goto_0

    .line 122
    :cond_3
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    .line 123
    .local v0, "num":I
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xfa

    if-le v0, v1, :cond_4

    .line 124
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    goto :goto_0

    .line 126
    :cond_4
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    .line 129
    .end local v0    # "num":I
    :goto_0
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 131
    monitor-exit p0

    return-object v1

    .line 133
    :cond_5
    move-object v2, v0

    .line 134
    .local v2, "res":Ljava/lang/CharSequence;
    iget-wide v3, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v3, v4, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v3

    .line 137
    .local v3, "style":[I
    if-eqz v3, :cond_17

    .line 138
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v4, :cond_6

    .line 139
    new-instance v4, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v4}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 142
    :cond_6
    const/4 v4, 0x0

    .line 146
    .local v4, "hasCustomizedString":Z
    const/4 v5, 0x0

    .local v5, "styleIndex":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_16

    .line 147
    aget v6, v3, v5

    .line 149
    .local v6, "styleId":I
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 156
    goto/16 :goto_2

    .line 160
    :cond_7
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 161
    const/4 v4, 0x1

    .line 162
    goto/16 :goto_2

    .line 166
    :cond_8
    iget-wide v7, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v7, v8, v6}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "styleTag":Ljava/lang/String;
    if-nez v7, :cond_9

    .line 168
    monitor-exit p0

    return-object v1

    .line 171
    :cond_9
    const-string v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 172
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputboldId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    .line 173
    :cond_a
    const-string v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 174
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputitalicId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    .line 175
    :cond_b
    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 176
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputunderlineId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    .line 177
    :cond_c
    const-string/jumbo v8, "tt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 178
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputttId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    .line 179
    :cond_d
    const-string v8, "big"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 180
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputbigId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    .line 181
    :cond_e
    const-string/jumbo v8, "small"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 182
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsmallId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    .line 183
    :cond_f
    const-string/jumbo v8, "sup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 184
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsupId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    .line 185
    :cond_10
    const-string/jumbo v8, "sub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 186
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsubId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    .line 187
    :cond_11
    const-string/jumbo v8, "strike"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 188
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputstrikeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    .line 189
    :cond_12
    const-string v8, "li"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 190
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputlistItemId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    .line 191
    :cond_13
    const-string/jumbo v8, "marquee"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 192
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmarqueeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_2

    .line 193
    :cond_14
    const-string v8, "cst"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 194
    const/4 v4, 0x1

    .line 195
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;I)V

    .line 146
    .end local v6    # "styleId":I
    .end local v7    # "styleTag":Ljava/lang/String;
    :cond_15
    :goto_2
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    .line 199
    .end local v5    # "styleIndex":I
    :cond_16
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v0, v3, v1, v4}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    .line 201
    .end local v4    # "hasCustomizedString":Z
    :cond_17
    if-eqz v2, :cond_19

    .line 202
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_18

    aput-object v2, v1, p1

    goto :goto_3

    .line 203
    :cond_18
    iget-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    :cond_19
    :goto_3
    monitor-exit p0

    return-object v2

    .line 206
    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "res":Ljava/lang/CharSequence;
    .end local v3    # "style":[I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
