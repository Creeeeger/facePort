.class public Lcom/android/settings/vpn2/ConfigDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsUserAddProfilesAllowed:I

.field public mIsUserChangeProfilesAllowed:I

.field public mService:Landroid/net/VpnManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "editing"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "exists"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "user_cert"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "ca_cert"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "vpnconfigdialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final connect(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V

    iget-object p2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, v1}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-virtual {p2, p1}, Landroid/net/VpnManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ConfigDialogFragment"

    const-string p2, "Attempted to start an unsupported VPN type."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f143236

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const p0, 0x104000a

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f143213

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final disconnect(Lcom/android/internal/net/VpnProfile;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :goto_0
    const-string p1, "ConfigDialogFragment"

    const-string v0, "Failed to disconnect"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x221

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Lcom/android/settings/vpn2/ConfigDialog;

    const-string v0, "ConfigDialogFragment"

    if-nez p1, :cond_0

    const-string p0, "ConfigDialog object is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "editing"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "exists"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-ne v6, v4, :cond_1

    iget v6, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget-boolean v6, p1, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserChangeProfilesAllowed:I

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5, v5}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :cond_3
    :goto_0
    if-ne p2, v3, :cond_c

    iget-object p2, p1, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-nez v10, :cond_5

    iget-boolean p1, p1, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v5

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v4

    :goto_2
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v9

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->getVpnManager(Landroid/content/Context;)Landroid/net/VpnManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    iget p2, p2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v2, 0x2

    if-eq p2, v2, :cond_6

    const/4 v2, 0x3

    if-ne p2, v2, :cond_7

    :cond_6
    move v7, v4

    goto :goto_3

    :cond_7
    move v7, v5

    :goto_3
    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    if-nez v7, :cond_9

    if-eqz v10, :cond_a

    if-nez v9, :cond_a

    :cond_9
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string p1, "profile"

    invoke-virtual {v11, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v6, p0

    move v8, v10

    invoke-static/range {v6 .. v11}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroidx/fragment/app/Fragment;ZZZZLandroid/os/Bundle;)V

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_a
    :goto_4
    if-eqz p1, :cond_b

    invoke-virtual {p0, v1, v10}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    const-string p2, "Failed to check active VPN state. Skipping."

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_c
    const/4 p1, -0x3

    if-ne p2, p1, :cond_e

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p0, "Failed to disconnect VPN. Leaving profile in keystore."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "VPN_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(Lcom/android/internal/net/VpnProfile;Z)V

    :cond_e
    :goto_6
    invoke-virtual {p0, v5, v5}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public final onConfirmLockdown(Landroid/os/Bundle;ZZ)V
    .locals 0

    const-string p3, "profile"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    const-string v0, "editing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v0, "exists"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v0, "user_cert"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v0, "ca_cert"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance p1, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/vpn2/ConfigDialog;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v3, "isUserAddProfilesAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "isUserChangeProfilesAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserChangeProfilesAllowed:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v2, "isVpnAllowed"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ConfigDialogFragment"

    const-string v1, "Restriction Policy applied"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1431ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    :cond_0
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final save(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VPN_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/net/VpnProfile;->encode(Z)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(Lcom/android/internal/net/VpnProfile;Z)V

    return-void
.end method

.method public final updateLockdownVpn(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f14320a

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const-string p2, "LOCKDOWN_VPN"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p2, p1}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getVpnManager(Landroid/content/Context;)Landroid/net/VpnManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/VpnManager;->updateLockdownVpn()Z

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
