.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectManageApplications;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectManageApplications.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string/jumbo v1, "profile"

    const/4 v2, 0x2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;-><init>()V

    .line 45
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    new-instance v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;-><init>()V

    .line 50
    invoke-virtual {v1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-array p0, v2, [Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    aput-object v3, p0, v0

    return-object p0
.end method

.method public getTitleResId()I
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getTitleResId(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableAutoFlowLogging(Z)V

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
