.class public Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "BiometricRemoveWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;


# instance fields
.field private mCallback:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$13W4wqp0le9OtR6RZRFp96Oe-pU(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DYbUH0HjyT4R9oM1hnhj1g0Wsog(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->lambda$deleteAllBiometricDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$H0zaMW6mfX5OMXC5UXF5uDaymYg(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$J1nEe6XVhmXTE_3ueNo0FhEMl8k(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LFaqGt-Kdc3Ivcfpxu0SHLBFA7Q(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->lambda$deleteAllBiometricDialog$5(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pPcWTsgNAwOqbnL_EzifKDd6wKE(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->lambda$deleteAllBiometricDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private deleteAllBiometricDialog()V
    .locals 4

    .line 75
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x10302e3

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric_dialog_biometric:I

    .line 77
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_remove:I

    new-instance v2, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;)V

    .line 85
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 p0, 0x0

    .line 101
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mInstance:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;

    invoke-direct {v0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mInstance:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;

    .line 25
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mInstance:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;

    return-object v0
.end method

.method private synthetic lambda$deleteAllBiometricDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;

    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;->unify()V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;

    invoke-interface {p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;->updatePreference()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteAllBiometricDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;->updatePreference()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteAllBiometricDialog$5(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 94
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;->updatePreference()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->deleteAllBiometricDialog()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;

    if-eqz p0, :cond_0

    .line 57
    invoke-interface {p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;->updatePreference()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 63
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;->updatePreference()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_workspace_locktype_change_nonsecure_biometric_remove_workspace_bio:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x10302e3

    invoke-direct {v1, v3, v4}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_title_workspace:I

    .line 49
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_unlock_disable_frp_warning_ok_biometric:I

    new-instance v1, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;)V

    .line 51
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;)V

    .line 55
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 62
    new-instance v0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 70
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public setDialogButtonClickListener(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mUserId:I

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
