.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sEntryCompare:Lcom/android/settings/applications/ProcessStatsDetail$2;


# instance fields
.field public mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mForceStop:Landroid/view/MenuItem;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mProcGroup:Landroidx/preference/PreferenceCategory;

.field public final mServiceMap:Landroid/util/ArrayMap;

.field public mTotalScale:D

.field public mTotalTime:J

.field public mWeightToRam:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Lcom/android/settings/applications/ProcessStatsDetail$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkForceStop()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    move v5, v1

    :goto_1
    iget-object v6, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-nez v6, :cond_3

    move v2, v4

    :catch_0
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    :goto_2
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x15

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "package_entry"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->retrieveUiData(Landroidx/fragment/app/FragmentActivity;Landroid/content/pm/PackageManager;)V

    const-string v1, "weight_to_ram"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    const-string v1, "total_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    const-string v1, "max_memory_usage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    const-string v1, "total_scale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalScale:D

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-nez p1, :cond_1

    goto/16 :goto_7

    :cond_1
    const p1, 0x7f170142

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "processes"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const-string v5, "os"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v4, 0x3a

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v6, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_5

    add-int/2addr v4, v0

    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, v5

    :goto_1
    iput-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v1

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v5, v3, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-wide v5, v3, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v7, v3, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v7, v3, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v7, v9

    double-to-long v7, v7

    iget-wide v11, v3, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    mul-double/2addr v11, v9

    double-to-long v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v7, v8, v3}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    long-to-float v5, v5

    iget-wide v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroidx/fragment/app/FragmentActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x7f141797

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/2addr v2, v0

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_9

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    cmpl-double p1, v2, v4

    if-lez p1, :cond_a

    goto :goto_4

    :cond_a
    move-wide v2, v4

    :goto_4
    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    double-to-long v2, v2

    sget-object v4, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->roundBytes(IJ)Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->fractionDigits:I

    invoke-virtual {v4, v5}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v4, v5}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v4, v1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    instance-of v5, v4, Landroid/icu/text/DecimalFormat;

    if-eqz v5, :cond_b

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    :cond_b
    iget v5, v2, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v7}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->isFileSize(Landroid/icu/util/MeasureUnit;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v1, v2, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {p1, v1}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    iget-object p1, v2, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v3, v2, v4}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v2

    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v2, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    goto :goto_5

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    sget-object v1, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    const-string v1, "status_header"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    iget-wide v3, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-float p1, v1

    iget-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroidx/fragment/app/FragmentActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "frequency"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v3, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalScale:D

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    mul-double/2addr v1, v3

    const-string p1, "max_usage"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    double-to-long v1, v1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 p2, 0x1

    const v0, 0x7f141009

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    move v4, v0

    :goto_1
    iget-object v5, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-eqz p1, :cond_5

    iget-object p2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    :try_start_0
    new-instance p2, Lcom/android/settings/widget/EntityHeaderController;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :cond_2
    const/16 p1, -0x2710

    :goto_1
    iput p1, p2, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    iput v2, p2, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    iput v2, p2, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    const-string p1, "os"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    iget-object p1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_4
    return-void

    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final updateRunningServices()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/CancellablePreference;

    iput-boolean v2, v4, Lcom/android/settings/CancellablePreference;->mCancellable:Z

    invoke-virtual {v4}, Landroidx/preference/Preference;->notifyChanged()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v4, :cond_1

    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/CancellablePreference;

    if-eqz v4, :cond_3

    new-instance v5, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V

    iput-object v5, v4, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/applications/ProcessStatsDetail$1;

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/settings/CancellablePreference;->mCancellable:Z

    invoke-virtual {v4}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
