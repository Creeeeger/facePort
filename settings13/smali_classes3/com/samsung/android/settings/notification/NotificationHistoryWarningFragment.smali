.class public Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "NotificationHistoryWarningFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment$DialogFragmentListener;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$RjKRe_FLGydr1zrSJho8fZMIf6s(Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment$DialogFragmentListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment$DialogFragmentListener;->onPositiveClick()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;
    .locals 1

    .line 38
    new-instance v0, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 43
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->notification_history_warning_dialog_title:I

    .line 44
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->notification_history_warning_dialog_message:I

    .line 45
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->notification_history_warning_dialog_save:I

    new-instance v1, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;)V

    .line 46
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->notification_history_warning_dialog_cancel:I

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
