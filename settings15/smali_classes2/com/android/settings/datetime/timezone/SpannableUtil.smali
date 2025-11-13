.class public abstract Lcom/android/settings/datetime/timezone/SpannableUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TITLE_CASE_MAP:Landroid/icu/text/CaseMap$Title;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->sentences()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datetime/timezone/SpannableUtil;->TITLE_CASE_MAP:Landroid/icu/text/CaseMap$Title;

    return-void
.end method

.method public static varargs getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;
    .locals 5

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    aget-object v3, p2, v1

    instance-of v4, v3, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/settings/datetime/timezone/SpannableUtil$SpannableFormattable;

    check-cast v3, Landroid/text/Spannable;

    invoke-direct {v4, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil$SpannableFormattable;-><init>(Landroid/text/Spannable;)V

    aput-object v4, p2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-object v2
.end method

.method public static isAdditionalSign(C)Z
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0xb01

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb02

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb03

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb56

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb57

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x957

    const/16 v4, 0x951

    if-eqz v0, :cond_4

    if-lt p0, v4, :cond_3

    if-gt p0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    if-lt p0, v4, :cond_5

    if-gt p0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isJoiningCharacter(C)Z
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "or"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->isMatra(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->isAdditionalSign(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hi"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x93c

    const/16 v4, 0x93d

    const/16 v5, 0x963

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->isMatra(C)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->isAdditionalSign(C)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_4

    if-eq p0, v5, :cond_4

    if-eq p0, v4, :cond_4

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    :cond_5
    invoke-static {p0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->isMatra(C)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->isAdditionalSign(C)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_7

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_7

    if-ne p0, v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :cond_7
    :goto_2
    return v1
.end method

.method public static isMatra(C)Z
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xb3c

    if-lt p0, v0, :cond_0

    const/16 v0, 0xb4d

    if-gt p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x94d

    const/16 v4, 0x93e

    if-eqz v0, :cond_3

    if-lt p0, v4, :cond_2

    if-gt p0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-lt p0, v4, :cond_4

    if-gt p0, v3, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public static isVowel(C)Z
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x904

    const/16 v4, 0x901

    if-eqz v0, :cond_1

    if-lt p0, v4, :cond_0

    if-gt p0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-lt p0, v4, :cond_2

    if-gt p0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static titleCaseSentences(Ljava/util/Locale;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 14

    sget-object v0, Lcom/android/settings/datetime/timezone/SpannableUtil;->TITLE_CASE_MAP:Landroid/icu/text/CaseMap$Title;

    check-cast p1, Landroid/text/Spannable;

    new-instance v6, Landroid/icu/text/Edits;

    invoke-direct {v6}, Landroid/icu/text/Edits;-><init>()V

    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, v13

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    invoke-virtual {v6}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Landroid/icu/text/Edits;->getCoarseChangesIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v2

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v3

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v4

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v8, v0, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    add-int v9, v8, v1

    const/4 v1, 0x2

    aget v11, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    add-int v12, v11, v0

    move-object v7, p0

    move-object v10, v13

    invoke-virtual/range {v7 .. v12}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_2
    move-object p1, p0

    :goto_2
    return-object p1
.end method
