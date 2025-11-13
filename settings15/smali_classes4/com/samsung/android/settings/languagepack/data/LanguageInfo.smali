.class public final Lcom/samsung/android/settings/languagepack/data/LanguageInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentDownloadedSize:J

.field public mDisplayOrder:I

.field public mIsStandardTranslationLanguage:Z

.field public mLanguageCode:Ljava/lang/String;

.field public mLanguageDisplayName:Ljava/lang/String;

.field public mList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mOrder:I

.field public mShowLocale:Z

.field public mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

.field public mSupportType:I

.field public mToastType:I

.field public mTotalLanguagePackSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    return-void
.end method


# virtual methods
.method public final checkDownloadedInSettings(Landroid/content/Context;Ljava/util/List;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget v1, v1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_5

    const/16 v5, 0x10

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_2

    return v3

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    iget-object v6, v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v6}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->count()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_4
    if-nez v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mIsStandardTranslationLanguage:Z

    if-eqz v1, :cond_0

    :cond_5
    :goto_1
    return v3

    :cond_6
    return v2
.end method

.method public final checkDownloadedWithType(Landroid/content/Context;ILjava/util/List;)Z
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->checkDownloadedInSettings(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->isPackageInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    or-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_4
    and-int p0, p2, v0

    if-ne p0, p2, :cond_5

    const/4 p3, 0x1

    :cond_5
    return p3
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "zh-CN"

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_REGION_CHINA_TO_CHINA_MAINLAND:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14149d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14149c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v0, "zh-HK"

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_REGION_HONGKONG_TO_CHINA:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14149f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14149e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const-string/jumbo v0, "zh-TW"

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_REGION_TAIWAN_TO_CHINA:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1414a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1414a0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mShowLocale:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageDisplayName:Ljava/lang/String;

    :cond_7
    return-object v0
.end method

.method public final getTranslationPackageName()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final hasUninstallablePackage(Landroid/content/Context;I)Z
    .locals 2

    if-nez p2, :cond_0

    const/16 p2, 0x1f

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->isUnInstallablePackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    and-int/2addr v0, p2

    if-lez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hasUninstallablePackage() : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LanguageInfo"

    invoke-static {p2, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final isAllPackageInstalled(Landroid/content/Context;)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget v2, v0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->needToUpdate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x2

    iget v2, v0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->needToUpdate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    const/4 v1, 0x4

    if-ne v2, v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->needToUpdate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    const/16 v1, 0x8

    if-ne v2, v1, :cond_4

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->needToUpdate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    const/16 v1, 0x10

    if-ne v2, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->needToUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_5
    return v1
.end method

.method public final showItemOnListWithType(I)Z
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "availableListItemWithType() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LanguageInfo"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
