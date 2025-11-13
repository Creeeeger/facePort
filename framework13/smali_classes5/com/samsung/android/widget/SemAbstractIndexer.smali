.class public abstract Lcom/samsung/android/widget/SemAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "SemAbstractIndexer.java"


# static fields
.field private static final blacklist DIGIT_CHAR:C = '#'

.field public static final blacklist FAVORITE_CHAR:C = '\u2605'

.field private static final blacklist GROUP_CHAR:Ljava/lang/String; = "\ud83d\udc65\ufe0e"

.field private static final blacklist GROUP_CHECKER:C = '\ud83d'

.field protected static final blacklist INDEXSCROLL_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"

.field protected static final blacklist INDEXSCROLL_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"

.field private static final blacklist SYMBOL_BASE_CHAR:C = '!'

.field private static final blacklist SYMBOL_CHAR:C = '&'


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private final blacklist debug:Z

.field protected blacklist mAlphaMap:Landroid/util/SparseIntArray;

.field protected blacklist mAlphabet:Ljava/lang/CharSequence;

.field protected blacklist mAlphabetArray:[Ljava/lang/String;

.field protected blacklist mAlphabetLength:I

.field private blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mCachingValue:[I

.field protected blacklist mCollator:Ljava/text/Collator;

.field private blacklist mCurrentLang:I

.field private final blacklist mDataSetObservable:Landroid/database/DataSetObservable;

.field private blacklist mDigitItemCount:I

.field private blacklist mFavoriteItemCount:I

.field private blacklist mGroupItemCount:I

.field protected blacklist mLangAlphabetArray:[Ljava/lang/String;

.field private blacklist mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProfileItemCount:I

.field private blacklist mRegisteredDataSetObservable:Z

.field private blacklist mUseDigitIndex:Z

.field private blacklist mUseFavoriteIndex:Z

.field private blacklist mUseGroupIndex:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;

    .line 130
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 53
    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    .line 56
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 57
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 58
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    .line 59
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 72
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 316
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 131
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 132
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 133
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;
    .param p2, "profileCount"    # I
    .param p3, "favoriteCount"    # I

    .line 166
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 53
    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    .line 56
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 57
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 58
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    .line 59
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 72
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 168
    iput p2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 169
    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;I)V
    .locals 2
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I

    .line 146
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 53
    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    .line 56
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 57
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 58
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    .line 59
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 72
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 316
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 147
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 148
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 149
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 150
    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    .line 152
    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;III)V
    .locals 2
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I
    .param p3, "profileCount"    # I
    .param p4, "favoriteCount"    # I

    .line 186
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 53
    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    .line 56
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 57
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 58
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    .line 59
    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 72
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 188
    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 189
    iput p4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 190
    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 191
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    .line 192
    return-void
.end method

.method private blacklist getBundleInfo()V
    .locals 9

    .line 534
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "sections":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v2, "indexscroll_index_counts"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 536
    .local v1, "counts":[I
    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 537
    .local v2, "basePosition":I
    const/4 v3, 0x0

    .line 539
    .local v3, "baseSectionIndex":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    iget v5, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v4, v5, :cond_5

    .line 540
    iget-object v5, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 543
    .local v5, "targetChar":C
    iget-object v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aput v2, v6, v4

    .line 545
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get index info from bundle ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SemAbstractIndexer"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v6, 0x2605

    if-ne v5, v6, :cond_0

    .line 549
    iget v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v2, v6

    goto :goto_1

    .line 550
    :cond_0
    const v6, 0xd83d

    if-ne v5, v6, :cond_1

    .line 551
    iget v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    add-int/2addr v2, v6

    .line 554
    :cond_1
    :goto_1
    move v6, v3

    .local v6, "sectionIndex":I
    :goto_2
    array-length v7, v0

    const/4 v8, 0x0

    if-ge v6, v7, :cond_3

    .line 555
    aget-object v7, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_2

    .line 556
    aget v7, v1, v6

    add-int/2addr v2, v7

    .line 557
    move v3, v6

    .line 558
    goto :goto_3

    .line 554
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 562
    .end local v6    # "sectionIndex":I
    :cond_3
    :goto_3
    const-string v6, "#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_4

    .line 563
    iget-object v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    sub-int/2addr v7, v8

    aput v7, v6, v4

    .line 539
    .end local v5    # "targetChar":C
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 566
    .end local v4    # "index":I
    :cond_5
    return-void
.end method

.method private blacklist getPositionForString(Ljava/lang/String;)I
    .locals 17
    .param p1, "searchString"    # Ljava/lang/String;

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 416
    .local v2, "alphaMap":Landroid/util/SparseIntArray;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v3

    .line 418
    .local v3, "count":I
    const/4 v4, 0x0

    if-eqz v3, :cond_17

    iget-object v5, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 422
    :cond_0
    if-eqz v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_7

    .line 426
    :cond_1
    const/4 v5, 0x0

    .line 427
    .local v5, "start":I
    move v6, v3

    .line 429
    .local v6, "end":I
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 430
    .local v7, "letter":C
    move-object/from16 v8, p1

    .line 431
    .local v8, "targetLetter":Ljava/lang/String;
    move v9, v7

    .line 433
    .local v9, "key":I
    const/high16 v10, -0x80000000

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    move v12, v11

    .local v12, "pos":I
    const/4 v13, 0x1

    if-eq v10, v11, :cond_2

    .line 437
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_0

    .line 441
    :cond_2
    iget-object v11, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 443
    .local v11, "sectionIndex":I
    if-lez v11, :cond_3

    iget-object v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v15, v11, -0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-le v9, v14, :cond_3

    .line 444
    iget-object v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v15, v11, -0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 445
    .local v14, "prevLetter":I
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 446
    .local v15, "prevLetterPos":I
    if-eq v15, v10, :cond_3

    .line 447
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 453
    .end local v14    # "prevLetter":I
    .end local v15    # "prevLetterPos":I
    :cond_3
    iget-object v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    sub-int/2addr v14, v13

    if-ge v11, v14, :cond_4

    iget-object v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v15, v11, 0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ge v9, v14, :cond_4

    .line 454
    iget-object v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v15, v11, 0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 455
    .local v14, "nextLetter":I
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 456
    .local v15, "nextLetterPos":I
    if-eq v15, v10, :cond_4

    .line 457
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 461
    .end local v11    # "sectionIndex":I
    .end local v14    # "nextLetter":I
    .end local v15    # "nextLetterPos":I
    :cond_4
    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 464
    .local v4, "targetChar":C
    const/16 v10, 0x26

    if-ne v4, v10, :cond_5

    .line 465
    const-string v8, "!"

    .line 467
    :cond_5
    const/16 v11, 0x2605

    if-ne v4, v11, :cond_6

    .line 468
    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    if-ge v5, v14, :cond_8

    .line 469
    iget v5, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    goto :goto_1

    .line 471
    :cond_6
    const v14, 0xd83d

    if-ne v4, v14, :cond_7

    .line 472
    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iget v15, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int v13, v14, v15

    if-ge v5, v13, :cond_8

    .line 473
    add-int v5, v14, v15

    goto :goto_1

    .line 476
    :cond_7
    iget v13, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int v15, v13, v14

    iget v10, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    add-int/2addr v15, v10

    if-ge v5, v15, :cond_8

    .line 477
    add-int/2addr v13, v14

    add-int v5, v13, v10

    .line 481
    :cond_8
    :goto_1
    iget v10, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    sub-int/2addr v6, v10

    .line 482
    const/16 v10, 0x23

    if-ne v4, v10, :cond_9

    .line 483
    move v5, v6

    .line 486
    :cond_9
    add-int v13, v6, v5

    div-int/lit8 v13, v13, 0x2

    .line 487
    .end local v12    # "pos":I
    .local v13, "pos":I
    :goto_2
    if-lt v13, v5, :cond_14

    if-ge v13, v6, :cond_14

    .line 489
    invoke-virtual {v0, v13}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    .line 490
    .local v12, "curName":Ljava/lang/String;
    if-eqz v12, :cond_12

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v15, 0x26

    goto :goto_5

    .line 498
    :cond_a
    invoke-virtual {v0, v12, v8}, Lcom/samsung/android/widget/SemAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 499
    .local v14, "diff":I
    if-eq v4, v11, :cond_b

    const/16 v15, 0x26

    if-eq v4, v15, :cond_c

    if-ne v4, v10, :cond_d

    goto :goto_3

    :cond_b
    const/16 v15, 0x26

    .line 500
    :cond_c
    :goto_3
    const/4 v14, 0x1

    .line 502
    :cond_d
    if-eqz v14, :cond_f

    .line 503
    if-gez v14, :cond_e

    .line 504
    add-int/lit8 v5, v13, 0x1

    .line 505
    if-lt v5, v3, :cond_11

    .line 506
    move v13, v3

    .line 507
    goto :goto_6

    .line 510
    :cond_e
    move v6, v13

    goto :goto_4

    .line 514
    :cond_f
    if-ne v5, v13, :cond_10

    .line 516
    goto :goto_6

    .line 519
    :cond_10
    move v6, v13

    .line 522
    :cond_11
    :goto_4
    add-int v16, v5, v6

    div-int/lit8 v13, v16, 0x2

    .line 523
    .end local v12    # "curName":Ljava/lang/String;
    .end local v14    # "diff":I
    goto :goto_2

    .line 490
    .restart local v12    # "curName":Ljava/lang/String;
    :cond_12
    const/16 v15, 0x26

    .line 491
    :goto_5
    if-gt v13, v5, :cond_13

    .line 492
    goto :goto_6

    .line 494
    :cond_13
    add-int/lit8 v13, v13, -0x1

    .line 495
    goto :goto_2

    .line 524
    .end local v12    # "curName":Ljava/lang/String;
    :cond_14
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    .line 525
    invoke-virtual {v2, v9, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 527
    :cond_15
    return v13

    .line 423
    .end local v4    # "targetChar":C
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "letter":C
    .end local v8    # "targetLetter":Ljava/lang/String;
    .end local v9    # "key":I
    .end local v13    # "pos":I
    :cond_16
    :goto_7
    return v3

    .line 419
    :cond_17
    :goto_8
    return v4
.end method

.method private blacklist initIndexer(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "alphabet"    # Ljava/lang/CharSequence;

    .line 345
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 349
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    .line 350
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    .line 351
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_1

    .line 354
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83d

    if-ne v1, v2, :cond_0

    .line 355
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const-string/jumbo v2, "\ud83d\udc65\ufe0e"

    aput-object v2, v1, v0

    goto :goto_1

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 353
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 363
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    .line 364
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 365
    return-void

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid indexString :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist cacheIndexInfo()V
    .locals 5

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    .line 390
    if-eqz v0, :cond_1

    const-string v1, "indexscroll_index_titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    .line 391
    const-string v1, "indexscroll_index_counts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundleInfo()V

    .line 393
    return-void

    .line 396
    :cond_1
    const-string v0, ""

    .line 397
    .local v0, "baseString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onBeginTransaction()V

    .line 398
    const/4 v1, 0x0

    .local v1, "sectionIndex":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v1, v2, :cond_2

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "searchString":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->getPositionForString(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 398
    .end local v2    # "searchString":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "sectionIndex":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onEndTransaction()V

    .line 403
    return-void

    .line 386
    .end local v0    # "baseString":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method protected blacklist compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "indexString"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method blacklist getAlphabetArray()[Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract blacklist getBundle()Landroid/os/Bundle;
.end method

.method public blacklist getCachingValue(I)I
    .locals 1
    .param p1, "index"    # I

    .line 209
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aget v0, v0, p1

    return v0

    .line 210
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCurrentLang()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method protected abstract blacklist getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract blacklist getItemCount()I
.end method

.method public blacklist getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLangbyIndex(I)I
    .locals 2
    .param p1, "aIndex"    # I

    .line 333
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 335
    .local v0, "lIndexVal":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 339
    .end local v0    # "lIndexVal":Ljava/lang/Integer;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract blacklist isDataToBeIndexedAvailable()Z
.end method

.method public blacklist isUseDigitIndex()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    return v0
.end method

.method protected blacklist onBeginTransaction()V
    .locals 0

    .line 625
    return-void
.end method

.method public whitelist onChanged()V
    .locals 1

    .line 574
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 575
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 576
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 577
    return-void
.end method

.method protected blacklist onEndTransaction()V
    .locals 0

    .line 631
    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 1

    .line 584
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 585
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 586
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 587
    return-void
.end method

.method public blacklist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 599
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    goto :goto_0

    .line 603
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Observer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already registered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemAbstractIndexer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    return-void
.end method

.method public blacklist setDigitItem(I)V
    .locals 1
    .param p1, "count"    # I

    .line 297
    if-ltz p1, :cond_0

    .line 298
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 300
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public blacklist setFavoriteItem(I)V
    .locals 1
    .param p1, "count"    # I

    .line 271
    if-ltz p1, :cond_0

    .line 272
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 274
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    .line 276
    :cond_0
    return-void
.end method

.method public blacklist setGroupItem(I)V
    .locals 1
    .param p1, "count"    # I

    .line 284
    if-ltz p1, :cond_0

    .line 285
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    .line 287
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    .line 289
    :cond_0
    return-void
.end method

.method public blacklist setMultiLangIndexer(I)V
    .locals 6
    .param p1, "aLangIndex"    # I

    .line 223
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 226
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    const/16 v1, 0x26

    if-eqz v0, :cond_1

    .line 227
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    const/16 v2, 0x2605

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0xd83d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "indexerString":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    .end local v0    # "indexerString":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v0    # "indexerString":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 234
    .end local v0    # "indexerString":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v0    # "indexerString":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v1, 0x0

    .local v1, "langIndex":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 240
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 241
    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 238
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    if-eqz v2, :cond_4

    .line 247
    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public blacklist setProfileItem(I)V
    .locals 0
    .param p1, "count"    # I

    .line 260
    if-ltz p1, :cond_0

    .line 261
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 263
    :cond_0
    return-void
.end method

.method public blacklist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 613
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    goto :goto_0

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Observer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not registered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemAbstractIndexer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void
.end method
