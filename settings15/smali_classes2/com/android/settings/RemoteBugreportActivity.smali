.class public Lcom/android/settings/RemoteBugreportActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.bugreport_notification_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/RemoteBugreportActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/RemoteBugreportActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/RemoteBugreportActivity;I)V

    const-string v2, "Settings.SHARING_REMOTE_BUGREPORT_MESSAGE"

    invoke-virtual {p1, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance p1, Lcom/android/settings/RemoteBugreportActivity$2;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/android/settings/RemoteBugreportActivity$2;-><init>(Lcom/android/settings/RemoteBugreportActivity;I)V

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance p1, Lcom/android/settings/RemoteBugreportActivity$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/settings/RemoteBugreportActivity$1;-><init>(Lcom/android/settings/RemoteBugreportActivity;I)V

    const p0, 0x104000a

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Incorrect dialog type, no dialog shown. Received: "

    const-string p1, "RemoteBugreportActivity"

    invoke-static {v0, p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_0
    if-ne v0, v1, :cond_3

    const v2, 0x7f142b8e

    goto :goto_1

    :cond_3
    const v2, 0x7f142b8f

    :goto_1
    if-ne v0, v1, :cond_4

    const-string v0, "Settings.SHARE_REMOTE_BUGREPORT_NOT_FINISHED_REQUEST_CONSENT"

    goto :goto_2

    :cond_4
    const-string v0, "Settings.SHARE_REMOTE_BUGREPORT_FINISHED_REQUEST_CONSENT"

    :goto_2
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/settings/RemoteBugreportActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/settings/RemoteBugreportActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/RemoteBugreportActivity;I)V

    const-string v5, "Settings.SHARE_REMOTE_BUGREPORT_DIALOG_TITLE"

    invoke-virtual {v3, v5, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v3, Lcom/android/settings/RemoteBugreportActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/RemoteBugreportActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/RemoteBugreportActivity;I)V

    invoke-virtual {p1, v0, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance p1, Lcom/android/settings/RemoteBugreportActivity$2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/RemoteBugreportActivity$2;-><init>(Lcom/android/settings/RemoteBugreportActivity;I)V

    iput-object p1, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance p1, Lcom/android/settings/RemoteBugreportActivity$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/settings/RemoteBugreportActivity$1;-><init>(Lcom/android/settings/RemoteBugreportActivity;I)V

    const v0, 0x7f140bf8

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/settings/RemoteBugreportActivity$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/RemoteBugreportActivity$1;-><init>(Lcom/android/settings/RemoteBugreportActivity;I)V

    const p0, 0x7f142b8d

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_3
    return-void
.end method
