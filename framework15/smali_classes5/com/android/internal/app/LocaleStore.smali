.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final blacklist COUNTRY_NAME_CHINESE:Ljava/lang/String; = "CN"

.field private static final blacklist DEFAULT_SUPPORTED_LOCALE:I = 0x0

.field private static final blacklist DID_LOCALE:Ljava/lang/String; = "en-DI"

.field private static final blacklist DID_SUPPORTED_LOCALE:I = 0x2

.field private static final blacklist FULLNAME_CHINESE:Ljava/lang/String; = "\u7b80\u4f53\u4e2d\u6587"

.field private static final blacklist FULLNAME_REGION_CHINESE:Ljava/lang/String; = "\u4e2d\u56fd\u5927\u9646"

.field private static final blacklist FULLNAME_SERBIAN:Ljava/lang/String; = "Srpski"

.field private static final blacklist LANGUAGE_NAME_CHINESE:Ljava/lang/String; = "zh_CN_#Hans"

.field private static final blacklist LANGUAGE_NAME_SERBIAN:Ljava/lang/String; = "sr"

.field private static final blacklist LANGUAGE_XML:Ljava/lang/String; = "/system/csc/language.xml"

.field private static final blacklist LANGUAGE_XML_OMC_V1_DIR:Ljava/lang/String; = "/data/omc/etc"

.field private static final blacklist MODIFY_CHINA_DISPLAY_NAME:I = 0x0

.field private static final blacklist SHOW_DESIGN_ID_LOCALE:Ljava/lang/String; = "show_text_id"

.field private static final blacklist SHOW_DESIGN_ID_LOCALE_OFF:I = 0x0

.field private static final blacklist SHOW_DESIGN_ID_LOCALE_ON:I = 0x1

.field private static final blacklist SPECIFIC_SUPPORTED_LOCALE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LocaleStore"

.field private static final blacklist TAG_DISPLAY:Ljava/lang/String; = "Display"

.field private static final blacklist TAG_LANGUAGE:Ljava/lang/String; = "LanguageSet"

.field private static final blacklist TAG_NONSUGGESTED:Ljava/lang/String; = "NonSuggested"

.field private static final blacklist TAG_NOT_DISPLAY:Ljava/lang/String; = "NonDisplay"

.field private static final blacklist TAG_SUGGESTED:Ljava/lang/String; = "Suggested"

.field private static final blacklist TIER_LANGUAGE:I = 0x1

.field private static final blacklist TIER_NUMBERING:I = 0x3

.field private static final blacklist TIER_REGION:I = 0x2

.field private static final blacklist XML_LOCALES_INDEX_NO_SUGGESTED:I = 0x3

.field private static final blacklist XML_LOCALES_INDEX_SUGGESTED:I = 0x2

.field private static final blacklist XML_LOCALES_INDEX_SUPPORTED:I = 0x0

.field private static final blacklist XML_LOCALES_INDEX_UNSUPPORTED:I = 0x1

.field private static final blacklist XML_LOCALES_SIZE:I = 0x4

.field private static blacklist sCountryMode:Z

.field private static blacklist sFullyInitialized:Z

.field private static final blacklist sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sPreIsDIDLocaleOn:I

.field private static volatile blacklist sPrevDefaultLocaleList:Landroid/os/LocaleList;

