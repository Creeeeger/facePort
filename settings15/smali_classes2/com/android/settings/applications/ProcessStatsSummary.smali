.class public Lcom/android/settings/applications/ProcessStatsSummary;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/development/DeveloperOptionAwareMixin;


# instance fields
.field public mAppListPreference:Landroidx/preference/Preference;

.field public mAverageUsed:Landroidx/preference/Preference;

.field public mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

.field public mFree:Landroidx/preference/Preference;

.field public mMemoryInfoPrefCategory:Landroidx/preference/PreferenceCategory;

.field public mPerformance:Landroidx/preference/Preference;

.field public mReservedMemory:Landroidx/preference/Preference;

.field public mSummaryPref:Lcom/android/settings/SummaryPreference;

.field public mTotalMemory:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xca

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f170121

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "memory_info"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mMemoryInfoPrefCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "status_header"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SummaryPreference;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const-string p1, "performance"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroidx/preference/Preference;

    const-string p1, "total_memory"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroidx/preference/Preference;

    const-string p1, "reserved_memory"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mReservedMemory:Landroidx/preference/Preference;

    const-string p1, "average_used"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroidx/preference/Preference;

    const-string p1, "free"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroidx/preference/Preference;

    const-string p1, "apps_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "force_enable_pss_profiling"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->removeAppProfilerPssCollection()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "transfer_stats"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "duration_index"

    iget v2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v3, 0x7f141795

    invoke-virtual {v0, v3, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p0, 0xca

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/android/settings/development/DisableDevSettingsDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;-><init>()V

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string v0, "DisableDevSettingDlg"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public final refreshUi()V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->removeAppProfilerPssCollection()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mMemoryInfoPrefCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    iget-boolean v3, v3, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->removeAppProfilerPssCollection()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "force_enable_pss_profiling"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    iget-wide v7, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->hwRam:J

    iget-wide v9, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    double-to-long v12, v5

    invoke-static {v11, v12, v13, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    invoke-static {v1, v7, v8}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iget-wide v14, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    move-wide/from16 v16, v5

    double-to-long v4, v14

    invoke-static {v1, v4, v5}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realReservedRam:J

    invoke-static {v1, v5, v6}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mReservedMemory:Landroidx/preference/Preference;

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f030148

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-object v5, v5, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    add-int/lit8 v5, v5, -0x4

    :cond_4
    :goto_2
    if-ltz v5, :cond_5

    array-length v6, v2

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_5

    aget-object v2, v2, v5

    goto :goto_3

    :cond_5
    array-length v5, v2

    sub-int/2addr v5, v3

    aget-object v2, v2, v5

    :goto_3
    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v12, v13, v6}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getNumberFormattedString(JLjava/math/RoundingMode;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v11, 0x2

    const v8, 0x7f142d8a

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v8, v11, [Ljava/lang/CharSequence;

    iget-object v11, v5, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v11, v8, v18

    iget-object v11, v5, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    aput-object v11, v8, v3

    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const-wide/16 v19, 0x0

    cmp-long v6, v12, v19

    const v8, 0x7f141787

    if-nez v6, :cond_7

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    const-wide/16 v19, 0x400

    cmp-long v6, v12, v19

    if-gez v6, :cond_8

    const v6, 0x7f140887

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    const-wide/32 v19, 0xf4240

    cmp-long v6, v12, v19

    if-gez v6, :cond_9

    const v6, 0x7f141449

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    const-wide/32 v19, 0x3b9aca00

    cmp-long v6, v12, v19

    if-gez v6, :cond_a

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    const v6, 0x7f1410b1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v5, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    iget-object v6, v5, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v6, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f142d8a

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    iget-object v8, v5, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v6, v11

    iget-object v8, v5, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    aput-object v8, v6, v3

    invoke-static {v1, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    add-double v14, v14, v16

    div-double v5, v16, v14

    double-to-float v1, v5

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    iput v1, v3, Lcom/android/settings/SummaryPreference;->mLeftRatio:F

    const/4 v1, 0x0

    iput v1, v3, Lcom/android/settings/SummaryPreference;->mMiddleRatio:F

    invoke-virtual {v3}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroidx/preference/Preference;

    invoke-virtual {v1, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroidx/preference/Preference;

    double-to-long v2, v9

    long-to-double v5, v12

    long-to-double v2, v2

    div-double/2addr v5, v2

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    iget v2, v0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Landroid/icu/text/MessageFormat;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f141796

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "count"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
