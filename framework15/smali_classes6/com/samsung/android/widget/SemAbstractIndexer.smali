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

.field private static final blacklist debug:Z


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

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

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;II)V
    .locals 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput p2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput p4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    return-void
.end method

.method private blacklist getBundleInfo()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v2, "indexscroll_index_counts"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aput v2, v6, v4

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

    const/16 v6, 0x2605

    if-ne v5, v6, :cond_0

    iget v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v2, v6

    goto :goto_1

    :cond_0
    const v6, 0xd83d

    if-ne v5, v6, :cond_1

    iget v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    add-int/2addr v2, v6

    :cond_1
    :goto_1
    move v6, v3

    :goto_2
    array-length v7, v0

    const/4 v8, 0x0

    if-ge v6, v7, :cond_3

    aget-object v7, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_2

    aget v7, v1, v6

    add-int/2addr v2, v7

    move v3, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string v6, "#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    sub-int/2addr v7, v8

    aput v7, v6, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private blacklist getPositionForString(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_16

    iget-object v5, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v5, 0x0

    move v6, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v8, p1

    move v9, v7

    const/high16 v10, -0x80000000

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    move v12, v11

    const/4 v13, 0x1

    if-eq v10, v11, :cond_2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_0

    :cond_2
    iget-object v11, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-lez v11, :cond_3

    iget-object v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v15, v11, -0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-le v9, v14, :cond_3

    iget-object v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v15, v11, -0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-virtual {v2, v14, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    if-eq v15, v10, :cond_3

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v5

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

    iget-object v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v15, v11, 0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-virtual {v2, v14, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    if-eq v15, v10, :cond_4

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v6

    :cond_4
    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v10, 0x26

    if-ne v4, v10, :cond_5

    const-string v8, "!"

    :cond_5
    const/16 v11, 0x2605

    if-ne v4, v11, :cond_6

    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    if-ge v5, v14, :cond_8

    iget v5, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    goto :goto_1

    :cond_6
    const v14, 0xd83d

    if-ne v4, v14, :cond_7

    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iget v15, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v14, v15

    if-ge v5, v14, :cond_8

    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iget v15, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int v5, v14, v15

    goto :goto_1

    :cond_7
    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iget v15, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v14, v15

    iget v15, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    add-int/2addr v14, v15

    if-ge v5, v14, :cond_8

    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iget v15, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v14, v15

    iget v15, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    add-int v5, v14, v15

    :cond_8
    :goto_1
    iget v14, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    sub-int/2addr v6, v14

    const/16 v14, 0x23

    if-ne v4, v14, :cond_9

    move v5, v6

    :cond_9
    add-int v15, v6, v5

    div-int/lit8 v15, v15, 0x2

    :goto_2
    if-lt v15, v5, :cond_13

    if-ge v15, v6, :cond_13

    invoke-virtual {v0, v15}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v12, v8}, Lcom/samsung/android/widget/SemAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-eq v4, v11, :cond_b

    if-eq v4, v10, :cond_b

    if-ne v4, v14, :cond_c

    :cond_b
    const/4 v13, 0x1

    :cond_c
    if-eqz v13, :cond_e

    if-gez v13, :cond_d

    add-int/lit8 v5, v15, 0x1

    if-lt v5, v3, :cond_10

    move v15, v3

    goto :goto_5

    :cond_d
    move v6, v15

    goto :goto_3

    :cond_e
    if-ne v5, v15, :cond_f

    goto :goto_5

    :cond_f
    move v6, v15

    :cond_10
    :goto_3
    add-int v16, v5, v6

    div-int/lit8 v15, v16, 0x2

    const/4 v13, 0x1

    goto :goto_2

    :cond_11
    :goto_4
    if-gt v15, v5, :cond_12

    goto :goto_5

    :cond_12
    add-int/lit8 v15, v15, -0x1

    const/4 v13, 0x1

    goto :goto_2

    :cond_13
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    invoke-virtual {v2, v9, v15}, Landroid/util/SparseIntArray;->put(II)V

    :cond_14
    return v15

    :cond_15
    :goto_6
    return v3

    :cond_16
    :goto_7
    return v4
.end method

.method private blacklist initIndexer(Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83d

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const-string v2, "\ud83d\udc65\ufe0e"

    aput-object v2, v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void

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

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_counts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundleInfo()V

    return-void

    :cond_1
    const-string v0, ""

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onBeginTransaction()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v1, v2, :cond_2

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

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->getPositionForString(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onEndTransaction()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected blacklist compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method blacklist getAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract blacklist getBundle()Landroid/os/Bundle;
.end method

.method public blacklist getCachingValue(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aget v0, v0, p1

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCurrentLang()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method protected abstract blacklist getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract blacklist getItemCount()I
.end method

.method public blacklist getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLangbyIndex(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract blacklist isDataToBeIndexedAvailable()Z
.end method

.method public blacklist isUseDigitIndex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    return v0
.end method

.method protected blacklist onBeginTransaction()V
    .locals 0

    return-void
.end method

.method public whitelist onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method protected blacklist onEndTransaction()V
    .locals 0

    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public blacklist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    goto :goto_0

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

    :goto_0
    return-void
.end method

.method public blacklist setDigitItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public blacklist setFavoriteItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public blacklist setGroupItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public blacklist setMultiLangIndexer(I)V
    .locals 6

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    const/16 v1, 0x26

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    const/16 v2, 0x2605

    if-eqz v0, :cond_0

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

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

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

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist setProfileItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    :cond_0
    return-void
.end method

.method public blacklist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    goto :goto_0

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

    :goto_0
    return-void
.end method
