.class public Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;,
        Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;
    }
.end annotation


# static fields
.field private static final AT_SIGN:Ljava/lang/String; = "@"

.field private static final BUFFER_SIZE:I = 0x2000

.field private static final CONNECTION_TIMEOUT:I = 0x3a98

.field private static final DEBUG:Z = false

.field private static final DOWNLOAD_DIRECTORY:Ljava/lang/String; = "LanguagePack"

.field private static final PROGRESS_UPDATE_STEP:I = 0x115c00

.field private static final READ_TIMEOUT:I = 0x2710

.field private static final SEPARATOR_REGEX:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "LanguagePackManager"

.field private static final WRITE_FILE_CANCEL:I = 0x2

.field private static final WRITE_FILE_FAILURE:I = 0x1

.field private static final WRITE_FILE_PAUSE:I = 0x3

.field private static final WRITE_FILE_SUCCESS:I

.field private static sInstance:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;


# instance fields
.field final MAX_LOG_LENGTH:I

.field mCancelFlag:Z

.field private mContext:Landroid/content/Context;

.field private mLanguageInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/languagepack/data/LanguageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLastMakeLanguageListTime:J

.field private mLatestVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;

.field private mVersionUpdateListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;

.field private final mVersionUpdateLock:Ljava/lang/Object;


# direct methods
.method public static $r8$lambda$AZRpAaaiFzu2x4MhN8lGEMhuapw(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Ljava/util/List;Lcom/samsung/android/settings/languagepack/manager/LanguagePack;Lcom/samsung/android/settings/languagepack/manager/TtsInfo;)Lcom/samsung/android/settings/languagepack/data/PackageInfo;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p3, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mTarget:Ljava/lang/String;

    const-string/jumbo v0, "samsungtts"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    new-instance v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget-object v3, p3, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;-><init>(Ljava/lang/String;I)V

    iget-object p0, v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mVariant:Ljava/util/List;

    iget-object p3, p3, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mVariants:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p2, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mLanguageCode:Ljava/lang/String;

    iget-object p2, v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mVariant:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    aget-object v5, p3, v3

    aget-object v6, p3, v4

    aget-object v7, p3, v1

    const/4 v8, 0x3

    aget-object v8, p3, v8

    aget-object p3, p3, v0

    const-string v9, "[-_]"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v10, v9, v3

    array-length v11, v9

    if-le v11, v4, :cond_3

    aget-object v9, v9, v4

    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v10, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v10

    array-length v11, v5

    if-le v11, v4, :cond_2

    aget-object v11, v5, v3

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v5, v5, v4

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v9

    aget-object v5, v5, v3

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_1

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v7, "single"

    const-string/jumbo v9, "multi"

    if-eqz v5, :cond_4

    move-object v5, v9

    goto :goto_2

    :cond_4
    move-object v5, v7

    :goto_2
    move-object v10, p2

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v4, :cond_5

    move-object v7, v9

    :cond_5
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object p1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "preloaded tts pack. locale = "

    const-string v0, ", type = "

    const-string v1, ", variant = "

    invoke-static {p2, p0, v0, v7, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", version = "

    const-string v0, ", version name = "

    invoke-static {p0, v6, p2, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v8, p3}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_7

    aget-object p1, p0, v3

    invoke-static {p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionCode:J

    aget-object p0, p0, v4

    iput-object p0, v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionName:Ljava/lang/String;

    iput-boolean v4, v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    :cond_7
    return-object v2
.end method

.method public static $r8$lambda$DzXnHny8MJoNnQYzR88feiog0-w(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->isPackageInstalled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic $r8$lambda$M1oLogzArec6pfAFvQkeOJiW-rg(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->needToUpdate(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sezx9BbzOdJHrjfzecLGXwx9PTc(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLatestVersionMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mLatestVersion:J

    :cond_0
    return-void
.end method

.method public static $r8$lambda$ZBVhW0jcgLi4q9-RDMOE2Xq_Xc0(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$bKNyHMbzoepa90lkuraZgq7LrjA(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLatestVersionMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mLatestVersion:J

    :cond_0
    return-void
.end method

.method public static $r8$lambda$noDwASTUeaavHNfVfZBM2knNJmk(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/settings/languagepack/manager/LanguagePack;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    iget-object v1, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mLanguageCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v1, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    iput v1, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    iput-object v2, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mContext:Landroid/content/Context;

    :cond_0
    iget v2, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mOrder:I

    iput v2, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mOrder:I

    iget-object v2, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mLanguageCode:Ljava/lang/String;

    const-string v3, "_"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    iget-object v2, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mDisplayName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageDisplayName:Ljava/lang/String;

    iget-boolean v2, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mIsStandardLanguageCode:Z

    iput-boolean v2, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mIsStandardTranslationLanguage:Z

    iget-boolean v2, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mShowLocale:Z

    iput-boolean v2, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mShowLocale:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mTranslationPkgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget-object v6, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mTranslationPkgName:Ljava/lang/String;

    invoke-direct {v3, v6, v4}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mLanguageCode:Ljava/lang/String;

    const-string v6, "[-_]"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "none"

    iget-object v7, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mTranslationType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v3, v3, v1

    const-string v6, "en"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    const-string v6, ""

    invoke-direct {v3, v6, v4}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;-><init>(Ljava/lang/String;I)V

    iput-boolean v5, v3, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v3, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mExtraTranslationPkgNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda9;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v3, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mSupportS2T:Z

    const/16 v6, 0x10

    if-eqz v3, :cond_3

    iget-object v3, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mS2tPkgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget-object v7, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mS2tPkgName:Ljava/lang/String;

    invoke-direct {v3, v7, v6}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mAsrPkgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget-object v7, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mAsrPkgName:Ljava/lang/String;

    invoke-direct {v3, v7, v5}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mTtsPkgInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p3, Lcom/samsung/android/settings/languagepack/manager/LanguagePack;->mTtsPkgInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda2;

    invoke-direct {v9, p3, p2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePack;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    new-instance v8, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mVariants:Ljava/util/List;

    invoke-virtual {p2, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;

    iget-object v8, p2, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda4;

    invoke-direct {v8, p2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/languagepack/manager/TtsInfo;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda2;

    const/4 v7, 0x1

    invoke-direct {v3, p0, p1, p3, v7}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Ljava/util/List;Ljava/lang/Object;I)V

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iput v1, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_7

    iget p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    or-int/lit8 p0, p0, 0x6

    iput p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    :cond_7
    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_8

    iget p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    or-int/lit8 p0, p0, 0x6

    iput p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    :cond_8
    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_9

    iget p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    or-int/2addr p0, v5

    iput p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    :cond_9
    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_a

    iget p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    or-int/2addr p0, v4

    iput p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    :cond_a
    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_b

    iget p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    or-int/2addr p0, v6

    iput p0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    :cond_b
    return-object v0
.end method

.method public static -$$Nest$mnotifyUninstallStatus(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyUninstallStatus() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;->finishUninstall(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->MAX_LOG_LENGTH:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLatestVersionMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mCancelFlag:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mVersionUpdateLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public static convertStringToLong(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getHttpURLConnection(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .locals 3

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string p1, "[getHttpURLConnection] HttpURLConnection is null!  "

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 p1, 0x3a98

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    sget-object p2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getHttpURLConnection] response code :  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_2

    const/16 v1, 0xce

    if-eq p1, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[getHttpURLConnection] Wrong response code :  : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->sInstance:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->sInstance:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->sInstance:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    return-object p0
.end method

.method public static wrongSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "[AsyncDownloader] Check signature validation "

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v0

    :goto_1
    sget-object p1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string p1, "[AsyncDownloader] malformed or wrong APK! "

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final apkFromDeltaFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    new-instance v0, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->buf2:[B

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/samsung/android/settings/languagepack/utils/LanguagePackUtils;->getApkSourceDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LanguagePack"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v3, v4, p3}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string p3, "_repacked.apk"

    invoke-static {p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start patching file"

    const-string v3, "Gdiff"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, v2, p2, p3}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->patch(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "exception diff patch"

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p2, "finished patching file"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo p2, "source or patch is too large, max length is 2147483647"

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "aborting.."

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed to delete a file"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    sget-object p2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-object p0
.end method

.method public final deleteTemporalDownloadedFile(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LanguagePack"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p0, v1

    sget-object v3, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleteTemporalDownloadedFile : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public final getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    return-object p0
.end method

.method public final getPreloadedTTSList()Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.samsung.SMT.LanguageProvider"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v5, "preload"

    const-string p0, "available_voices"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string p0, "locale"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "variant"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "multiSpeaker"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "version"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "versionName"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {p0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_1
    sget-object v2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CursorIndexOutOfBoundsException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public final isNewerLatestVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLatestVersionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPausedState(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_PAUSE:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/utils/LanguagePackUtils;->isDirectoryExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPossibleDeltaDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    const-string v0, "language_pack_delta_update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "language_pack_delta_update_fail_list"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p3}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final makeLanguageList()Ljava/util/List;
    .locals 7

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLastMakeLanguageListTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/samsung/android/settings/languagepack/constant/LanguagePackConstant;->LANGUAGE_LIST_UPDATE_PERIOD_MILLIS:J

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getLangpackConfigInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string v0, "LanguagePack ConfigInfo is null."

    invoke-static {p0, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v4, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v6, v3, 0xfa0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, [Lcom/samsung/android/settings/languagepack/manager/LanguagePack;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/settings/languagepack/manager/LanguagePack;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getPreloadedTTSList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.SMT"

    sget-object v6, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    :try_start_2
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :catch_0
    :goto_2
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v3, v6, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Ljava/util/List;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLastMakeLanguageListTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to convert json to instance : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyUpdateStatus() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_CANCEL:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->deleteTemporalDownloadedFile(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    or-int/2addr p3, v0

    iput p3, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    iget-object p3, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iput-object p2, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    :cond_2
    return-void
.end method

.method public final requestRecentPackageVersion(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestRecentPackageVersion total app Id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->getDownloadInfoByXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    const-string v1, "appInfo"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "appId"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "versionCode"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->isNewerLatestVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->updatePackageVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :goto_2
    sget-object p1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final setCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mCancelFlag:Z

    return-void
.end method

.method public final setDownloadListener(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;

    return-void
.end method

.method public final setVersionUpdateListener(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mVersionUpdateListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;

    return-void
.end method

.method public final setVersionUpdateMap(Ljava/util/Map;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLatestVersionMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;I)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final startDownloadAndInstall(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v8, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v0, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iget-object v2, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mVersionUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->updatePackageVersionAndSize(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v7}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/Stack;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-wide v10, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mTotalLanguagePackSize:J

    iput-wide v10, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mCurrentDownloadedSize:J

    new-instance v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, v9, v3}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Ljava/util/Stack;->forEach(Ljava/util/function/Consumer;)V

    iget-wide v3, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mTotalLanguagePackSize:J

    cmp-long v0, v3, v10

    if-nez v0, :cond_2

    monitor-exit v2

    :cond_1
    :goto_1
    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    monitor-exit v2

    move-object v13, v1

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :goto_3
    const/4 v14, 0x1

    if-eqz v13, :cond_36

    invoke-virtual {v13}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_37

    :cond_3
    iget-wide v0, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mTotalLanguagePackSize:J

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x4

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    return-void

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v14

    move/from16 v16, v15

    :goto_4
    invoke-virtual {v13}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget-object v4, v1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    const-string v2, "_"

    invoke-static {v4, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v17, v6

    iget-wide v5, v1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mLatestVersion:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/File;

    iget-object v1, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LanguagePack"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "[DownloadLanguageTask::run] Download path fail"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    invoke-virtual {v7, v9, v0, v14}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    return-void

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "[DownloadLanguageTask::run] mkDir fail"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    invoke-virtual {v7, v9, v0, v14}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    return-void

    :cond_6
    iget-object v1, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->getDownloadInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/DownloadInfo;

    move-result-object v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string v2, "[getDownloadInfo] downloadInfo is null"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    const-string v2, "1"

    iget-object v3, v1, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mResultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "[getDownloadInfo] result code = "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "[getDownloadInfo] download result message : "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-object v12, v1

    :goto_6
    if-nez v12, :cond_9

    sget-object v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DownloadLanguageTask::run] downloadInfo is null : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v14

    move-object/from16 v6, v17

    const-wide/16 v10, 0x0

    goto/16 :goto_4

    :cond_9
    iget-object v10, v12, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mDownloadURI:Ljava/lang/String;

    iget-object v11, v12, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mSignature:Ljava/lang/String;

    iget-object v3, v12, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mDeltaDownloadURI:Ljava/lang/String;

    iget-object v2, v12, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mDeltaContentSize:Ljava/lang/String;

    iget-object v1, v12, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mInstalledBinaryHashValue:Ljava/lang/String;

    iget-object v15, v12, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mUpdateBinaryHashValue:Ljava/lang/String;

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object v2, v4

    move-object/from16 v22, v3

    move-object v14, v4

    move-object/from16 v4, v21

    move-object v8, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v13

    move-object/from16 v13, v17

    move/from16 v17, v0

    move-object v0, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->isPossibleDeltaDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DownloadLanguageTask::run] isPossibleDeltaDownload, isDelta = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,PackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DownloadLanguageTask::run] download uri is empty : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object/from16 v8, p1

    move-object v6, v13

    move/from16 v0, v17

    move-object/from16 v13, v20

    const-wide/16 v10, 0x0

    :goto_8
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DownloadLanguageTask::run] signature is empty : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mCurrentDownloadedSize:J

    add-long/2addr v5, v3

    iput-wide v5, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mCurrentDownloadedSize:J

    iget-object v0, v12, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mContentSize:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_d

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p1

    move-object v6, v13

    move/from16 v0, v17

    move-object/from16 v13, v20

    const-wide/16 v10, 0x0

    :goto_9
    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_27

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_26

    :cond_c
    const-wide/16 v3, 0x0

    :cond_d
    new-instance v0, Ljava/net/URL;

    if-eqz v1, :cond_e

    move-object/from16 v10, v22

    :cond_e
    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getHttpURLConnection(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v5, :cond_10

    :try_start_4
    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x1

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    return-void

    :catchall_2
    move-exception v0

    move-object v12, v5

    goto/16 :goto_27

    :catch_2
    move-exception v0

    move-object v12, v5

    goto/16 :goto_26

    :cond_10
    if-eqz v17, :cond_11

    :try_start_5
    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v6, 0x0

    invoke-virtual {v7, v9, v0, v6}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v17, 0x0

    :cond_11
    :try_start_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    new-instance v8, Ljava/io/FileOutputStream;

    const-wide/16 v18, 0x0

    cmp-long v0, v3, v18

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    :goto_a
    invoke-direct {v8, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v7, v6, v8, v9}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->writeTempFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_14

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    invoke-virtual {v7, v9, v0, v3}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v6, :cond_13

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_13
    :goto_b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_d

    :goto_c
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_d
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v12, v6

    goto/16 :goto_22

    :catch_4
    move-exception v0

    goto/16 :goto_1d

    :cond_14
    const/4 v3, 0x2

    if-ne v0, v3, :cond_16

    :try_start_b
    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_CANCEL:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v6, :cond_15

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_f

    :cond_15
    :goto_e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_10

    :goto_f
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_10
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_16
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1b

    :cond_17
    :try_start_e
    iget-boolean v0, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mCancelFlag:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_CANCEL:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v6, :cond_18

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_11

    :catch_6
    move-exception v0

    goto :goto_12

    :cond_18
    :goto_11
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_13

    :goto_12
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :goto_13
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_19
    :try_start_11
    iget-object v0, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_PAUSE:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne v0, v1, :cond_17

    const/4 v2, 0x0

    invoke-virtual {v7, v9, v1, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v6, :cond_1a

    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_14

    :catch_7
    move-exception v0

    goto :goto_15

    :cond_1a
    :goto_14
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_16

    :goto_15
    :try_start_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :goto_16
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_1b
    if-eqz v6, :cond_1c

    :try_start_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_17

    :catch_8
    move-exception v0

    goto :goto_18

    :cond_1c
    :goto_17
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_19

    :goto_18
    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_19
    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string v3, "[DownloadLanguageTask] File is downloaded! "

    invoke-static {v0, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DownloadLanguageTask]  : Downloaded size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v11

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    iget-object v1, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v7, v2, v14, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->apkFromDeltaFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v1, Lcom/samsung/android/settings/languagepack/apkverifier/GetSha1FromApk;

    iget-object v3, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/languagepack/apkverifier/GetSha1FromApk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/languagepack/apkverifier/GetSha1FromApk;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v12, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mUpdateBinaryHashValue:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "[DownloadLanguageTask] UpdateBinaryHashValue is not matched. "

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v14}, Lcom/samsung/android/settings/languagepack/utils/LanguagePackUtils;->addDeltaDownloadFailList(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :goto_1a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1b

    :cond_1d
    :try_start_16
    iget-object v0, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->wrongSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-eqz v0, :cond_1e

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v8, p1

    move-object v6, v13

    move/from16 v0, v17

    move-wide/from16 v10, v18

    move-object/from16 v13, v20

    goto/16 :goto_8

    :cond_1e
    :try_start_17
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_1a

    :goto_1b
    move-object/from16 v8, p1

    move-object v6, v13

    move/from16 v0, v17

    move-wide/from16 v10, v18

    move-object/from16 v13, v20

    goto/16 :goto_9

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v12, v6

    const/4 v8, 0x0

    goto :goto_22

    :catch_9
    move-exception v0

    :goto_1c
    const/4 v8, 0x0

    goto :goto_1d

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_22

    :catch_a
    move-exception v0

    const/4 v6, 0x0

    goto :goto_1c

    :goto_1d
    :try_start_18
    sget-object v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DownloadLanguageTask] download exception :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_PAUSE:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v6, :cond_1f

    :try_start_1a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_1e

    :catch_b
    move-exception v0

    goto :goto_1f

    :cond_1f
    :goto_1e
    if-eqz v8, :cond_20

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_20

    :goto_1f
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_20
    :goto_20
    return-void

    :goto_21
    move-object v1, v0

    move-object v12, v6

    const/4 v5, 0x0

    goto :goto_22

    :catchall_6
    move-exception v0

    goto :goto_21

    :goto_22
    if-eqz v12, :cond_21

    :try_start_1c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_23

    :catch_c
    move-exception v0

    goto :goto_24

    :cond_21
    :goto_23
    if-eqz v8, :cond_22

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto :goto_25

    :goto_24
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_22
    :goto_25
    throw v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :goto_26
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x1

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    if-eqz v12, :cond_23

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_23
    return-void

    :catchall_7
    move-exception v0

    :goto_27
    if-eqz v12, :cond_24

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_24
    throw v0

    :cond_25
    move-object v13, v6

    if-eqz v16, :cond_26

    iget v0, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, v9, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    goto :goto_28

    :cond_26
    const/4 v1, 0x1

    :goto_28
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    goto/16 :goto_36

    :cond_27
    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    iget-object v0, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;

    invoke-direct {v1, v7, v9, v0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;)V

    const-string v0, "install"

    iput-object v0, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mMode:Ljava/lang/String;

    iget-object v0, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v3, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_28
    iget-object v0, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    iget-object v1, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mCallbackReceiver:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "INSTALLER_CALLBACK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/io/File;

    iget-object v0, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    const-string v5, "exception"

    const-string v6, "ApkInstaller"

    if-eqz v0, :cond_2a

    iget-object v0, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mListener:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;

    if-nez v0, :cond_2b

    :cond_2a
    const/4 v8, 0x2

    const/4 v12, 0x0

    goto/16 :goto_35

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "requestInstall() : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_32

    :try_start_1f
    iget-object v0, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    new-instance v6, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iget v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_14
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    const/4 v8, 0x2

    or-int/2addr v7, v8

    :try_start_20
    iput v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v7
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_13
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :try_start_21
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v11, 0x0

    move-object v9, v7

    invoke-virtual/range {v9 .. v14}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v9
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    const/high16 v0, 0x10000

    :try_start_22
    new-array v0, v0, [B

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :goto_2b
    :try_start_23
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    if-lez v11, :cond_2c

    const/4 v12, 0x0

    :try_start_24
    invoke-virtual {v9, v0, v12, v11}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2b

    :catchall_8
    move-exception v0

    move-object v12, v10

    goto/16 :goto_33

    :catch_d
    move-exception v0

    goto/16 :goto_32

    :cond_2c
    const/4 v12, 0x0

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v2, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    const/high16 v13, 0xc000000

    invoke-static {v11, v6, v0, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_d
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    goto/16 :goto_34

    :catch_e
    move-exception v0

    const/4 v12, 0x0

    goto :goto_32

    :catchall_9
    move-exception v0

    :goto_2c
    const/4 v12, 0x0

    goto :goto_33

    :catch_f
    move-exception v0

    const/4 v12, 0x0

    :goto_2d
    const/4 v10, 0x0

    goto :goto_32

    :catchall_a
    move-exception v0

    :goto_2e
    const/4 v9, 0x0

    goto :goto_2c

    :catch_10
    move-exception v0

    const/4 v12, 0x0

    :goto_2f
    const/4 v9, 0x0

    goto :goto_2d

    :catch_11
    move-exception v0

    const/4 v12, 0x0

    :try_start_25
    const-string/jumbo v6, "requestInstall error ="

    const-string v9, "[LanguagePack]ApkInstaller"

    invoke-static {v9, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->updateInstallResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_12
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    if-eqz v7, :cond_29

    :goto_30
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$Session;->close()V

    goto/16 :goto_2a

    :catch_12
    move-exception v0

    goto :goto_2f

    :catchall_b
    move-exception v0

    const/4 v7, 0x0

    goto :goto_2e

    :catch_13
    move-exception v0

    :goto_31
    const/4 v12, 0x0

    const/4 v7, 0x0

    goto :goto_2f

    :catch_14
    move-exception v0

    const/4 v8, 0x2

    goto :goto_31

    :goto_32
    :try_start_26
    const-string/jumbo v6, "requestInstall error ="

    const-string v11, "[LanguagePack]ApkInstaller"

    invoke-static {v11, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->updateInstallResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    if-eqz v10, :cond_2d

    :try_start_27
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_15

    :catch_15
    :cond_2d
    if-eqz v9, :cond_2e

    :try_start_28
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_16

    :catch_16
    :cond_2e
    if-eqz v7, :cond_29

    goto :goto_30

    :goto_33
    if-eqz v12, :cond_2f

    :try_start_29
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_17

    :catch_17
    :cond_2f
    if-eqz v9, :cond_30

    :try_start_2a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_18

    :catch_18
    :cond_30
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_31
    throw v0

    :cond_32
    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_34
    if-eqz v10, :cond_33

    :try_start_2b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_19

    :catch_19
    :cond_33
    if-eqz v9, :cond_34

    :try_start_2c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_1a

    :catch_1a
    :cond_34
    if-eqz v7, :cond_29

    goto :goto_30

    :goto_35
    const-string/jumbo v0, "requestInstall Context and Listener are null"

    invoke-static {v6, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->updateInstallResult(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    :cond_35
    :goto_36
    return-void

    :cond_36
    :goto_37
    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "[DownloadLanguageTask::run] failed : packageInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x1

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    return-void
.end method

.method public final startUninstall(Ljava/lang/String;Z)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$1;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->isPackageInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget v2, v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageInfo : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Skip removed."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;)V

    const-string/jumbo p0, "uninstall"

    iput-object p0, p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mMode:Ljava/lang/String;

    iget-object p0, p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    const-string v2, ""

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    iget-object p2, p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mCallbackReceiver:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "UNINSTALLER_CALLBACK"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/high16 v4, 0xc000000

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final updateLatestPackageVersion(Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mVersionUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0xa

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {p1, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-1"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->requestRecentPackageVersion(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v2, v1

    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mVersionUpdateListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;

    invoke-interface {p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;->finishUpdate()V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLanguageInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updatePackageVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mLatestVersionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mVersionUpdateListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;->updateLatestVersion(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updatePackageVersionAndSize(Ljava/util/List;)Ljava/util/Map;
    .locals 17

    move-object/from16 v7, p0

    const-string v1, "-1"

    move-object/from16 v8, p1

    check-cast v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v9, ""

    move-object v3, v9

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget-object v0, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v5, v4, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "getVersionCode() Exception :: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    const-string v6, "@"

    invoke-static {v5, v4, v6, v0}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_2

    :cond_0
    iget-object v0, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/languagepack/utils/LanguagePackUtils;->getSHA1DigestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v5, v6, v0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_3
    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v4, ":"

    invoke-static {v3, v4, v0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatePackageVersionAndSize, total app Id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->getDownloadInfoByXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "appInfo"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move v12, v10

    :goto_4
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v12, v1, :cond_a

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "appId"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :cond_3
    move-object v13, v9

    :goto_5
    const-string/jumbo v2, "versionCode"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_6

    :cond_4
    move-object v14, v9

    :goto_6
    const-string v2, "contentSize"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_7

    :cond_5
    move-object v15, v9

    :goto_7
    const-string v2, "deltaContentSize"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_8

    :cond_6
    move-object/from16 v16, v9

    :goto_8
    const-string v2, "installedBinaryHashValue"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_9

    :cond_7
    move-object v5, v9

    :goto_9
    const-string v3, "deltaDownloadURI"

    const-string/jumbo v6, "updateBinaryHashValue"

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->isPossibleDeltaDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePackageVersionAndSize, isDelta = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "   PackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v13}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;

    invoke-direct {v3, v7, v13, v14}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    if-eqz v1, :cond_8

    move-object/from16 v15, v16

    :cond_8
    invoke-static {v15}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :goto_a
    sget-object v1, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v11
.end method

.method public final writeTempFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)I
    .locals 9

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string p1, "[writeTempFile] input stream is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-wide v0, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mCurrentDownloadedSize:J

    sget-object v2, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[writeTempFile]  : is.available = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    invoke-virtual {p2, v2, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v5, v5

    add-long/2addr v0, v5

    iget-wide v5, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mTotalLanguagePackSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    long-to-int v5, v0

    const v6, 0x115c00

    add-int/2addr v6, v4

    if-lt v5, v6, :cond_3

    int-to-long v6, v5

    iget-object v4, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mListener:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;

    if-eqz v4, :cond_2

    iput-wide v6, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mCurrentDownloadedSize:J

    invoke-interface {v4, v6, v7, p3}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;->publishProgress(JLcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    :cond_2
    move v4, v5

    :cond_3
    iget-boolean v5, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mCancelFlag:Z

    if-eqz v5, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->mCancelFlag:Z

    const/4 p0, 0x2

    return p0

    :cond_4
    iget-object v5, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v6, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_PAUSE:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne v5, v6, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_5
    iput-wide v0, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mCurrentDownloadedSize:J

    return v3
.end method
