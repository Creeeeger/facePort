.class Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceLevelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    }
.end annotation


# static fields
.field public static final greylist-max-o EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

.field private static final greylist-max-o EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;


# instance fields
.field private final greylist-max-o mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetSplitWords(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    new-instance v1, Landroid/view/textservice/SuggestionsInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method private greylist-max-o getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v4}, Landroid/text/method/WordIterator;->following(I)I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_0

    move v4, v13

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v4

    :goto_0
    move v14, v3

    move v15, v4

    :goto_1
    if-gt v15, v11, :cond_3

    if-eq v14, v13, :cond_3

    if-eq v15, v13, :cond_3

    if-ltz v14, :cond_1

    if-le v14, v15, :cond_1

    invoke-interface {v2, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    new-instance v17, Landroid/view/textservice/TextInfo;

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->hashCode()I

    move-result v8

    const/4 v5, 0x0

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move v7, v9

    invoke-direct/range {v3 .. v8}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    new-instance v4, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    invoke-direct {v4, v3, v15, v14}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v14}, Landroid/text/method/WordIterator;->following(I)I

    move-result v14

    if-ne v14, v13, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v14}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v15

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v3, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v12}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public static greylist-max-o reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v0}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v0

    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v1}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v1

    iget v2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [Landroid/view/textservice/SuggestionsInfo;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_5

    iget-object v7, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    array-length v10, p1

    if-ge v9, v10, :cond_3

    aget-object v10, p1, v9

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v11

    iget-object v12, v7, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v12}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v12

    if-ne v11, v12, :cond_2

    move-object v8, v10

    invoke-virtual {v8, v0, v1}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v9, v7, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    aput v9, v3, v6

    iget v9, v7, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    aput v9, v4, v6

    if-eqz v8, :cond_4

    move-object v9, v8

    goto :goto_3

    :cond_4
    sget-object v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    :goto_3
    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    new-instance v6, Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-direct {v6, v5, v3, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    return-object v6

    :cond_6
    :goto_4
    return-object v0
.end method