.field private static final blacklist sPriorityLocale:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsCountryMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsPriorityLocale()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisChina()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/app/LocaleStore;->isChina()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    sput v0, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    invoke-static {}, Lcom/android/internal/app/LocaleStore;->isChina()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "zh"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    sput-object v1, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static blacklist addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private static blacklist buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 16

    move/from16 v0, p2

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    packed-switch v0, :pswitch_data_0

    const-string v4, ""

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getDIDLocale(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSpecificCustomerSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    nop

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v6, :cond_0

    if-eqz p1, :cond_0

    aget-object v1, p1, v5

    aget-object v2, p1, v7

    aget-object v3, p1, v6

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    array-length v9, v4

    :goto_1
    if-ge v5, v9, :cond_a

    aget-object v10, v4, v5

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    new-instance v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    invoke-virtual {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    if-ne v0, v7, :cond_2

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget v14, v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v14, v7

    iput v14, v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iget v14, v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v14, v14, 0x20

    iput v14, v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    :cond_3
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_4
    if-ne v0, v6, :cond_5

    sget v14, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    if-nez v14, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget v14, v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v14, v7

    iput v14, v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    :cond_6
    sget-object v14, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v13, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v7, v14, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    invoke-virtual {v6, v15, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string v6, "LocaleStore"

    const-string/jumbo v7, "put null key to sLocaleCache #2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v5, Ljava/util/IllformedLocaleException;

    const-string v6, "Bad locale entry in locale_config.xml"

    invoke-direct {v5, v6}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertExplicitLocales(Landroid/os/LocaleList;Ljava/util/Collection;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/LocaleList;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/internal/app/LocaleStore;->matchLocaleFromSupportedLocaleList(Landroid/os/LocaleList;Ljava/util/Collection;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v8, v6, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/IllformedLocaleException;

    const-string v5, "Bad locale entry"

    invoke-direct {v4, v5}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return-object v1
.end method

.method public static greylist fillCache(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    return-void
.end method

.method public static blacklist fillCacheManaged(Landroid/content/Context;Z)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_text_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v2, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    if-ne v2, v1, :cond_0

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sput v1, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    const-string v2, "/system/csc/language.xml"

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.sys.omc_path"

    const-string v7, "/data/omc/etc"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/language.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "persist.sys.omc_etcpath"

    invoke-static {v9, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v2, v5

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v2, v6

    :cond_2
    :goto_0
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v8, 0x3

    aget-object v4, v7, v8

    :cond_3
    invoke-static {v0, v7, v3}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;I)V

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;I)V

    const/4 v8, 0x2

    invoke-static {v0, v7, v8}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;I)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_f

    aget-object v13, v10, v12

    new-instance v14, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v15, 0x0

    invoke-direct {v14, v13, v15}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "-u-nu-latn"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-direct {v8, v3, v15}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    move-object v3, v8

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_d

    const/4 v15, 0x0

    const/16 v17, 0x0

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v18, v1

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    :cond_5
    :goto_2
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-object/from16 v0, v17

    goto :goto_3

    :cond_6
    move-object/from16 v0, v17

    :goto_3
    if-eqz v15, :cond_9

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iput v1, v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    goto :goto_4

    :cond_7
    iget v1, v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    const/16 v16, 0x2

    or-int/lit8 v1, v1, 0x2

    iput v1, v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iget v1, v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    :goto_4
    const-string v1, "en-DI"

    move-object/from16 v17, v2

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v16, 0x2

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    iput v1, v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    goto :goto_5

    :cond_9
    move-object/from16 v17, v2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    const/16 v16, 0x2

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    const/16 v16, 0x2

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iget v2, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    const/16 v16, 0x2

    goto :goto_6

    :cond_d
    move/from16 v18, v1

    move-object/from16 v17, v2

    const/4 v1, 0x0

    const/16 v16, 0x2

    :goto_6
    if-eqz p1, :cond_e

    invoke-static {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move v3, v1

    move/from16 v8, v16

    move-object/from16 v2, v17

    move/from16 v1, v18

    goto/16 :goto_1

    :cond_f
    move/from16 v18, v1

    move-object/from16 v17, v2

    if-eqz p1, :cond_11

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    goto :goto_8

    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    :cond_11
    return-void
.end method

.method private static blacklist findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object p1, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static greylist fromLocale(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 2

    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    return-object v0
.end method

.method public static blacklist getAllLocaleInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    sget-object v5, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/app/LocaleStore;->isConfigLocale(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static blacklist getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-class v1, Landroid/app/LocaleManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocaleManager;

    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v5, v4, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    if-eqz p2, :cond_3

    iget v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    goto :goto_2

    :cond_3
    iget v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v5

    :cond_4
    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "LocaleStore"

    const-string v4, "IllegalArgumentException "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v0
.end method

.method public static greylist getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z",
            "Landroid/os/LocaleList;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    :cond_1
    if-nez p4, :cond_2

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/internal/app/LocaleStore;->convertExplicitLocales(Landroid/os/LocaleList;Ljava/util/Collection;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    :goto_1
    nop

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/app/LocaleStore;->getTierLocales(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/util/concurrent/ConcurrentHashMap;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 2

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v0

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocaleStore;->addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method private static blacklist getLocaleInfo(Ljava/util/Locale;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    iget v4, v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iput v4, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return-object v2

    :cond_0
    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    :goto_0
    return-object v1
.end method

.method private static blacklist getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const-string v0, "LocaleStore"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v0, "Display"

    const-string v3, "LanguageSet"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v4, "NonDisplay"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "Suggested"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "NonSuggested"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    invoke-static {v4, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x2

    invoke-static {v5, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x3

    invoke-static {v3, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    return-object v1
.end method

.method private static blacklist getLocaleTier(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3

    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    const-string/jumbo v1, "nu"

    invoke-virtual {p0, v1}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static blacklist getSystemCurrentLocales()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    iget v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 3

    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    iget v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz p0, :cond_0

    iget v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    return-object v0
.end method

.method private static blacklist getTierLocales(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/util/concurrent/ConcurrentHashMap;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {p0, v5, p2}, Lcom/android/internal/app/LocaleStore;->isShallIgnore(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->getLocaleTier(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6, p3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v7

    invoke-static {v6, v7, p3}, Lcom/android/internal/app/LocaleStore;->addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_2
    invoke-virtual {v5, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v7, v8

    iput v7, v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    nop

    :cond_6
    :goto_3
    goto :goto_2

    :cond_7
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist isChina()Z
    .locals 2

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isConfigLocale(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isShallIgnore(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private static synthetic blacklist lambda$fillCache$0(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Locale;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$isShallIgnore$1(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist matchLocaleFromSupportedLocaleList(Landroid/os/LocaleList;Ljava/util/Collection;)Landroid/os/LocaleList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/LocaleList;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Landroid/os/LocaleList;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    aget-object v3, v0, v1

    if-nez v3, :cond_3

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v1
.end method

.method private static blacklist toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist transformImeLanguageTagToLocaleInfo(Ljava/util/List;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v6}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    new-instance v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    iget v8, v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist updateSimCountries(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method
