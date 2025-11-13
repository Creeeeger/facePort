.class public Lcom/android/settings/applications/ProcessStatsSummary;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAppListPreference:Landroidx/preference/Preference;

.field private mAverageUsed:Landroidx/preference/Preference;

.field private mFree:Landroidx/preference/Preference;

.field private mPerformance:Landroidx/preference/Preference;

.field private mReservedMemory:Landroidx/preference/Preference;

.field private mSummaryPref:Lcom/android/settings/SummaryPreference;

.field private mTotalMemory:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 136
    sget p0, Lcom/android/settings/R$string;->help_uri_process_stats_summary:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xca

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget p1, Lcom/android/settings/R$xml;->process_stats_summary:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "status_header"

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SummaryPreference;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const-string p1, "performance"

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroidx/preference/Preference;

    const-string/jumbo p1, "total_memory"

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroidx/preference/Preference;

    const-string p1, "reserved_memory"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mReservedMemory:Landroidx/preference/Preference;

    const-string p1, "average_used"

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroidx/preference/Preference;

    const-string p1, "free"

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroidx/preference/Preference;

    const-string p1, "apps_list"

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    .line 78
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 142
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "transfer_stats"

    const/4 v1, 0x1

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    iget v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    const-string v2, "duration_index"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->xferStats()V

    .line 146
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->memory_usage_apps:I

    .line 148
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public refreshUi()V
    .locals 16

    move-object/from16 v0, p0

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v2

    .line 87
    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    .line 89
    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->hwRam:J

    .line 91
    iget-wide v7, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 92
    iget-wide v9, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    double-to-long v12, v3

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    .line 96
    invoke-static {v1, v5, v6}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    double-to-long v14, v9

    .line 98
    invoke-static {v1, v14, v15}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 101
    iget-wide v14, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realReservedRam:J

    invoke-static {v1, v14, v15}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mReservedMemory:Landroidx/preference/Preference;

    invoke-virtual {v14, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v14, Lcom/android/settings/R$array;->ram_states:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 106
    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v14}, Lcom/android/settings/applications/ProcStatsData;->getMemState()I

    move-result v14

    if-ltz v14, :cond_0

    .line 107
    array-length v15, v2

    const/4 v6, 0x1

    sub-int/2addr v15, v6

    if-ge v14, v15, :cond_1

    .line 108
    aget-object v2, v2, v14

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    .line 110
    :cond_1
    array-length v14, v2

    sub-int/2addr v14, v6

    aget-object v2, v2, v14

    .line 112
    :goto_0
    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    .line 113
    invoke-static {v12, v13}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getNumFormattedSizeString(J)Ljava/lang/String;

    move-result-object v15

    .line 112
    invoke-virtual {v14, v15}, Lcom/android/settings/SummaryPreference;->setAmount(Ljava/lang/String;)V

    .line 114
    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    .line 115
    invoke-static {v1, v12, v13}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getUnitFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v14, v1}, Lcom/android/settings/SummaryPreference;->setUnits(Ljava/lang/String;)V

    add-double/2addr v9, v3

    div-double/2addr v3, v9

    double-to-float v1, v3

    .line 117
    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v1

    invoke-virtual {v3, v1, v4, v9}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    .line 119
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroidx/preference/Preference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroidx/preference/Preference;

    double-to-long v2, v7

    invoke-static {v12, v13, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroidx/preference/Preference;

    invoke-virtual {v1, v11}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    sget-object v1, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    iget v2, v0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 125
    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/settings/R$plurals;->memory_usage_apps_summary:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 125
    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
