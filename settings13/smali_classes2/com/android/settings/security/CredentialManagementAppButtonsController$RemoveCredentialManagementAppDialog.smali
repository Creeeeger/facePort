.class public Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "CredentialManagementAppButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialManagementAppButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveCredentialManagementAppDialog"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$56W4mGBfr8qvGUNc0mkxHZprPH0(Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dvERlryqwkqTCKFOL_Sye1dyGD0(Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m3P8drkdAsOY-RsIAObTF7opS9s(Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;->lambda$removeCredentialManagementApp$2()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;->removeCredentialManagementApp()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$removeCredentialManagementApp$2()V
    .locals 2

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Landroid/security/IKeyChainService;->removeCredentialManagementApp()V

    const/16 v1, 0xbb

    .line 158
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 154
    :try_start_3
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, "CredentialManagementApp"

    const-string v0, "Unable to remove the credential management app"

    .line 162
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static newInstance()Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;
    .locals 1

    .line 136
    new-instance v0, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;

    invoke-direct {v0}, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;-><init>()V

    return-object v0
.end method

.method private removeCredentialManagementApp()V
    .locals 2

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x767

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 141
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->Theme_AlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->remove_credential_management_app_dialog_title:I

    .line 142
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->remove_credential_management_app_dialog_message:I

    .line 143
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->remove_credential_management_app:I

    new-instance v1, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;)V

    .line 144
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/security/CredentialManagementAppButtonsController$RemoveCredentialManagementAppDialog;)V

    .line 146
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
