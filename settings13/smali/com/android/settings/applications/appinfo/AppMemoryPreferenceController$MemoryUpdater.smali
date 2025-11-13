.class Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;
.super Landroid/os/AsyncTask;
.source "AppMemoryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;-><init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 5

    .line 60
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmParent(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmParent(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 65
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmStatsManager(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object v2

    if-nez v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    new-instance v3, Lcom/android/settings/applications/ProcStatsData;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    invoke-static {v2, v3}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fputmStatsManager(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsData;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmStatsManager(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    sget-object v2, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmStatsManager(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmStatsManager(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 74
    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    .line 75
    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsEntry;->getUid()I

    move-result v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_4

    .line 76
    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->updateMetrics()V

    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmParent(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v2, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fputmStats(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 92
    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getRunWeight()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getBgWeight()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmStatsManager(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->getWeightToRam()D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 94
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/SecPreference;

    move-result-object p1

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->memory_use_summary:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 96
    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object p0

    double-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 94
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/SecPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/SecPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$plurals;->no_memory_use_summary:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x3

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    return-void
.end method
