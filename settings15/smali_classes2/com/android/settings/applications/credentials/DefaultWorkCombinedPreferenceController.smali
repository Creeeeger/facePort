.class public final Lcom/android/settings/applications/credentials/DefaultWorkCombinedPreferenceController;
.super Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/credentials/DefaultWorkCombinedPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "default_credman_autofill_main_work"

    return-object p0
.end method

.method public final getUser()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultWorkCombinedPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/credentials/DefaultWorkCombinedPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultWorkCombinedPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
