.class public final Lcom/android/settings/print/SettingsPrintServicesLoader;
.super Landroidx/loader/content/Loader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLoader:Lcom/android/settings/print/SettingsPrintServicesLoader$1;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager;Landroid/content/Context;)V
    .locals 1

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/print/SettingsPrintServicesLoader$1;-><init>(Lcom/android/settings/print/SettingsPrintServicesLoader;Landroid/print/PrintManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->mLoader:Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    return-void
.end method


# virtual methods
.method public final onAbandon()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->mLoader:Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->abandon()V

    return-void
.end method

.method public final onCancelLoad()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->mLoader:Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->cancelLoad()Z

    move-result p0

    return p0
.end method

.method public final onForceLoad()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->mLoader:Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->forceLoad()V

    return-void
.end method

.method public final onReset()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->mLoader:Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->reset()V

    return-void
.end method

.method public final onStartLoading()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->mLoader:Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->startLoading()V

    return-void
.end method

.method public final onStopLoading()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->mLoader:Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->stopLoading()V

    return-void
.end method
