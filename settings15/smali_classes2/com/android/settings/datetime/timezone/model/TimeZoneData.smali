.class public final Lcom/android/settings/datetime/timezone/model/TimeZoneData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sCache:Ljava/lang/ref/WeakReference;


# instance fields
.field public final mCountryZonesFinder:Lcom/android/i18n/timezone/CountryZonesFinder;

.field public final mRegionIds:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/i18n/timezone/CountryZonesFinder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Lcom/android/i18n/timezone/CountryZonesFinder;

    invoke-virtual {p1}, Lcom/android/i18n/timezone/CountryZonesFinder;->lookupAllCountryIsoCodes()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-boolean v2, Lcom/samsung/android/settings/Rune;->FEATURE_REMOVE_TZ_WESTERN_SAHARA_IN_MOROCCO:Z

    if-eqz v2, :cond_0

    const-string v2, "EH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mRegionIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Lcom/android/i18n/timezone/CountryZonesFinder;

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/CountryZonesFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    invoke-direct {v0, p0}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;-><init>(Lcom/android/i18n/timezone/CountryTimeZones;)V

    :goto_1
    return-object v0
.end method
