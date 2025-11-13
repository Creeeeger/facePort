.class public final Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
.super Ljava/lang/Object;
.source "LocaleHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist PREFIX_ARABIC:Ljava/lang/String; = "\u0627\u0644"


# instance fields
.field private final blacklist mCollator:Ljava/text/Collator;

.field private final blacklist mCountryMode:Z

.field private final blacklist mUseSecSuggestion:Z


# direct methods
.method public constructor greylist <init>(Ljava/util/Locale;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Locale;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCollator:Ljava/text/Collator;

    iput-boolean p2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    iput-boolean p3, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mUseSecSuggestion:Z

    return-void
.end method

.method private blacklist removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ar"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u0627\u0644"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p2
.end method

.method private blacklist semCompare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_c

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecXmlSuggested()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecXmlSuggested()Z

    move-result v3

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecXmlSuggested()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v3

    if-eq v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isPriorityLocale()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isPriorityLocale()Z

    move-result v3

    if-eq v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isPriorityLocale()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mUseSecSuggestion:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v3

    if-eq v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1

    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    invoke-virtual {p2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    return v1

    :cond_c
    :goto_6
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    move v1, v2

    :goto_7
    return v1
.end method


# virtual methods
.method public greylist compare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->semCompare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->compare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result p1

    return p1
.end method
