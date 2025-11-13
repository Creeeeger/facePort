.class public Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.source "RegionSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;,
        Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;


# direct methods
.method public static synthetic $r8$lambda$s-fw34cKEBSncg4ziaXtmPJ7R8Q(Lcom/android/settings/datetime/timezone/RegionSearchPicker;Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->onListItemClick(Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    sget v0, Lcom/android/settings/R$string;->date_time_select_region:I

    sget v1, Lcom/android/settings/R$string;->date_time_search_region:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;-><init>(IIZZ)V

    return-void
.end method

.method private createAdapterItem(Ljava/util/Set;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;

    invoke-direct {v2, v0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;-><init>(Landroid/icu/text/Collator;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 127
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v4}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDisableIsraelCountry()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "IL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->jerusalem:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_0
    const-string v6, "HK"

    .line 135
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_REGION_TAIWAN_TO_CHINA:Z

    if-eqz v6, :cond_1

    const-string v6, "TW"

    .line 136
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    const-string v6, "MO"

    .line 137
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "TR"

    .line 139
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->turkey:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 138
    :cond_3
    :goto_1
    invoke-static {v0, v4}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->addChinaToRegionalName(Landroid/icu/text/LocaleDisplayNames;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    :cond_4
    :goto_2
    new-instance v6, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;

    const-wide/16 v7, 0x1

    add-long/2addr v7, v2

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-wide v2, v7

    goto :goto_0

    .line 145
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private onListItemClick(Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;)V
    .locals 4

    .line 74
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->getId()Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x1291

    const/16 v3, 0x1f51

    .line 80
    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getPreferredTimeZoneIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getPreferredTimeZoneIds()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings.datetime.timezone.result_region_id"

    .line 94
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.android.settings.datetime.timezone.region_id"

    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p0, v3}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return-void

    .line 84
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Region has no time zones: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegionSearchPicker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 86
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .locals 7

    .line 66
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 67
    new-instance v6, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->getRegionIds()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->createAdapterItem(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;-><init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;ZLjava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    return-object v6
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x54b

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
