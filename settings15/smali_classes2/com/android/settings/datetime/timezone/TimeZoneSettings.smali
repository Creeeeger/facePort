.class public Lcom/android/settings/datetime/timezone/TimeZoneSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mIsHomeCity:Z

.field public mLocale:Ljava/util/Locale;

.field public mPendingZonePickerRequestResult:Landroid/content/Intent;

.field public mSelectByRegion:Z

.field public mSelectedTimeZoneId:Ljava/lang/String;

.field public mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

.field public mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneSettings$1;

    const v1, 0x7f17027b

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static isFixedOffset(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Etc/GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Etc/UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static setPreferenceCategoryVisible(Landroidx/preference/SecPreferenceCategory;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Landroidx/preference/SecPreferenceCategory;->setEmptyHeight()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    new-instance v1, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;I)V

    invoke-virtual {v1, v2}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    new-instance v2, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;I)V

    invoke-virtual {v2, v3}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    new-instance v3, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {p1, p0, v4}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;I)V

    invoke-virtual {v3, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public findRegionIdForTzId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_5

    :cond_0
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Lcom/android/i18n/timezone/CountryZonesFinder;

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/CountryZonesFinder;->lookupCountryTimeZonesForZoneId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Landroidx/collection/ArraySet;

    invoke-direct {v2, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "HK"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "CN"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "Asia/Urumqi"

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-array v4, v1, [Ljava/lang/String;

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v3}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    sget-object v9, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    invoke-virtual {v8, v9}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPickerAt(Ljava/time/Instant;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getAlternativeIds()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_9

    array-length v7, v4

    if-lez v7, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    array-length v9, v4

    move v10, v1

    :goto_3
    if-ge v10, v9, :cond_7

    aget-object v11, v4, v10

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_a
    invoke-virtual {v3}, Lcom/android/i18n/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move-object v3, v0

    goto :goto_4

    :cond_b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    move-object p0, v2

    :goto_5
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_d

    return-object v0

    :cond_d
    if-eqz p2, :cond_e

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object p2

    :cond_e
    if-eqz p3, :cond_f

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-object p3

    :cond_f
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TimeZoneSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x203

    return p0
.end method

.method public getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17027b

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez p1, :cond_3

    iput-object p3, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "time_zone_region_preference_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/SecPreferenceCategory;Z)V

    const-string p1, "time_zone_fixed_offset_preference_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    invoke-static {p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/SecPreferenceCategory;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;I)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f14391d

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f14391c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-class p1, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return v0

    :cond_1
    const-class p1, Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mIsHomeCity:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    :cond_0
    return-void
.end method

.method public final onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.android.settings.datetime.timezone.result_region_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mPreferredTimeZoneIds:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->setRegionId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Unknown time zone id is selected: "

    const-string p1, "TimeZoneSettings"

    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mIsHomeCity:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "homecity_timezone"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "time_zone_region"

    if-nez p1, :cond_1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Settings: Set time zone"

    invoke-static {p2, p1}, Landroid/app/timezonedetector/TimeZoneDetector;->createManualTimeZoneSuggestion(Ljava/lang/String;Ljava/lang/String;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class p2, Landroid/app/timezonedetector/TimeZoneDetector;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/timezonedetector/TimeZoneDetector;

    invoke-interface {p0, p1}, Landroid/app/timezonedetector/TimeZoneDetector;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    return-void
.end method

.method public final setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    const-class v1, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public final setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object p1

    const-class v0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {v1, p2}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mPreferredTimeZoneIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setClickable(Z)V

    const-class p1, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public final setSelectByRegion(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mIsHomeCity:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "time_zone_region_preference_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    invoke-static {v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/SecPreferenceCategory;Z)V

    const-string v0, "time_zone_fixed_offset_preference_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/SecPreferenceCategory;Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ZG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "MM"

    :cond_1
    const-string v2, "DI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "EN"

    :cond_2
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    iget-object v2, v2, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mRegionIds:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v3

    :goto_0
    const-class v2, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v4, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->setRegionId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    invoke-virtual {p0, p1, v3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "time_zone_region"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findRegionIdForTzId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->setRegionId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mIsHomeCity:Z

    if-eqz p1, :cond_6

    const-class p1, Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setTimeZoneData(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    return-void
.end method

.method public final startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getMetricsCategory()I

    move-result p1

    iput p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0, p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
