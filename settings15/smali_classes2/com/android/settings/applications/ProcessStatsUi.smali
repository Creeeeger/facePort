.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sMaxPackageEntryCompare:Lcom/android/settings/applications/ProcessStatsUi$1;

.field public static final sPackageEntryCompare:Lcom/android/settings/applications/ProcessStatsUi$1;


# instance fields
.field public mAppListGroup:Landroidx/preference/PreferenceGroup;

.field public mMenuAvg:Landroid/view/MenuItem;

.field public mMenuMax:Landroid/view/MenuItem;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mShowMax:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sPackageEntryCompare:Lcom/android/settings/applications/ProcessStatsUi$1;

    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Lcom/android/settings/applications/ProcessStatsUi$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x17

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    const p1, 0x7f170122

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f142cde

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    const/4 v1, 0x2

    const v2, 0x7f142cdf

    invoke-interface {p1, p2, v1, p2, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    iget-boolean p2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    xor-int/2addr p2, v0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    iget-boolean p0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshUi()V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    iget-boolean p0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/settings/applications/ProcessStatsPreference;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/ProcessStatsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-static {v2, v1, v0}, Lcom/android/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final refreshUi()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    iget-boolean v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_0

    const v3, 0x7f14175a

    goto :goto_0

    :cond_0
    const v3, 0x7f140549

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-object v4, v3, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {v7}, Lcom/android/settings/applications/ProcStatsPackageEntry;->updateMetrics()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Lcom/android/settings/applications/ProcessStatsUi$1;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sPackageEntryCompare:Lcom/android/settings/applications/ProcessStatsUi$1;

    :goto_2
    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v5, :cond_3

    iget-wide v5, v4, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    goto :goto_3

    :cond_3
    iget-wide v5, v4, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v7, v4, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v5, v7

    :goto_3
    move v7, v2

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/ProcStatsPackageEntry;

    new-instance v9, Lcom/android/settings/applications/ProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1, v10}, Lcom/android/settings/applications/ProcStatsPackageEntry;->retrieveUiData(Landroidx/fragment/app/FragmentActivity;Landroid/content/pm/PackageManager;)V

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    iget-wide v11, v4, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    iget-boolean v13, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    const/4 v14, 0x1

    xor-int/2addr v13, v14

    iput-object v8, v9, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v15, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v15, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    goto :goto_5

    :cond_4
    iget-object v15, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    :goto_5
    invoke-virtual {v9, v15}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "ProcessStatsPreference"

    const-string v2, "PackageEntry contained no package name or uiLabel"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    iget-wide v14, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-object v10, v3

    iget-wide v2, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    cmpl-double v16, v14, v2

    if-lez v16, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    if-eqz v13, :cond_9

    if-eqz v16, :cond_8

    goto :goto_8

    :cond_8
    move-wide v14, v2

    :goto_8
    mul-double/2addr v14, v11

    goto :goto_a

    :cond_9
    if-eqz v16, :cond_a

    iget-wide v2, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    goto :goto_9

    :cond_a
    iget-wide v2, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    :goto_9
    long-to-double v2, v2

    iget-wide v11, v4, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    mul-double/2addr v2, v11

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    mul-double v14, v2, v11

    :goto_a
    invoke-virtual {v9}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    double-to-long v11, v14

    invoke-static {v2, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v2

    div-double/2addr v14, v5

    double-to-int v2, v14

    iput v2, v9, Lcom/android/settingslib/widget/AppPreference;->mProgress:I

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/settingslib/widget/AppPreference;->mProgressVisible:Z

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v9, v7}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v7, v7, 0x1

    move-object v3, v10

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_b
    return-void
.end method
