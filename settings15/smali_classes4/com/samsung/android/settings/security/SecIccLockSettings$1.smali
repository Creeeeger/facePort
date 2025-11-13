.class public final Lcom/samsung/android/settings/security/SecIccLockSettings$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/security/SecIccLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/security/SecIccLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    new-instance p1, Lcom/android/settings/security/SimLockPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "sim_lock_settings"

    invoke-direct {p1, v0, v1}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/security/SimLockPreferenceController;->isSimReady()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
