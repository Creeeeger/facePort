.class public final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mPrintJobStateChangeListener:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

.field public final mPrintJobs:Ljava/util/List;

.field public final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    return-void
.end method


# virtual methods
.method public final deliverResult(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {p0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJob;

    invoke-virtual {v3}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/print/PrintSettingPreferenceController;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final onReset()V
    .locals 2

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v1, v0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

    :cond_0
    return-void
.end method

.method public final onStartLoading()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v1, :cond_0

    invoke-super {p0, v0}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v1, v0}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onForceLoad()V

    :cond_2
    return-void
.end method

.method public final onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    return-void
.end method
