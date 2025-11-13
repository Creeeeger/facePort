.class public Lcom/android/internal/app/AppLocaleCollector;
.super Ljava/lang/Object;
.source "AppLocaleCollector.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;


# static fields
.field private static final blacklist ENABLED:Z = true

.field private static final blacklist PROP_APP_LANGUAGE_SUGGESTION:Ljava/lang/String; = "android.app.language.suggestion.enhanced"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAllAppActiveLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mImeLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/app/AppLocaleCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/AppLocaleCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    return-void
.end method

.method private blacklist addImeSuggestionFlag(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-object v2, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->extendSuggestionOfType(I)V

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private blacklist addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->extendSuggestionOfType(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    goto :goto_1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private blacklist filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private blacklist getActiveIme(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const-string v4, "default_input_method"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist getSuggestedLocales(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static synthetic blacklist lambda$getActiveImeLocales$1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getAllAppActiveLocales$0(Ljava/util/HashSet;Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getIgnoredLocaleList$3(Ljava/util/HashSet;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getIgnoredLocaleList$4(Ljava/util/HashSet;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getSuggestedLocales$5(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getSystemCurrentLocales$2(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getActiveImeLocales()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/app/AppLocaleCollector;->getActiveIme(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    nop

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->transformImeLanguageTagToLocaleInfo(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    return-object v2
.end method

.method public blacklist getAllAppActiveLocales()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/LocaleManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocaleManager;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    nop

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/app/LocaleStore;->getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_2
    return-object v2
.end method

.method public blacklist getAppCurrentLocale()Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocaleStore;->getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAppSupportedLocales()Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/app/AppLocaleStore;->getAppSupportedLocales(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIgnoredLocaleList(Z)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.app.language.suggestion.enhanced"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;-><init>(Ljava/util/HashSet;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda5;-><init>(Ljava/util/HashSet;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public blacklist getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "ZZ)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AppLocaleCollector;->getAppCurrentLocale()Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    :cond_0
    iget-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AppLocaleCollector;->getAllAppActiveLocales()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    :cond_1
    iget-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AppLocaleCollector;->getActiveImeLocales()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AppLocaleCollector;->getAppSupportedLocales()Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppLocaleCollector;->getIgnoredLocaleList(Z)Ljava/util/HashSet;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v6, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_4

    iget-object v5, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v6, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v8

    :goto_1
    if-eqz p3, :cond_5

    move-object/from16 v6, p1

    invoke-virtual {v0, v3, v6, v1}, Lcom/android/internal/app/AppLocaleCollector;->getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v9

    goto :goto_2

    :cond_5
    move-object/from16 v6, p1

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9, v1}, Lcom/android/internal/app/AppLocaleCollector;->getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v9

    :goto_2
    iget-object v10, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v10, :cond_6

    if-nez p3, :cond_6

    iget-object v10, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez p3, :cond_9

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AppLocaleCollector;->getSystemCurrentLocales()Ljava/util/Set;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v10, v11}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-object v13, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v13

    iget-object v14, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move v13, v8

    goto :goto_4

    :cond_7
    move v13, v7

    :goto_4
    iget-object v14, v0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    invoke-direct {v0, v12, v14}, Lcom/android/internal/app/AppLocaleCollector;->addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z

    move-result v14

    iget-object v15, v0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    invoke-direct {v0, v12, v15}, Lcom/android/internal/app/AppLocaleCollector;->addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z

    move-result v15

    if-nez v13, :cond_8

    if-nez v14, :cond_8

    if-nez v15, :cond_8

    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    if-eqz v5, :cond_a

    iget-object v11, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v9, v11}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {v0, v4}, Lcom/android/internal/app/AppLocaleCollector;->getSuggestedLocales(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    :cond_a
    if-nez p3, :cond_d

    const-string v11, "android.app.language.suggestion.enhanced"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, v0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    iget-object v12, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v11, v12}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v11

    if-eqz v10, :cond_b

    invoke-direct {v0, v11, v10}, Lcom/android/internal/app/AppLocaleCollector;->filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/internal/app/AppLocaleCollector;->addImeSuggestionFlag(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    :cond_b
    invoke-interface {v4, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v12, v0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    iget-object v13, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v12, v13}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v11

    if-eqz v10, :cond_c

    invoke-direct {v0, v11, v10}, Lcom/android/internal/app/AppLocaleCollector;->filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    :cond_c
    invoke-interface {v4, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_d
    if-nez p3, :cond_f

    if-eqz v5, :cond_f

    iget-object v11, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v11, :cond_e

    move v7, v8

    :cond_e
    invoke-static {v7}, Lcom/android/internal/app/LocaleStore;->getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Lcom/android/internal/app/AppLocaleCollector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App locale list: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-object v4
.end method

.method public blacklist getSystemCurrentLocales()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/app/LocaleStore;->getSystemCurrentLocales()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public blacklist getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasSpecificPackageName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
