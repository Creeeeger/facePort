.class public final Lcom/android/settings/development/MemoryUsagePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public mProcStatsData:Lcom/android/settings/applications/ProcStatsData;


# direct methods
.method public static $r8$lambda$bttyscuSUXMpljDiTNR0ymFc0qI(Lcom/android/settings/development/MemoryUsagePreferenceController;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    iget-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->hwRam:J

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/settings/development/MemoryUsagePreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/settings/development/MemoryUsagePreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/development/MemoryUsagePreferenceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDt6TqPxb_ywtxqDPUnGUORxZME(Lcom/android/settings/development/MemoryUsagePreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f141793

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;->getProcStatsData()Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    new-instance p1, Lcom/android/settings/development/MemoryUsagePreferenceController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/development/MemoryUsagePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/MemoryUsagePreferenceController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "memory"

    return-object p0
.end method

.method public getProcStatsData()Lcom/android/settings/applications/ProcStatsData;
    .locals 2

    new-instance v0, Lcom/android/settings/applications/ProcStatsData;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public setDuration()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    new-instance p1, Lcom/android/settings/development/MemoryUsagePreferenceController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/development/MemoryUsagePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/MemoryUsagePreferenceController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
