.class public abstract Lcom/android/settings/applications/ProcessStatsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static final sDurationLabels:[I

.field public static final sDurations:[J


# instance fields
.field public mDurationIndex:I

.field public mFilterAdapter:Landroid/widget/ArrayAdapter;

.field public mFilterSpinner:Landroid/widget/Spinner;

.field public mSpinnerHeader:Landroid/view/ViewGroup;

.field public mStatsManager:Lcom/android/settings/applications/ProcStatsData;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x1499700

    sub-long/2addr v4, v0

    const-wide/32 v6, 0x2932e00

    sub-long/2addr v6, v0

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v8, v0

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    const/4 v1, 0x2

    aput-wide v6, v0, v1

    const/4 v1, 0x3

    aput-wide v8, v0, v1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    const v0, 0x7f1417ad

    const v1, 0x7f1417ae

    const v2, 0x7f1417ab

    const v3, 0x7f1417ac

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package_entry"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-wide v1, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    const-string p2, "weight_to_ram"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p2, "total_time"

    iget-wide v1, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v3, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v1, v3

    const-string p2, "max_memory_usage"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p2, "total_scale"

    iget-wide v1, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v1, 0x7f141794

    invoke-virtual {p1, v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object v0, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 p0, 0x0

    iput p0, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    const-string v4, "transfer_stats"

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

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v0, v0, v3

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v0, p1, v3

    :goto_3
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sput-object p0, Lcom/android/settings/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    :cond_0
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iput p3, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    sget-object p2, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide p2, p2, p3

    iput-wide p2, p1, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->refreshUi()V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->refreshUi()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "duration_index"

    iget p0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0d0801

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    const p2, 0x7f0a063f

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0d08ad

    invoke-direct {p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    const p2, 0x7f0d0bd5

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget p2, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public abstract refreshUi()V
.end method
