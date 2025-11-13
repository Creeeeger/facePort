.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "GalaxySystemAppsInfoDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private isSingular:Z

.field private listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;


# direct methods
.method public static synthetic $r8$lambda$AFsgEhQ04-d7qgY6o7w9j9DLNQM(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->lambda$onCreateDialog$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPByf0GDRaOBZ9mTZEBzR4pNxS0(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vtGezqwPbTrcaZjr97uygZTT9Y0(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->lambda$onCreateDialog$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->isSingular:Z

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;

    if-le p2, v0, :cond_0

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->isSingular:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x1

    int-to-long v0, p1

    const v2, 0xeb14

    const v3, 0xeb16

    .line 52
    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;->onClickResult(Z)V

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->showProgress()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/view/View;)V
    .locals 3

    const/4 p1, -0x1

    int-to-long v0, p1

    const p1, 0xeb14

    const v2, 0xeb16

    .line 59
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;->onClickResult(Z)V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 50
    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showProgress()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 34
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->isSingular:Z

    if-eqz v0, :cond_1

    .line 36
    sget v0, Lcom/android/settings/R$string;->galaxy_system_app_uninstall_update:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget v1, Lcom/android/settings/R$string;->galaxy_system_app_tablet_this_update_will_be_uninstalled_and_the_app_will_go_back:I

    goto :goto_0

    .line 39
    :cond_0
    sget v1, Lcom/android/settings/R$string;->galaxy_system_app_phone_this_update_will_be_uninstalled_and_the_app_will_go_back:I

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    .line 41
    :cond_1
    sget v0, Lcom/android/settings/R$string;->galaxy_system_app_uninstall_updates:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    sget v1, Lcom/android/settings/R$string;->galaxy_system_app_tablet_these_updates_will_be_uninstalled_and_the_apps_will_go_back:I

    goto :goto_1

    .line 44
    :cond_2
    sget v1, Lcom/android/settings/R$string;->galaxy_system_app_phone_these_updates_will_be_uninstalled_and_the_apps_will_go_back:I

    .line 42
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 46
    :goto_2
    sget v0, Lcom/android/settings/R$string;->galaxy_system_app_uninstall_restart:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 47
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 48
    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method
