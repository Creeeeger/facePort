.class public Lcom/android/settings/fuelgauge/InactiveApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/development/DeveloperOptionAwareMixin;


# static fields
.field public static final FULL_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

.field public static final FULL_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;


# instance fields
.field public mUsageStats:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "ACTIVE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "WORKING_SET"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "FREQUENT"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "RARE"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "RESTRICTED"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllowableBuckets(Ljava/lang/String;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, p1}, Landroid/app/usage/UsageStatsManager;->getAppMinStandbyBucket(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x2d

    if-le p0, p1, :cond_0

    return-object p2

    :cond_0
    const/16 p1, 0xa

    const/4 v0, 0x0

    if-ge p0, p1, :cond_1

    new-array p0, v0, [Ljava/lang/CharSequence;

    return-object p0

    :cond_1
    sget-object p1, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_2

    return-object p2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    invoke-static {p2, v0, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xee

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    const p1, 0x7f17010b

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f141216

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/app/usage/UsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;I)V

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroidx/preference/ListPreference;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 12

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

    sget-object v5, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v9, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v7, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4}, Lcom/android/settings/fuelgauge/InactiveApps;->getAllowableBuckets(Ljava/lang/String;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v9, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v8, v5}, Lcom/android/settings/fuelgauge/InactiveApps;->getAllowableBuckets(Ljava/lang/String;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v9, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroidx/preference/ListPreference;)V

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v9, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    invoke-virtual {v9, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateSummary(Landroidx/preference/ListPreference;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x5

    const/16 v2, 0x2d

    const/16 v3, 0xa

    if-eq p0, v1, :cond_6

    if-eq p0, v3, :cond_5

    const/16 v1, 0x14

    if-eq p0, v1, :cond_4

    const/16 v1, 0x1e

    if-eq p0, v1, :cond_3

    const/16 v1, 0x28

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_1

    const/16 v1, 0x32

    if-eq p0, v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "NEVER"

    goto :goto_0

    :cond_1
    const-string v1, "RESTRICTED"

    goto :goto_0

    :cond_2
    const-string v1, "RARE"

    goto :goto_0

    :cond_3
    const-string v1, "FREQUENT"

    goto :goto_0

    :cond_4
    const-string v1, "WORKING_SET"

    goto :goto_0

    :cond_5
    const-string v1, "ACTIVE"

    goto :goto_0

    :cond_6
    const-string v1, "EXEMPTED"

    :goto_0
    const v4, 0x7f142d1c

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-lt p0, v3, :cond_7

    if-gt p0, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
