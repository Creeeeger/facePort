.class public final Lcom/android/settings/vpn2/AppDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mLabel:Ljava/lang/String;

.field public final mListener:Lcom/android/settings/vpn2/AppDialogFragment;

.field public final mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/vpn2/AppDialogFragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/vpn2/AppDialog;->mListener:Lcom/android/settings/vpn2/AppDialogFragment;

    iput-object p3, p0, Lcom/android/settings/vpn2/AppDialog;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/android/settings/vpn2/AppDialog;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/vpn2/AppDialog;->mListener:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted$1()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object v0, p1, Lcom/android/settings/vpn2/AppDialogFragment;->mVpnManager:Landroid/net/VpnManager;

    iget-object v1, p1, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/net/VpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppDialogFragment;->onDisconnect()V

    iget-object p1, p1, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppManagementFragment$1;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settings/vpn2/AppManagementFragment$1;->this$0:Lcom/android/settings/vpn2/AppManagementFragment;

    iget-object p2, p1, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnManager:Landroid/net/VpnManager;

    iget v1, p1, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/net/VpnManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnManager:Landroid/net/VpnManager;

    iget v0, p1, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, v1}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialog;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialog;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f14323b

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f143200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f1431fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
