.class public Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "KnoxSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BiometricRemoveWarningDialog"
.end annotation


# static fields
.field private static mInstance:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;


# instance fields
.field private mCallback:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$jcuwj0KVd3aOnrT_dSGggeho2y4(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->lambda$deleteAllBiometricDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xXJN3Wy9CNhMPKl6_O0ucrq5hvM(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->lambda$deleteAllBiometricDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;)Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private deleteAllBiometricDialog()V
    .locals 4

    .line 409
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x10302e3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric_dialog_biometric:I

    .line 411
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_remove:I

    new-instance v2, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;)V

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;)V

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 429
    new-instance v1, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$2;-><init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 p0, 0x0

    .line 441
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 442
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;
    .locals 1

    .line 346
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mInstance:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    invoke-direct {v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mInstance:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    .line 349
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mInstance:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    return-object v0
.end method

.method private synthetic lambda$deleteAllBiometricDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "KKG::BiometricRemoveWarningDialog"

    const-string p2, "Unify"

    .line 414
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 416
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;

    if-eqz p0, :cond_0

    .line 417
    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;->unify()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteAllBiometricDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 423
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;

    if-eqz p0, :cond_0

    .line 424
    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;->finishActivity()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->deleteAllBiometricDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 402
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;

    if-eqz p0, :cond_1

    .line 403
    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;->finishActivity()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 369
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 370
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

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x10302e3

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_title_workspace:I

    .line 373
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_unlock_disable_frp_warning_ok_biometric:I

    .line 375
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 377
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 380
    new-instance v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$1;-><init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 392
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public setDialogButtonClickListener(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mCallback:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 353
    iput p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->mUserId:I

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 361
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
