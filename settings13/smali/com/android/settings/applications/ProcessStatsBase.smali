.class public abstract Lcom/android/settings/applications/ProcessStatsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProcessStatsBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DURATION_QUANTUM:J

.field protected static sDurationLabels:[I

.field public static sDurations:[J


# instance fields
.field protected mDurationIndex:I

.field private mFilterAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mSpinnerHeader:Landroid/view/ViewGroup;

.field protected mStatsManager:Lcom/android/settings/applications/ProcStatsData;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 53
    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    const/4 v2, 0x4

    new-array v3, v2, [J

    const-wide/16 v4, 0x2

    .line 54
    div-long v6, v0, v4

    const-wide/32 v8, 0xa4cb80

    sub-long/2addr v8, v6

    const/4 v6, 0x0

    aput-wide v8, v3, v6

    div-long v7, v0, v4

    const-wide/32 v9, 0x1499700

    sub-long/2addr v9, v7

    const/4 v7, 0x1

    aput-wide v9, v3, v7

    div-long v8, v0, v4

    const-wide/32 v10, 0x2932e00

    sub-long/2addr v10, v8

    const/4 v8, 0x2

    aput-wide v10, v3, v8

    div-long/2addr v0, v4

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v4, v0

    const/4 v0, 0x3

    aput-wide v4, v3, v0

    sput-object v3, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    new-array v1, v2, [I

    .line 58
    sget v2, Lcom/android/settings/R$string;->menu_duration_3h:I

    aput v2, v1, v6

    sget v2, Lcom/android/settings/R$string;->menu_duration_6h:I

    aput v2, v1, v7

    sget v2, Lcom/android/settings/R$string;->menu_duration_12h:I

    aput v2, v1, v8

    sget v2, Lcom/android/settings/R$string;->menu_duration_1d:I

    aput v2, v1, v0

    sput-object v1, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;Z)V
    .locals 4

    .line 150
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "package_entry"

    .line 151
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    const-string/jumbo p2, "weight_to_ram"

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 153
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    const-string/jumbo p2, "total_time"

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v0, v2

    const-string p2, "max_memory_usage"

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 156
    iget-wide p1, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    const-string/jumbo v0, "total_scale"

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 157
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/applications/ProcessStatsDetail;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->memory_usage:I

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 160
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v4, "transfer_stats"

    .line 76
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-direct {v1, v2, v4}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    const-string v1, "duration_index"

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    .line 81
    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    if-eqz p1, :cond_4

    .line 82
    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v0, v0, v3

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v0, p1, v3

    .line 81
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcStatsData;->xferStats()V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 135
    iput p3, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    .line 136
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    sget-object p2, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide p2, p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->refreshUi()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->refreshUi()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->getDuration()J

    move-result-wide v0

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    iget p0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    const-string v0, "duration_index"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    sget p1, Lcom/android/settings/R$layout;->sec_apps_filter_spinner:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    const/16 p2, 0xf

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    sget p2, Lcom/android/settings/R$id;->filter_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    .line 116
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_filter_spinner_custom_item:I

    invoke-direct {p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    .line 118
    sget p2, Lcom/android/settings/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-ge p1, p2, :cond_0

    .line 126
    iget-object p2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget p2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public abstract refreshUi()V
.end method
